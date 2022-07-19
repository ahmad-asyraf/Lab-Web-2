/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.User;
import com.util.DBConnection;
import java.sql.*;
import java.util.*;

/**
 *
 * @author PC 48
 */
public class UserDAO {
    
    private Connection con;

    public UserDAO() throws ClassNotFoundException {
        con = DBConnection.getConnection();
    }
    
    public void addUser(User user) {
        
        try {
            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO userslab7(userID, fName, lName) VALUES(?,?,?)");
            ps.setString(1, user.getUserID());
            ps.setString(2, user.getfName());
            ps.setString(3, user.getlName());
            ps.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void deleteUser(String userID) {
        
        try {
            PreparedStatement ps = con.prepareStatement(
            "DELETE FROM userslab7 WHERE userID=?");
            ps.setString(1, userID);
            ps.executeUpdate();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
    }
    
    public void updateUser(User user) {
        
        try {
            PreparedStatement ps = con.prepareStatement(
            "UPDATE userslab7 SET fName=?, lName=? WHERE userID=?");
            ps.setString(1, user.getfName());
            ps.setString(2, user.getlName());
            ps.setString(3, user.getUserID());
            ps.executeUpdate();
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
    }
    
    public List<User> getAllUsers() {
        
        List<User> users = new ArrayList<User>();
        try {
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM userslab7");
            while(rs.next()) {
                User user = new User();
                user.setUserID(rs.getString("userID"));
                user.setfName(rs.getString("fName"));
                user.setlName(rs.getString("lName"));
                users.add(user);
            }
        }
        catch(SQLException e) {
            e.printStackTrace();
        }
        return users;
    }
    
    public User getUserById(String userID) {
        
        User user = new User();
        try {
            PreparedStatement ps = con.prepareStatement(
            "SELECT * FROM userslab7 WHERE userID=?");
            ps.setString(1, userID);
            ResultSet rs = ps.executeQuery();
            
            while(rs.next()) {
                user.setUserID(rs.getString("userID"));
                user.setfName(rs.getString("fName"));
                user.setlName(rs.getString("lName"));
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}