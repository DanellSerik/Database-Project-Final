package com.example.demo.controller;

import com.example.demo.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/bookings")
public class BookingController {

    private final BookingService bookingService;

    @Autowired
    public BookingController(BookingService bookingService) {
        this.bookingService = bookingService;
    }

    @PostMapping("/bookRoom")
    public ResponseEntity<String> addBooking(@RequestBody BookingRequest bookingRequest) {
        try {
            Booking booking = bookingRequest.getBooking();
            Books books = bookingRequest.getBooks();

            System.out.println("Booking: " + booking);
            System.out.println("Books: " + books);

            bookingService.addBooking(booking, books);
            return ResponseEntity.ok("Room booked successfully");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body("Invalid request: " + e.getMessage());
        }
    }

    // Get booking by bookingId
    @GetMapping("/getRooms")
    public List<Room> getAvailableRooms(@RequestParam String hotelId) {
        System.out.println(hotelId);
        List<Room> rooms = bookingService.getRoomsInHotel(hotelId);
        if (rooms == null) {
            throw new RuntimeException("Booking not found!");
        }
        return rooms;
    }

    // Remove booking by bookingId
    @DeleteMapping("/{bookingId}")
    public String removeBooking(@PathVariable String bookingId) {
        try {
            bookingService.removeBooking(bookingId);
            return "Booking removed successfully!";
        } catch (Exception e) {
            return "Error removing booking: " + e.getMessage();
        }
    }

    @GetMapping("/getRoomsByDates")
    public List<Room> getAvailableRoomsByDates(
            @RequestParam String hotelId,
            @RequestParam Date checkInDate,
            @RequestParam Date checkOutDate
    ) {
        return bookingService.getAvailableRoomsByDates(hotelId, checkInDate, checkOutDate);
    }

    @GetMapping("/getHotels")
    public List<Hotel> getAvailableHotels() {
        bookingService.getAvailableHotels();
        return bookingService.getAvailableHotels();
    }
}
