/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controller;

import com.dao.UserDAO;
import com.model.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PC 48
 */
public class UserControllers extends HttpServlet {

    private static String INSERT = "/task1/user.jsp"; 
    private static String EDIT = "/task1/editUser.jsp";
    private static String LIST_USER = "/task1/listUser.jsp";
    private UserDAO dao;
    
    public UserControllers() throws ClassNotFoundException {
        super();
        dao = new UserDAO();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String forward = "";
        String action = request.getParameter("action");
        
        if(action.equalsIgnoreCase("delete")) {
            String userID = request.getParameter("userID");
            dao.deleteUser(userID);
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        }
        else if(action.equalsIgnoreCase("edit")) {
            forward = EDIT;
            String userID = request.getParameter("userID");
            User user = dao.getUserById(userID);
            request.setAttribute("user", user);
        }
        else if(action.equalsIgnoreCase("listUser")) {
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        }
        else if(action.equalsIgnoreCase("insert")) {
            forward = INSERT;
        }
        
        request.getRequestDispatcher(forward).forward(request, response);
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");
        
        User user = new User();
        user.setUserID(request.getParameter("userID"));
        user.setfName(request.getParameter("fName"));
        user.setlName(request.getParameter("lName"));
        
        if(action.equalsIgnoreCase("edit")) {
            dao.updateUser(user);
        }
        else {
            dao.addUser(user);
        }
        
        request.setAttribute("users", dao.getAllUsers());
        request.getRequestDispatcher(LIST_USER).forward(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}