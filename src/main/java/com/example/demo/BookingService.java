package com.example.demo;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.json.JSONObject;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

@Service
public class BookingService {
    private static final String url = "jdbc:postgresql://localhost:5432/database_project";
    private static final String user = "postgres";
    private static final String password = "Danell2005";

    // Add a new booking and create a corresponding Books record
    public void addBooking(Booking booking, Books books) {
        String bookingQuery = "INSERT INTO booking (room_num, hotel_id, check_in_date, check_out_date) VALUES (?, ?, ?, ?)";
        String booksQuery = "INSERT INTO books (customer_id, id_type, booking_id, room_num, hotel_id) VALUES (?, ?, ?, ?, ?)";
        String checkBookingQuery = "SELECT COUNT(*) FROM booking WHERE room_num = ? AND hotel_id = ? AND " +
                "(check_in_date <= ? AND check_out_date >= ?)";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pstCheckBooking = db.prepareStatement(checkBookingQuery);
             PreparedStatement pstBooking = db.prepareStatement(bookingQuery, Statement.RETURN_GENERATED_KEYS);
             PreparedStatement pstBooks = db.prepareStatement(booksQuery)) {

            // Check if the room is already booked
            pstCheckBooking.setInt(1, booking.getRoomNum());
            pstCheckBooking.setString(2, booking.getHotelId());
            pstCheckBooking.setDate(3, booking.getCheckOutDate());
            pstCheckBooking.setDate(4, booking.getCheckInDate());
            ResultSet rsCheck = pstCheckBooking.executeQuery();

            if (rsCheck.next() && rsCheck.getInt(1) > 0) {
                System.out.println("Error: Room is already booked for the selected dates.");
                return; // Exit the method if the room is already booked
            }

            // Insert into booking table
            pstBooking.setInt(1, booking.getRoomNum());
            pstBooking.setString(2, booking.getHotelId());
            pstBooking.setDate(3, booking.getCheckInDate());
            pstBooking.setDate(4, booking.getCheckOutDate());
            pstBooking.executeUpdate();

            ResultSet rs = pstBooking.getGeneratedKeys();
            String bookingId = null;
            if (rs.next()) {
                bookingId = rs.getString(1); // or getInt(1), depending on column type
            }

            if (bookingId != null) {
                // Insert into books table
                pstBooks.setString(1, books.getCustomer_id());
                pstBooks.setString(2, books.getId_type());
                pstBooks.setString(3, bookingId);
                pstBooks.setInt(4, booking.getRoomNum());
                pstBooks.setString(5, booking.getHotelId());
                pstBooks.executeUpdate();
                System.out.println("Booking and Books record added successfully.");
            }

        } catch (SQLException e) {
            System.out.println("Error adding booking and books: " + e.getMessage());
        }
    }

        // Get a booking by bookingId
        public Booking getBooking(String bookingId) {
            String query = "SELECT * FROM booking WHERE booking_id = ?";
            try (Connection db = DriverManager.getConnection(url, user, password);
                 PreparedStatement pst = db.prepareStatement(query)) {

                pst.setString(1, bookingId);
                ResultSet rs = pst.executeQuery();

                if (rs.next()) {
                    return new Booking(
                            bookingId,
                            rs.getInt("room_num"),
                            rs.getString("hotel_id"),
                            rs.getDate("check_in_date"),
                            rs.getDate("check_out_date")
                    );
                }
            } catch (SQLException e) {
                System.err.println("Error fetching booking: " + e.getMessage());
            }
            return null;
        }

    // Remove a booking by bookingId and corresponding books entry
    public void removeBooking(String bookingId) {
        String booksQuery = "DELETE FROM books WHERE booking_id = ?";
        String bookingQuery = "DELETE FROM booking WHERE booking_id = ?";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pstBooks = db.prepareStatement(booksQuery);
             PreparedStatement pstBooking = db.prepareStatement(bookingQuery)) {

            // Delete from books first to avoid foreign key constraint issues
            pstBooks.setString(1, bookingId);
            pstBooks.executeUpdate();

            // Delete from booking table
            pstBooking.setString(1, bookingId);
            pstBooking.executeUpdate();

        } catch (SQLException e) {
            System.out.println("Error removing booking and books: " + e.getMessage());
        }
    }

    public List<Room> getRoomsInHotel(String hotelId) {
        List<Room> rooms = new ArrayList<>();
        String query = "SELECT * FROM room WHERE hotel_id = ?";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, hotelId);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                short roomNum = rs.getShort("room_num");
                String hotelIdFromDb = rs.getString("hotel_id");
                double price = rs.getDouble("price");

                Array problemsArray = rs.getArray("problems");
                List<String> problems = problemsArray != null ? Arrays.asList((String[]) problemsArray.getArray()) : new ArrayList<>();

                boolean extendable = rs.getBoolean("extendable");

                Array amenitiesArray = rs.getArray("amenities");
                List<String> amenities = amenitiesArray != null ? Arrays.asList((String[]) amenitiesArray.getArray()) : new ArrayList<>();

                int capacity = rs.getInt("capacity");
                String view = rs.getString("view");

                Room room = new Room(roomNum, hotelIdFromDb, price, problems, extendable, amenities, capacity, view);
                rooms.add(room);
            }

        } catch (SQLException e) {
            System.out.println("Error fetching rooms: " + e.getMessage());
        }

        System.out.println("Rooms fetched: " + rooms.size());
        return rooms;
    }

    public ArrayList<Room> getAvailableRoomsByDates(String hotelId, Date checkInDate, Date checkOutDate) {
        String query = "SELECT r.room_num, r.hotel_id, r.price, r.problems, r.extendable, r.amenities, r.capacity, r.view " +
                "FROM room r " +
                "LEFT JOIN booking b ON r.room_num = b.room_num AND r.hotel_id = b.hotel_id " +
                "LEFT JOIN renting ra ON r.room_num = ra.room_num AND r.hotel_id = ra.hotel_id " +
                "WHERE r.hotel_id = ? " +
                "AND (b.booking_id IS NULL OR b.check_out_date <= ? OR b.check_in_date >= ?) " +
                "AND (ra.renting_id IS NULL OR ra.check_out_date <= ? OR ra.check_in_date >= ?)";

        ArrayList<Room> availableRooms = new ArrayList<>();

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, hotelId);
            pst.setDate(2, checkInDate);
            pst.setDate(3, checkOutDate);
            pst.setDate(4, checkInDate);
            pst.setDate(5, checkOutDate);

            try (ResultSet rs = pst.executeQuery()) {
                while (rs.next()) {
                    short roomNum = rs.getShort("room_num");
                    String hotelIdResult = rs.getString("hotel_id");
                    double price = rs.getDouble("price");

                    Array problemsArray = rs.getArray("problems");
                    List<String> problems = problemsArray != null ? Arrays.asList((String[]) problemsArray.getArray()) : new ArrayList<>();

                    boolean extendable = rs.getBoolean("extendable");

                    Array amenitiesArray = rs.getArray("amenities");
                    List<String> amenities = amenitiesArray != null ? Arrays.asList((String[]) amenitiesArray.getArray()) : new ArrayList<>();

                    int capacity = rs.getInt("capacity");
                    String view = rs.getString("view");

                    Room room = new Room(roomNum, hotelIdResult, price, problems, extendable, amenities, capacity, view);
                    availableRooms.add(room);
                }
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving available rooms: " + e.getMessage());
        }
        return availableRooms;
    }

    public List<Hotel> getAvailableHotels() {
        String query = "SELECT * FROM hotel";

        ArrayList<Hotel> availableHotels = new ArrayList<>();

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            try (ResultSet rs = pst.executeQuery()) {
                while (rs.next()) {
                    String hotelId = rs.getString("hotel_id");
                     int numRooms = rs.getInt("num_rooms");
                    double starRating = rs.getDouble("star_rating");
                    String phoneNum = rs.getString("phone_num");
                    String email = rs.getString("email");

                    String addressJson = rs.getString("address"); // Get address as JSON string
                    JSONObject jsonObj = new JSONObject(addressJson); // Parse JSON

                    // Now create an Address object from the JSON
                    Address address = new Address(
                            jsonObj.getString("street"),
                            jsonObj.getString("city"),
                            jsonObj.getString("province"),
                            jsonObj.getString("postal"),
                            jsonObj.getString("country")
                    );

                    Hotel hotel = new Hotel(hotelId, numRooms, starRating, phoneNum, address, email);
                    availableHotels.add(hotel);
                }
            }
        } catch (SQLException e) {
            System.out.println("Error retrieving available hotels: " + e.getMessage());
        }

        return availableHotels;
    }
}

