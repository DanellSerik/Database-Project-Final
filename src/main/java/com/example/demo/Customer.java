package com.example.demo;

import java.sql.Date;

public class Customer {
    private String customerId;
    private String idType;
    private String customerEmail;
    private String firstName;
    private String lastName;
    private Address address;
    private Date dateOfRegistration;

    // Constructor
    public Customer() {}

    public Customer(String customerId, String idType, String customerEmail, String firstName,
                    String lastName, Address address, Date dateOfRegistration) {
        this.customerId = customerId;
        this.idType = idType;
        this.customerEmail = customerEmail;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
        this.dateOfRegistration = dateOfRegistration;
    }

    // Getters and Setters
    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    public String getCustomerEmail() {
        return customerEmail;
    }

    public void setCustomerEmail(String customerEmail) {
        this.customerEmail = customerEmail;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Date getDateOfRegistration() {
        return dateOfRegistration;
    }

    public void setDateOfRegistration(Date dateOfRegistration) {
        this.dateOfRegistration = dateOfRegistration;
    }

    // Optionally override toString() to print customer info easily
    @Override
    public String toString() {
        return "Customer ID: " + customerId + ", ID Type: " + idType + ", Email: " + customerEmail +
                ", Name: " + firstName + " " + lastName + ", Address: " + address + ", Date of Registration: " + dateOfRegistration;
    }
}