/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.task5;

import java.sql.*;
/**
 *
 * @author Asyraf
 */
public class Database {
    
    private static Connection myConnection = null;
    private static String driver = "com.mysql.jdbc.Driver";
    private static String db_url = "jdbc:mysql://localhost:3306/csf3209";
    
    public static Connection getConnection() throws ClassNotFoundException {
        
        try {
            Class.forName(driver);
            myConnection = DriverManager.getConnection(db_url, "root", "");
        }
        catch (Exception e) {
            e.printStackTrace();
        }
        return myConnection;
    }
    
    public void closeConnection() throws ClassNotFoundException {
        
        try {
            myConnection.close();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
}