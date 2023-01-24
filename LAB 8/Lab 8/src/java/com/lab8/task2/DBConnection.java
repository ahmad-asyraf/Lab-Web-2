/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab8.task2;

import java.sql.*;
/**
 *
 * @author Asyraf
 */
public class DBConnection {

    private static Connection con;

    public static Connection getConnection() {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/insurance";
            con = DriverManager.getConnection(url, "root", "");
        } catch (Exception e) {
            e.getMessage();
        }
        return con;
    }

    public void closeConnection() {

        try {
            con.close();
        } catch (Exception e) {
            e.getMessage();
        }
    }
}
