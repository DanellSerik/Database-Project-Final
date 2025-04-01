package com.example.demo;

import java.util.List;

public class Room {
    private short roomNum;
    private String hotelId;
    private double price;
    private List<String> problems;
    private boolean extendable;
    private List<String> amenities;
    private int capacity;
    private String view;

    // Constructor
    public Room(short roomNum, String hotelId, double price, List<String> problems, boolean extendable,
                List<String> amenities, int capacity, String view) {
        this.roomNum = roomNum;
        this.hotelId = hotelId;
        this.price = price;
        this.problems = problems;
        this.extendable = extendable;
        this.amenities = amenities;
        this.capacity = capacity;
        this.view = view;
    }

    // Getters and Setters
    public short getRoomNum() {return roomNum;}

    public void setRoomNum(short roomNum) {this.roomNum = roomNum;}

    public String getHotelId() {return hotelId;}

    public void setHotelId(String hotelId) {this.hotelId = hotelId;}

    public double getPrice() {return price;}

    public void setPrice(double price) {this.price = price;}

    public List<String> getProblems() {return problems;}

    public void setProblems(List<String> problems) {this.problems = problems;}

    public boolean isExtendable() {return extendable;}

    public void setExtendable(boolean extendable) {this.extendable = extendable;}

    public List<String> getAmenities() {return amenities;}

    public void setAmenities(List<String> amenities) {this.amenities = amenities;}

    public int getCapacity() {return capacity;}

    public void setCapacity(int capacity) {this.capacity = capacity;}

    public String getView() {return view;}

    public void setView(String view) {this.view = view;}
}
