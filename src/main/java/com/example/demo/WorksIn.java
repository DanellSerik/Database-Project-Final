package com.example.demo;

public class WorksIn {
    private String employeeId;
    private String idType;
    private String hotelId;

    public WorksIn(String employeeId, String idType, String hotelId) {
        this.employeeId = employeeId;
        this.idType = idType;
        this.hotelId = hotelId;
    }

    public String getEmployeeId() { return employeeId; }
    public String getIdType() { return idType; }
    public String getHotelId() { return hotelId; }

    public void setEmployeeId(String employeeId) { this.employeeId = employeeId; }
    public void setIdType(String idType) { this.idType = idType; }
    public void setHotelId(String hotelId) { this.hotelId = hotelId; }
}
