package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.Date;
import java.sql.SQLException;

@SpringBootApplication(scanBasePackages = {"com.example.demo", "com.example.demo.controller"})
public class Main {

    public static void main(String[] args) throws SQLException {
        SpringApplication.run(Main.class, args);
        SignInService signInService = new SignInService();
        Address address = new Address("dsadsaas", "sdads", "dsadsa", "dsadsa", "dsadsads");
        long now = System.currentTimeMillis();
        Date date = new Date(now);
        Customer customer = new Customer("shdsiodjosdjoisa", "Drivers License", "sdassa", "sasad", "dsadsa", address, date);
        signInService.addCustomer(customer);
    }
}
