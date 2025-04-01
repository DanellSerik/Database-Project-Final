package com.example.demo;

import java.sql.Date;

public class Booking {
    private String bookingId;
    private int roomNum;
    private String hotelId;
    private Date checkInDate;
    private Date checkOutDate;

    // Constructor
    public Booking(String bookingId, int roomNum, String hotelId, Date checkInDate, Date checkOutDate) {
        this.roomNum = roomNum;
        this.hotelId = hotelId;
        this.bookingId = bookingId;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
    }

    // Getters and Setters
    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public Date getCheckInDate() {
        return checkInDate;
    }

    public void setCheckInDate(Date checkInDate) {
        this.checkInDate = checkInDate;
    }

    public Date getCheckOutDate() {
        return checkOutDate;
    }

    public void setCheckOutDate(Date checkOutDate) {
        this.checkOutDate = checkOutDate;
    }

    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {this.roomNum = roomNum;}

    public String getHotelId() {return hotelId;}

    public void setHotelId(String hotelId) {this.hotelId = hotelId;}
}
