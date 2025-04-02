package com.example.demo;

import org.json.JSONObject;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Types;
import org.json.JSONException;
import org.springframework.stereotype.Service;

import java.sql.*;

@Service
public class SignInService {

    static String url = "jdbc:postgresql://localhost:5432/database_project";
    static String user = "postgres";
    static String password = "Danell2005";

    public void addCustomer(Customer customer) throws SQLException {

        String insertQuery = "INSERT INTO customer (customer_id, id_type, customer_email, first_name, last_name, address, date_of_registration) " +
                "VALUES (?, ?, ?, ?, ?, ?,?)";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(insertQuery)) {

            pst.setString(1, customer.getCustomerId());
            pst.setString(2, customer.getIdType());
            pst.setString(3, customer.getCustomerEmail());
            pst.setString(4, customer.getFirstName());
            pst.setString(5, customer.getLastName());
            pst.setDate(7, customer.getDateOfRegistration());

            // Convert Address object to JSON
            JSONObject addressJson = new JSONObject();
            addressJson.put("street", customer.getAddress().getStreet());
            addressJson.put("city", customer.getAddress().getCity());
            addressJson.put("province", customer.getAddress().getProvince());
            addressJson.put("postal", customer.getAddress().getPostal());
            addressJson.put("country", customer.getAddress().getCountry());

            // Set address as JSON string in the PreparedStatement
            pst.setObject(6, addressJson.toString(), Types.OTHER);

            int rowsInserted = pst.executeUpdate();
            System.out.println(rowsInserted + " row(s) inserted successfully.");

        } catch (SQLException | JSONException exception) {
            System.out.println("An exception was thrown: " + exception.getMessage());
        }
    }

    public boolean removeCustomer(String customer_id, String id_type) {
        String query = "DELETE FROM customer WHERE customer_id = ? AND id_type = ?";

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, customer_id);
            pst.setString(2, id_type);

            int rowsDeleted = pst.executeUpdate();
            return rowsDeleted > 0;
        } catch (SQLException e) {
            System.out.println("Error removing customer: " + e.getMessage());
            return false;
        }
    }

    public Customer getCustomer(String customer_id, String id_type) {
        String query = "SELECT * FROM customer WHERE customer_id = ? AND id_type = ?";
        Customer customer = null;

        try (Connection db = DriverManager.getConnection(url, user, password);
             PreparedStatement pst = db.prepareStatement(query)) {

            pst.setString(1, customer_id);
            pst.setString(2, id_type);

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

                    customer = new Customer(
                            rs.getString("customer_id"),
                            rs.getString("id_type"),
                            rs.getString("customer_email"),
                            rs.getString("first_name"),
                            rs.getString("last_name"),
                            address,
                            rs.getDate("date_of_registration")
                    );
                } else {
                    System.out.println("Customer with ID " + customer_id + " and Type " + id_type + " not found.");
                }
            }
        } catch (SQLException | JSONException e) {
            System.out.println("Error fetching customer: " + e.getMessage());
        }
        return customer;
    }
}
