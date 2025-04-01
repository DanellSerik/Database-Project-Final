package com.example.demo;

import netscape.javascript.JSObject;
import org.springframework.boot.autoconfigure.amqp.RabbitConnectionDetails;

public class Hotel {
    private String hotelId;
    private int numRooms;
    private double starRating;
    private String phoneNum;
    private Address address;
    private String email;

    // Constructor
    public Hotel(String hotelId, int numRooms, double starRating, String phoneNum, Address address, String email) {
        this.hotelId = hotelId;
        this.numRooms = numRooms;
        this.starRating = starRating;
        this.phoneNum = phoneNum;
        this.address = address;
        this.email = email;
    }

    // Getters and Setters
    public String getHotelId() {
        return hotelId;
    }

    public void setHotelId(String hotelId) {
        this.hotelId = hotelId;
    }

    public int getNumRooms() {
        return numRooms;
    }

    public void setNumRooms(int numRooms) {
        this.numRooms = numRooms;
    }

    public double getStarRating() {
        return starRating;
    }

    public void setStarRating(double starRating) {
        this.starRating = starRating;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
