package com.example.demo.controller;

import com.example.demo.Employee;
import com.example.demo.EmployeeManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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
    @PostMapping("/add")
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
}
