package com.example.demo;

import java.sql.Date;

public class Renting {
    private String rentingId;
    private Date checkInDate;
    private Date checkOutDate;

    //Constructor
    public Renting(String rentingId, Date checkInDate, Date checkOutDate) {
        this.rentingId = rentingId;
        this.checkInDate = checkInDate;
        this.checkOutDate = checkOutDate;
    }

    //getters and setters
    public String getRentingId() {return rentingId;}

    public void setRentingId(String rentingId) {this.rentingId = rentingId;}

    public Date getCheckInDate() {return checkInDate;}

    public void setCheckInDate(Date checkInDate) {this.checkInDate = checkInDate;}

    public Date getCheckOutDate() {return checkOutDate;}

    public void setCheckOutDate(Date checkOutDate) {this.checkOutDate = checkOutDate;}
}
