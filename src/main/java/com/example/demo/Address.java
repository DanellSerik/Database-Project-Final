package com.example.demo;

public class Address {
    private String street;
    private String city;
    private String province;
    private String postal;
    private String country;

    //Constructor
    public Address() {}

    public Address(String street, String city, String province, String postal, String country) {
        this.street = street;
        this.city = city;
        this.province = province;
        this.postal = postal;
        this.country = country;
    }

    //Getters and Setters
    public String getStreet() {return street;}

    public void setStreet(String street) {this.street = street;}

    public String getCity() {return city;}

    public void setCity(String city) {this.city = city;}

    public String getProvince() {return province;}

    public void setProvince(String province) {this.province = province;}

    public String getPostal() {return postal;}

    public void setPostal(String postal) {this.postal = postal;}

    public String getCountry() {return country;}

    public void setCountry(String country) {this.country = country;}
}
