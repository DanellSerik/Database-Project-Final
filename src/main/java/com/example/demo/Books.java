package com.example.demo;

public class Books {

    String customer_id;
    String id_type;
    String booking_id;
    int room_num;
    String hotel_id;

    public Books(String customer_id, String id_type, String booking_id, int room_num, String hotel_id) {
        this.customer_id = customer_id;
        this.id_type = id_type;
        this.booking_id = booking_id;
        this.room_num = room_num;
        this.hotel_id = hotel_id;
    }

    public String getCustomer_id() {return customer_id;}
    public String getId_type() {return id_type;}
    public String getBooking_id() {return booking_id;}
    public int getRoom_num() {return room_num;}
    public String getHotel_id() {return hotel_id;}
}
