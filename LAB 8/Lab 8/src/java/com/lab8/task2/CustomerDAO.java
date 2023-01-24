/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab8.task2;

import java.sql.*;
import java.util.*;
/**
 *
 * @author Asyraf
 */
public class CustomerDAO {

    static Connection con;
    static ResultSet rs = null;
    private int result;

    public CustomerDAO() {
        con = DBConnection.getConnection();
    }

    public int registerCustomer(Customer customer) {

        try {
            String sql = "INSERT INTO customer(cus_email,cus_password,cus_name,cus_ic) "
                    + "VALUES(?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, customer.getEmail());
            ps.setString(2, customer.getPassword());
            ps.setString(3, customer.getName());
            ps.setString(4, customer.getIcno());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Exception message: " + e);
        }
        return result;
    }

    //CHECK USER LOGIN VALIDATION
    public int login(Customer customer) {

        int count = 0;
        try {
            String sql = "SELECT * FROM customer WHERE cus_email='" + customer.getEmail()
                    + "'AND cus_password='" + customer.getPassword() + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                customer.setId(rs.getInt(1));
                customer.setEmail(rs.getString(2));
                customer.setPassword(rs.getString(3));
                count++;
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return count;
    }

    public Customer retrieveOneCustomer(String email) {

        Customer customer = new Customer();
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM customer WHERE cus_email='" + email + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                customer.setId(rs.getInt(1));
                customer.setEmail(rs.getString(2));
                customer.setPassword(rs.getString(3));
                customer.setName(rs.getString(4));
                customer.setIcno(rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return customer;
    }

    public Customer loadOneCustomer(int id) {

        Customer customer = new Customer();
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM customer WHERE cus_id='" + id + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                customer.setId(rs.getInt(1));
                customer.setEmail(rs.getString(2));
                customer.setPassword(rs.getString(3));
                customer.setName(rs.getString(4));
                customer.setIcno(rs.getString(5));
            }
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return customer;
    }

    //UPDATE CUSTOMER DETAILS
    public int updateCustomer(Customer customer) {

        try {
            String sql = "UPDATE customer SET cus_password=?, cus_name=? "
                    + "WHERE cus_email=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, customer.getPassword());
            ps.setString(2, customer.getName());
            ps.setString(3, customer.getEmail());
            result = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }

    //REGISTER VEHICLE
    public int registerVehicle(Vehicle vehicle) {

        try {
            String sql = "INSERT INTO vehicle(veh_plat,veh_type,veh_brand,veh_marketprice,cus_id)"
                    + "VALUES(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, vehicle.getPlat());
            ps.setString(2, vehicle.getVehType());
            ps.setString(3, vehicle.getBrand());
            ps.setDouble(4, vehicle.getMprice());
            ps.setInt(5, vehicle.getUserID());
            result = ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println("Exception message: " + e);
        }
        return result;
    }

    //LIST ALL STUDENTS
    public List<Vehicle> retrieveAllVehicle(int cusID) {

        List<Vehicle> vehAll = new ArrayList<>();
        Vehicle vehicle;

        try {
            String sql = "SELECT * FROM vehicle WHERE cus_id='" + cusID + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                vehicle = new Vehicle();
                vehicle.setId(rs.getInt(1));
                vehicle.setPlat(rs.getString(2));
                vehicle.setVehType(rs.getString(3));
                vehicle.setBrand(rs.getString(4));
                vehicle.setMprice(rs.getDouble(5));
                vehicle.setUserID(rs.getInt(6));
                vehAll.add(vehicle);
            }
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return vehAll;
    }

    public Vehicle retrieveOneVehicle(int id) {

        Vehicle vehicle = new Vehicle();
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM vehicle WHERE veh_id='" + id + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                vehicle.setId(rs.getInt(1));
                vehicle.setPlat(rs.getString(2));
                vehicle.setVehType(rs.getString(3));
                vehicle.setBrand(rs.getString(4));
                vehicle.setMprice(rs.getDouble(5));
                vehicle.setUserID(rs.getInt(6));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return vehicle;
    }

    //UPDATE VEHICLES
    public int updateVehicle(Vehicle vehicle) {

        try {
            String sql = "UPDATE vehicle SET veh_plat=?, veh_type=?, veh_brand=?, veh_marketprice=?, cus_id=? "
                    + "WHERE veh_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, vehicle.getPlat());
            ps.setString(2, vehicle.getVehType());
            ps.setString(3, vehicle.getBrand());
            ps.setDouble(4, vehicle.getMprice());
            ps.setInt(5, vehicle.getUserID());
            ps.setInt(6, vehicle.getId());
            result = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }

    //DELETE VEHICLES
    public int deleteVehicle(int id) {

        try {
            String sql = "DELETE FROM vehicle WHERE veh_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            result = ps.executeUpdate();
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }

    //GET MARKET PRICE
    public Vehicle marketPrice(String plat) {

        Vehicle vehicle = new Vehicle();
        try {
            String sql = "SELECT * FROM vehicle WHERE veh_plat='" + plat + "'";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                vehicle.setId(rs.getInt(1));
                vehicle.setPlat(rs.getString(2));
                vehicle.setVehType(rs.getString(3));
                vehicle.setBrand(rs.getString(4));
                vehicle.setMprice(rs.getDouble(5));
                vehicle.setUserID(rs.getInt(6));
            }
        } catch (Exception e) {
            System.out.println("Exception is : " + e);
        }
        return vehicle;
    }
}
