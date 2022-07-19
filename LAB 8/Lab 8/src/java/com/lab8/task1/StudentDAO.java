/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.lab8.task1;

import java.sql.*;
import java.util.*;

/**
 *
 * @author Asyraf
 */
public class StudentDAO {

    private final Connection con;
    private int result;
    
    public StudentDAO() {
        con = DBConnection.getConnection();
    }
    
    //REGISTER STUDENTS
    public int addStudent(Student student) {
        
        try {
            String sql = "INSERT INTO student(stud_matric, stud_name) VALUES(?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, student.getMatric());
            ps.setString(2, student.getName());
            result = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }
    
    //LIST ALL STUDENTS
    public List<Student> retrieveAllStudent() {
        
        List<Student> studentAll = new ArrayList<Student>();
        Student student;
        
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM student";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {
                student = new Student();
                student.setId(rs.getInt(1));
                student.setMatric(rs.getString(2));
                student.setName(rs.getString(3));
                studentAll.add(student);
            }
        }
        catch(Exception e) {
            System.out.println("Exception is : " + e);
        }
        return studentAll;
    }
    
    //GET STUDENT BY ID
    public Student retrieveOneStudent(int studentId) {
        
        Student student = new Student();
        try {
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM student WHERE stud_id='" + studentId + "'";
            ResultSet rs = stmt.executeQuery(sql);
            while(rs.next()) {
                student.setId(rs.getInt(1));
                student.setMatric(rs.getString(2));
                student.setName(rs.getString(3));
            }
        }
        catch(Exception e) {
            System.out.println("Exception is : " + e);
        }
        return student;
    }
    
    //UPDATE STUDENT PROFILE
    public int updateStudent(Student student) {
        
        try {
            String sql = "UPDATE student SET stud_matric=?, stud_name=? "
                       + "WHERE stud_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, student.getMatric());
            ps.setString(2, student.getName());
            ps.setInt(3, student.getId());
            result = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }
    
    //DELETE STUDENT PROFILE
    public int deleteStudent(int studentId) {
        
        try {
            String sql = "DELETE FROM student WHERE stud_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, studentId);
            result = ps.executeUpdate();
        }
        catch(Exception e) {
            System.out.println("Exception is : " + e);
        }
        return result;
    }
}
