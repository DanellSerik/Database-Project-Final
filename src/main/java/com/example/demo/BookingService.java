package com.example.demo;

import java.sql.*;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class BookingService {
    private static final String url = "jdbc:postgresql://localhost:5432/your_database";
    private static final String user = "postgres";
    private static final String password = "Danell2005";

    // Add a new booking and create a corresponding Books record
    public void addBooking(Booking booking, Books books) {
        String bookingQuery = "INSERT INTO booking (booking_id, room_num, hotel_id, check_in_date, check_out_date) VALUES (?, ?, ?, ?, ?)";
        String booksQuery = "INSERT INTO books (customer_id, id_type, booking_id, room_num, hotel_id) VALUES (?, ?, ?, ?, ?)";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pstBooking = db.prepareStatement(bookingQuery);
             PreparedStatement pstBooks = db.prepareStatement(booksQuery)) {

            // Insert into booking table
            pstBooking.setString(1, booking.getBookingId());
            pstBooking.setInt(2, booking.getRoomNum());
            pstBooking.setString(3, booking.getHotelId());
            pstBooking.setDate(4, booking.getCheckInDate());
            pstBooking.setDate(5, booking.getCheckOutDate());
            pstBooking.executeUpdate();
            System.out.println("Booking added successfully.");

            // Insert into books table
            pstBooks.setString(1, books.getCustomer_id());
            pstBooks.setString(2, books.getId_type());
            pstBooks.setString(3, books.getBooking_id());
            pstBooks.setInt(4, books.getRoom_num());
            pstBooks.setString(5, books.getHotel_id());
            pstBooks.executeUpdate();
            System.out.println("Booking details added to Books table successfully.");

        } catch (SQLException e) {
            System.out.println("Error adding booking and books: " + e.getMessage());
        }
    }

    // Get a booking by bookingId
    public Booking getBooking(String bookingId) {
        String query = "SELECT * FROM booking WHERE booking_id = ?";
        Booking booking = null;

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, bookingId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                booking = new Booking(
                        rs.getString("booking_id"),
                        rs.getInt("room_num"),
                        rs.getString("hotel_id"),
                        rs.getDate("check_in_date"),
                        rs.getDate("check_out_date")
                );
            } else {
                System.out.println("Booking not found.");
            }
        } catch (SQLException e) {
            System.out.println("Error fetching booking: " + e.getMessage());
        }

        return booking;
    }

    // Remove a booking by bookingId and corresponding books entry
    public void removeBooking(String bookingId) {
        String bookingQuery = "DELETE FROM booking WHERE booking_id = ?";
        String booksQuery = "DELETE FROM books WHERE booking_id = ?";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pstBooking = db.prepareStatement(bookingQuery);
             PreparedStatement pstBooks = db.prepareStatement(booksQuery)) {

            // Delete from booking table
            pstBooking.setString(1, bookingId);
            pstBooking.executeUpdate();
            System.out.println("Booking removed successfully.");

            // Delete from books table
            pstBooks.setString(1, bookingId);
            pstBooks.executeUpdate();
            System.out.println("Booking removed from Books table successfully.");

        } catch (SQLException e) {
            System.out.println("Error removing booking and books: " + e.getMessage());
        }
    }

    public List<Room> getRoomsInHotel(String hotelId) {
        List<Room> rooms = new ArrayList<>();
        String query = "SELECT * FROM room WHERE hotel_id = ?"; // Assuming the room table structure

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, hotelId);
            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                // Extract each field from the ResultSet
                short roomNum = rs.getShort("room_num");
                String hotelIdFromDb = rs.getString("hotel_id");
                double price = rs.getDouble("price");
                Array problemsArray = rs.getArray("problems"); // Assuming 'problems' is a SQL array
                List<String> problems = problemsArray != null ? (List<String>) problemsArray.getArray() : new ArrayList<>();
                boolean extendable = rs.getBoolean("extendable");
                Array amenitiesArray = rs.getArray("amenities"); // Assuming 'amenities' is a SQL array
                List<String> amenities = amenitiesArray != null ? (List<String>) amenitiesArray.getArray() : new ArrayList<>();
                int capacity = rs.getInt("capacity");
                String view = rs.getString("view");

                // Create a new Room object
                Room room = new Room(roomNum, hotelIdFromDb, price, problems, extendable, amenities, capacity, view);
                rooms.add(room);
            }

        } catch (SQLException e) {
            System.out.println("Error fetching rooms: " + e.getMessage());
        }

        return rooms;
    }

    public ArrayList<Room> getAvailableRooms(String hotelId) {
        // Query the view to get the number of available rooms for the specific hotel
        String query = "SELECT * FROM area_avail WHERE hotel_id = ?"; // Filter by hotel_id

        ArrayList<Room> availableRooms = new ArrayList<>();

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement stmt = db.prepareStatement(query)) {

            // Set the hotelId parameter in the query
            stmt.setString(1, hotelId);

            try (ResultSet rs = stmt.executeQuery()) {
                while (rs.next()) {
                    // Extract data from the result set
                    String city = rs.getString("city");
                    int availRooms = rs.getInt("avail_rooms");

                    // Query the room table for each roomNum and its detailed info
                    for (int i = 0; i < availRooms; i++) {
                        short roomNum = (short) (i + 1); // Generate room numbers dynamically

                        // Query the room details for this roomNum and hotelId
                        String roomDetailsQuery = "SELECT * FROM room WHERE hotel_id = ? AND room_num = ?";
                        try (PreparedStatement pst = db.prepareStatement(roomDetailsQuery)) {
                            pst.setString(1, hotelId);
                            pst.setShort(2, roomNum);

                            try (ResultSet roomRs = pst.executeQuery()) {
                                if (roomRs.next()) {
                                    // Extract room details from the result set
                                    double price = roomRs.getDouble("price");
                                    ArrayList<String> problems = (ArrayList<String>) roomRs.getArray("problems").getArray(); // Assuming problems are stored as an array
                                    boolean extendable = roomRs.getBoolean("extendable");
                                    ArrayList<String> amenities = (ArrayList<String>) roomRs.getArray("amenities").getArray(); // Assuming amenities are stored as an array
                                    int capacity = roomRs.getInt("capacity");
                                    String view = roomRs.getString("view");

                                    // Create a Room object with the detailed info
                                    Room room = new Room(roomNum, hotelId, price, problems, extendable, amenities, capacity, view);
                                    availableRooms.add(room);
                                }
                            }
                        }
                    }
                }
            }

        } catch (SQLException e) {
            System.out.println("Error retrieving available rooms: " + e.getMessage());
        }

        return availableRooms;
    }
}

