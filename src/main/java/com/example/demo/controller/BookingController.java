package com.example.demo.controller;

import com.example.demo.*;
import org.springframework.beans.factory.annotation.Autowired;
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

    // Add new booking
    @PostMapping("/add")
    public String addBooking(@RequestParam Booking booking,@RequestParam Books books) {
        try {
            bookingService.addBooking(booking, books);
            return "Booking added successfully!";
        } catch (Exception e) {
            return "Error adding booking: " + e.getMessage();
        }
    }

    // Get booking by bookingId
    @GetMapping("/getRooms")
    public ArrayList<Room> getAvailableRooms(@RequestParam String hotelId) {
        ArrayList<Room> rooms = bookingService.getAvailableRooms(hotelId);
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
