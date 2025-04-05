package com.example.demo.controller;

import com.example.demo.Employee;
import com.example.demo.EmployeeManager;
import com.example.demo.Hotel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@RestController
@RequestMapping("/api/employees")
public class EmployeeController {

    private final EmployeeManager employeeManager;

    @Autowired
    public EmployeeController(EmployeeManager employeeManager) {
        this.employeeManager = employeeManager;
    }

    // Get employee by ID and Type
    @GetMapping("getEmployee/{id}/{type}")
    public Employee getEmployeeById(@PathVariable String id, @PathVariable String type) {
        try {
            Employee employee = employeeManager.getEmployee(id, type);
            if (employee == null) {
                throw new RuntimeException("Employee not found.");
            }
            return employee;
        } catch (Exception e) {
            // Log the error and return a user-friendly message
            System.out.println("Error fetching employee: " + e.getMessage());
            throw new RuntimeException("Error fetching employee: " + e.getMessage());
        }
    }

    // Add new employee
    @PostMapping("/addEmployee")
    public String addEmployee(@RequestBody Employee employee) {
        try {
            int result = employeeManager.addEmployee(employee);
            return result > 0 ? "Employee added successfully!" : "Failed to add employee.";
        } catch (Exception e) {
            // Log the error and return a user-friendly message
            System.out.println("Error adding employee: " + e.getMessage());
            return "Error adding employee: " + e.getMessage();
        }
    }

    // Delete employee by ID and Type
    @DeleteMapping("/{id}/{type}")
    public String deleteEmployee(@PathVariable String id, @PathVariable String type) {
        try {
            boolean result = employeeManager.removeEmployee(id, type);
            return result ? "Employee deleted successfully!" : "Employee not found.";
        } catch (Exception e) {
            // Log the error and return a user-friendly message
            System.out.println("Error removing employee: " + e.getMessage());
            return "Error removing employee: " + e.getMessage();
        }
    }

    @PostMapping("/addHotel")
    public ResponseEntity<String> addHotel(@RequestBody Hotel hotel) {
        try {
            // Call the BookingService to handle the logic
            boolean isAdded = employeeManager.addHotel(hotel);
            if (isAdded) {
                return ResponseEntity.ok("Hotel added successfully");
            } else {
                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Failed to add hotel");
            }
        } catch (IllegalArgumentException e) {
            return ResponseEntity.badRequest().body("Invalid hotel data: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("Error adding hotel: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("An error occurred: " + e.getMessage());
        }
    }
}
