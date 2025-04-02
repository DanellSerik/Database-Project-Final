package com.example.demo.controller;

import com.example.demo.Address;
import com.example.demo.Customer;
import com.example.demo.Employee;
import com.example.demo.SignInService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.sql.Date;
import java.sql.SQLException;
@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/customers")
public class CustomerController {

    private final SignInService signInService;

    @Autowired
    public CustomerController(SignInService signInService) {
        this.signInService = signInService;
    }

    @PostMapping("/addCustomer")
    public ResponseEntity<String> addCustomer(@RequestBody Customer customer) {
        System.out.println(customer);
        try {
            signInService.addCustomer(customer);
            return ResponseEntity.ok("Customer added successfully!");
        } catch (SQLException e) {
            System.out.println("Error adding customer: " + e.getMessage());
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body("Error adding customer: " + e.getMessage());
        }
    }

    @GetMapping("/getCustomer/{id}/{type}")
    public ResponseEntity<?> getCustomerById(@PathVariable String id, @PathVariable String type) {
        Customer customer = signInService.getCustomer(id, type);
        if (customer == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Customer not found.");
        }
        return ResponseEntity.ok(customer);
    }

    // Delete customer by ID and Type
    @DeleteMapping("/{customerId}/{idType}")
    public String deleteCustomer(@PathVariable String customerId, @PathVariable String idType) {
        try {
            boolean result = signInService.removeCustomer(customerId, idType);
            return result ? "Customer deleted successfully!" : "Customer not found.";
        } catch (Exception e) {
            // Log the error and return a user-friendly message
            System.out.println("Error removing customer: " + e.getMessage());
            return "Error removing customer: " + e.getMessage();
        }
    }
}
