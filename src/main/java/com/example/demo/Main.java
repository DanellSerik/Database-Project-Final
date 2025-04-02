package com.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.sql.Date;
import java.sql.SQLException;

@SpringBootApplication(scanBasePackages = {"com.example.demo", "com.example.demo.controller"})
public class Main {

    public static void main(String[] args) throws SQLException {
        SpringApplication.run(Main.class, args);
    }
}
