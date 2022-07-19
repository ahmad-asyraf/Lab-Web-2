/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab8.task1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asyraf
 */
public class StudentServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            String theCommand = request.getParameter("command");
            
            if(theCommand == null) {
                theCommand = "LIST";
            }
            
            switch (theCommand) {
                case "LIST":
                    listStudent(request, response);
                    break;
                case "ADD":
                    addStudent(request, response);
                    break;
                case "LOAD":
                    loadStudent(request, response);
                    break;
                case "UPDATE":
                    updateStudent(request, response);
                    break;
                case "DELETE":
                    deleteStudent(request, response);
                    break;
                default:
                    listStudent(request, response);
            }
        }
        catch(Exception ex) {
            Logger.getLogger(StudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    private void addStudent(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String matric = request.getParameter("matric");
        
        Student student = new Student();
        student.setMatric(matric);
        student.setName(name);
        
        StudentDAO studentDAO = new StudentDAO();
        int result = studentDAO.addStudent(student);
        if(result > 0) {
            request.setAttribute("theMessage", "Success Add Record");
            listStudent(request, response);
        }
        else {
            out.print("<p class='error'>Student " + matric + " already exist!</p>");
            request.getRequestDispatcher("/task1/add-student-form.jsp").include(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void listStudent(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        StudentDAO studentDAO = new StudentDAO();
        List<Student> allStudent = studentDAO.retrieveAllStudent();
        
        request.setAttribute("theStudents", allStudent);
        
        request.getRequestDispatcher("/task1/process-view-student.jsp").forward(request, response);
    }

    private void loadStudent(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        int theStudentId = Integer.parseInt(request.getParameter("id"));
        
        StudentDAO studentDAO = new StudentDAO();
        Student theStudent = studentDAO.retrieveOneStudent(theStudentId);
        
        request.setAttribute("theStudent", theStudent);
        
        request.getRequestDispatcher("/task1/process-update-student.jsp").forward(request, response);
    }
    
    private void updateStudent(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();
        
        int studentId = Integer.parseInt(request.getParameter("hidid"));
        String name = request.getParameter("name");
        String matric = request.getParameter("matric");
        
        StudentDAO studentDAO = new StudentDAO();
        Student student = new Student();
        
        student.setId(studentId);
        student.setName(name);
        student.setMatric(matric);
        
        int result = studentDAO.updateStudent(student);
        if(result > 0) {
            request.setAttribute("theMessage", "Success Update Record");
            listStudent(request, response);
        }
    }
    
    private void deleteStudent(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        
        int studentId = Integer.parseInt(request.getParameter("id"));
        StudentDAO studentDAO = new StudentDAO();
        int result = studentDAO.deleteStudent(studentId);
        if(result > 0) {
            request.setAttribute("theMessage", "Success Delete Record");
            listStudent(request, response);
        }
    }
}
