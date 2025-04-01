package com.example.demo;

public class HotelChain {
    private String chainName;
    private String phoneNum;
    private int numHotels;
    private String address;
    private String email;

    // Constructor
    public HotelChain(String chainName, String phoneNum, int numHotels, String address, String email) {
        this.chainName = chainName;
        this.phoneNum = phoneNum;
        this.numHotels = numHotels;
        this.address = address;
        this.email = email;
    }

    // Getters and Setters
    public String getChainName() {
        return chainName;
    }

    public void setChainName(String chainName) {
        this.chainName = chainName;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public int getNumHotels() {
        return numHotels;
    }

    public void setNumHotels(int numHotels) {
        this.numHotels = numHotels;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
