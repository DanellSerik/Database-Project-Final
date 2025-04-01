package com.example.demo;

import java.sql.*;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public class EmployeeManager {

    static String url = "jdbc:postgresql://localhost:5432/database_project";
    static String user = "postgres";
    static String password = "your_password";

    public int addEmployee(Employee employee) throws SQLException {
        String query = "INSERT INTO employee (employee_id, id_type, first_name, last_name, address) VALUES (?, ?, ?, ?, ?)";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, employee.getEmployeeId());
            pst.setString(2, employee.getIdType());
            pst.setString(3, employee.getFirstName());
            pst.setString(4, employee.getLastName());

            // Convert Address object to JSON
            JSONObject addressJson = new JSONObject();
            addressJson.put("street", employee.getAddress().getStreet());
            addressJson.put("city", employee.getAddress().getCity());
            addressJson.put("province", employee.getAddress().getProvince());
            addressJson.put("postal", employee.getAddress().getPostal());
            addressJson.put("country", employee.getAddress().getCountry());

            // Set address as JSON string in the PreparedStatement
            pst.setString(5, addressJson.toString());

            int rowsInserted = pst.executeUpdate();
            System.out.println(rowsInserted + " row(s) inserted successfully.");
            return 1;

        } catch (SQLException | JSONException e) {
            System.out.println("Error adding employee: " + e.getMessage());
            return -1;
        }
    }

    public boolean removeEmployee(String employeeId, String idType) {
        String query = "DELETE FROM employee WHERE employee_id = ? AND id_type = ?";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, employeeId);
            pst.setString(2, idType);

            int rowsDeleted = pst.executeUpdate();
            return rowsDeleted > 0;

        } catch (SQLException e) {
            System.out.println("Error removing employee: " + e.getMessage());
            return false;
        }
    }

    public Employee getEmployee(String employeeId, String idType) {
        String query = "SELECT * FROM employee WHERE employee_id = ? AND id_type = ?";
        Employee employee = null;

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, employeeId);
            pst.setString(2, idType);

            try (ResultSet rs = pst.executeQuery()) {
                if (rs.next()) {
                    String addressJson = rs.getString("address"); // Get address as JSON string
                    JSONObject jsonObj = new JSONObject(addressJson); // Parse JSON

                    // Now create an Address object from the JSON
                    Address address = new Address(
                            jsonObj.getString("street"),
                            jsonObj.getString("city"),
                            jsonObj.getString("province"),
                            jsonObj.getString("postal"),
                            jsonObj.getString("country")
                    );

                    employee = new Employee(
                            rs.getString("employee_id"),
                            rs.getString("id_type"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            address
                    );
                } else {
                    System.out.println("Employee with ID " + employeeId + " and Type " + idType + " not found.");
                }
            }
        } catch (SQLException | JSONException e) {
            System.out.println("Error fetching employee: " + e.getMessage());
        }

        return employee;
    }

    public void getEmployeeCountPerHotel() {
        String query = "SELECT hotel_id, COUNT(*) AS employee_count FROM works_in GROUP BY hotel_id";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query);
             ResultSet rs = pst.executeQuery()) {

            while (rs.next()) {
                String hotelId = rs.getString("hotel_id");
                int count = rs.getInt("employee_count");
                System.out.println("Hotel ID: " + hotelId + " | Employee Count: " + count);
            }

        } catch (SQLException e) {
            System.out.println("Error fetching employee count per hotel: " + e.getMessage());
        }
    }

    public void getEmployeesWithSameRole(String employeeId, String idType) {
        String query = "SELECT e.* FROM employee e WHERE (e.employee_id, e.id_type) IN ("
                + " SELECT hr.employee_id, hr.id_type FROM has_role hr "
                + " WHERE hr.role_id IN ("
                + "     SELECT role_id FROM has_role WHERE employee_id = ? AND id_type = ?))";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, employeeId);
            pst.setString(2, idType);

            try (ResultSet rs = pst.executeQuery()) {
                while (rs.next()) {
                    System.out.println("Employee ID: " + rs.getString("employee_id") +
                            " | Name: " + rs.getString("first_name") + " " + rs.getString("last_name") +
                            " | Address: " + rs.getString("address"));
                }
            }
        } catch (SQLException e) {
            System.out.println("Error fetching employees with the same role: " + e.getMessage());
        }
    }

}
