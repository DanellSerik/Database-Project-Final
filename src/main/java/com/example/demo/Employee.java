package com.example.demo;

import java.sql.*;

public class Employee {

    private String employeeId;
    private String idType;
    private String firstName;
    private String lastName;
    private Address address;

    public Employee(String employeeId, String idType, String firstName, String lastName, Address address) {
        this.employeeId = employeeId;
        this.idType = idType;
        this.firstName = firstName;
        this.lastName = lastName;
        this.address = address;
    }

    public String getEmployeeId() { return employeeId; }
    public String getIdType() { return idType; }
    public String getFirstName() { return firstName; }
    public String getLastName() { return lastName; }
    public Address getAddress() { return address; }

    public void setEmployeeId(String employeeId) { this.employeeId = employeeId; }
    public void setIdType(String idType) { this.idType = idType; }
    public void setFirstName(String firstName) { this.firstName = firstName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    public void setAddress(Address address) { this.address = address; }
}
