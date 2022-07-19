/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.util;

import java.sql.*;

/**
 *
 * @author PC 48
 */
public class DBConnection {
    private static Connection con = null;
    private static String db_url = "jdbc:mysql://localhost:3306/csf3209";
    
    DBConnection() {
        
    }
    
    public static Connection getConnection() throws ClassNotFoundException {
        
        if(con != null) {
            return con;
        }
        else { 
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(db_url, "root", "");
            }
            catch(SQLException e) {
                e.printStackTrace();
            }
            return con;
        }
    }
    
    public void closeConnection() throws ClassNotFoundException {
        
        try {
            con.close();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
    }
}
