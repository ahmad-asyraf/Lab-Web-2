/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.lab8.task2;

import com.lab8.task1.StudentServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.Response;

/**
 *
 * @author Asyraf
 */
public class CustomerController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        try {
            String action = request.getParameter("cmd");

            if (action == null) {
                action = "REGISTER";
            }

            switch (action) {
                case "REGISTER": //REGISTER CUSTOMER ACCOUNT
                    registerCustomer(request, response);
                    break;
                case "LOGIN": //CUSTOMER LOGIN VALIDATION
                    userLogin(request, response);
                    break;
                case "LOADUSER": //LOAD CUSTOMER's DETAILS
                    loadUser(request, response);
                    break;
                case "UPDATE": //UPDATE CUSTOMER's PROFILE
                    updateProfile(request, response);
                    break;
                case "registerVehicle": //REGISTER VEHICLE
                    registerVehicle(request, response);
                    break;
                case "list-vehicle": //LIST ALL VEHICLE
                    listVehicle(request, response);
                    break;
                case "load-vehicle": //LOAD VEHICLE
                    loadVehicle(request, response);
                    break;
                case "UPDATEVEHICLE": //UPDATE VEHICLE
                    updateVehicle(request, response);
                    break;
                case "delete-vehicle": //DELETE VEHICLE
                    deleteVehicle(request, response);
                    break;
                case "list-insurance": //REQUEST QUOTATION
                    listInsurance(request, response);
                    break;
                case "get-quotation": //GET QUOTATION
                    loadQuotation(request, response);
                    break;
                default:
                    registerCustomer(request, response);
            }
        } catch (Exception ex) {
            Logger.getLogger(StudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //REGISTER CUSTOMER ACCOUNT
    private void registerCustomer(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String repass = request.getParameter("repass");
        String name = request.getParameter("name");
        String icno = request.getParameter("icno");

        if (password.equals(repass)) {
            Customer customer = new Customer();
            customer.setEmail(email);
            customer.setPassword(password);
            customer.setName(name);
            customer.setIcno(icno);

            CustomerDAO customerDAO = new CustomerDAO();
            int result = customerDAO.registerCustomer(customer);
            if (result > 0) {
                request.setAttribute("message", "<p class='success pt pb'>Account register successful... Sign in to continue</p>");
                request.getRequestDispatcher("task2/login.jsp").include(request, response);
            } else {
                request.setAttribute("message", "<p class='error pt pb'>Email " + email + " already exist!</p>");
                request.getRequestDispatcher("task2/index.jsp").include(request, response);
            }
        } else {
            request.setAttribute("message", "<p class='error pt pb'>Password enter not match!</p>");
            request.getRequestDispatcher("task2/index.jsp").include(request, response);
        }
    }

    //CUSTOMER LOGIN VALIDATION
    private void userLogin(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");

            Customer customer = new Customer();
            customer.setEmail(email);
            customer.setPassword(password);

            CustomerDAO customerDAO = new CustomerDAO();
            int result = customerDAO.login(customer);

            if (result > 0) {
                Customer login = customerDAO.loadOneCustomer(customer.getId());
                HttpSession session = request.getSession();
                session.setAttribute("username", login);
                request.getRequestDispatcher("task2/customer-dashboard.jsp").forward(request, response);
            } else {
                request.setAttribute("message", "<p class='error pt pb'>Wrong username or password!</p>");
                request.getRequestDispatcher("task2/login.jsp").include(request, response);
            }
        } catch (Exception e) {
            System.out.print("Exception message: " + e);
        }
    }

    //LOAD CUSTOMER's DETAILS
    private void loadUser(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        int userid = Integer.parseInt(request.getParameter("userID"));

        Customer customer = new Customer();
        customer.setId(userid);

        CustomerDAO cdao = new CustomerDAO();
        Customer customer1 = cdao.loadOneCustomer(userid);

        HttpSession session = request.getSession();
        session.setAttribute("username", customer1);
        request.getRequestDispatcher("task2/customer-update.jsp").forward(request, response);
    }

    //UPDATE CUSTOMER's PROFILE
    private void updateProfile(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String repass = request.getParameter("repass");
        String name = request.getParameter("name");

        if (pass.equals(repass)) {

            Customer customer = new Customer();
            customer.setEmail(email);
            customer.setPassword(pass);
            customer.setName(name);

            CustomerDAO customerDAO = new CustomerDAO();

            int result = customerDAO.updateCustomer(customer);

            if (result > 0) {
                userLogin(request, response);
            }
        } else {
            request.setAttribute("theMessage", "<p class='error pt pb'>Password enter not match!</p>");
            request.getRequestDispatcher("task2/customer-update.jsp").include(request, response);
        }
    }

    //REGISTER VEHICLE
    private void registerVehicle(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        String vplat = request.getParameter("plat");
        String vtype = request.getParameter("vehType");
        String vbrand = request.getParameter("brand");
        double price = Double.parseDouble(request.getParameter("mprice"));
        int userid = Integer.parseInt(request.getParameter("userID"));

        Vehicle vehicle = new Vehicle();
        vehicle.setPlat(vplat);
        vehicle.setVehType(vtype);
        vehicle.setBrand(vbrand);
        vehicle.setMprice(price);
        vehicle.setUserID(userid);

        CustomerDAO customerDAO = new CustomerDAO();
        int result = customerDAO.registerVehicle(vehicle);
        List<Vehicle> allVehicle = customerDAO.retrieveAllVehicle(userid);

        if (result > 0) {
            request.setAttribute("username", userid);
            request.setAttribute("Vehicles", allVehicle);
            request.setAttribute("theMessage", "<p class='success pt pb'>Register successful.</p>");
            request.getRequestDispatcher("task2/customer-list-vehicle.jsp").forward(request, response);
        } else {
            request.setAttribute("theMessage", "<p class='error pt pb'>Register failed.</p>");
            request.getRequestDispatcher("task2/customer-register-vehicle.jsp").forward(request, response);
        }
    }

    //LIST ALL VEHICLE
    private void listVehicle(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        int userid = Integer.parseInt(request.getParameter("userID"));

        CustomerDAO customerDAO = new CustomerDAO();
        List<Vehicle> allVehicle = customerDAO.retrieveAllVehicle(userid);

        request.setAttribute("username", userid);
        request.setAttribute("Vehicles", allVehicle);
        request.getRequestDispatcher("task2/customer-list-vehicle.jsp").forward(request, response);
    }

    //LOAD VEHICLE
    private void loadVehicle(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        int vehID = Integer.parseInt(request.getParameter("vehicleID"));

        CustomerDAO cdao = new CustomerDAO();
        Vehicle vehicle1 = cdao.retrieveOneVehicle(vehID);

        request.setAttribute("vehicle", vehicle1);
        request.getRequestDispatcher("task2/customer-update-vehicle.jsp").forward(request, response);
    }

    //UPDATE VEHICLE
    private void updateVehicle(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        String vplat = request.getParameter("plat");
        String vtype = request.getParameter("vehType");
        String vbrand = request.getParameter("brand");
        double price = Double.parseDouble(request.getParameter("mprice"));
        int userid = Integer.parseInt(request.getParameter("userID"));
        int vehID = Integer.parseInt(request.getParameter("vehID"));

        Vehicle vehicle = new Vehicle();
        vehicle.setPlat(vplat);
        vehicle.setVehType(vtype);
        vehicle.setBrand(vbrand);
        vehicle.setMprice(price);
        vehicle.setUserID(userid);
        vehicle.setId(vehID);

        CustomerDAO customerDAO = new CustomerDAO();
        int result = customerDAO.updateVehicle(vehicle);
        List<Vehicle> allVehicle = customerDAO.retrieveAllVehicle(userid);

        if (result > 0) {
            request.setAttribute("username", userid);
            request.setAttribute("Vehicles", allVehicle);
            request.setAttribute("theMessage", "<p class='success pt pb'>Update successful.</p>");
            request.getRequestDispatcher("task2/customer-list-vehicle.jsp").forward(request, response);
        } else {
            request.setAttribute("theMessage", "<p class='error pt pb'>Failed to update.</p>");
            request.getRequestDispatcher("task2/customer-update-vehicle.jsp").forward(request, response);
        }
    }

    //DELETE VEHICLE
    private void deleteVehicle(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        int vehID = Integer.parseInt(request.getParameter("vehicleID"));

        CustomerDAO dao = new CustomerDAO();
        Vehicle vehicle = dao.retrieveOneVehicle(vehID);

        int userid = vehicle.getUserID();
        int result = dao.deleteVehicle(vehID);

        List<Vehicle> allVehicle = dao.retrieveAllVehicle(userid);

        if (result > 0) {
            request.setAttribute("username", userid);
            request.setAttribute("Vehicles", allVehicle);
            request.setAttribute("theMessage", "<p class='success pt pb'>Delete successful.</p>");
            request.getRequestDispatcher("task2/customer-list-vehicle.jsp").forward(request, response);
        } else {
            request.setAttribute("username", userid);
            request.setAttribute("Vehicles", allVehicle);
            request.setAttribute("theMessage", "<p class='error pt pb'>Failed to delete record.</p>");
            request.getRequestDispatcher("task2/customer-list-vehicle.jsp").forward(request, response);
        }
    }

    //REQUEST QUOTATION
    private void listInsurance(HttpServletRequest request, HttpServletResponse response)
            throws Exception {

        int userid = Integer.parseInt(request.getParameter("userID"));

        CustomerDAO customerDAO = new CustomerDAO();
        List<Vehicle> allVehicle = customerDAO.retrieveAllVehicle(userid);

        request.setAttribute("username", userid);
        request.setAttribute("Vehicles", allVehicle);
        request.getRequestDispatcher("task2/request-quotation.jsp").forward(request, response);
    }

    //GET QUOTATION
    private void loadQuotation(HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        PrintWriter out = response.getWriter();

        try {
            String plat = request.getParameter("plat");
            int coverage = Integer.parseInt(request.getParameter("coverage"));
            int discount = Integer.parseInt(request.getParameter("discount"));
            String cov_type =  "";
            double ncd = 0;
            double total;
            double total_sst;
            double sst = 0.06;

            CustomerDAO dao = new CustomerDAO();
            Vehicle vehicle = dao.marketPrice(plat);

            if (coverage == 1) {
                cov_type = "Comprehensive";
                switch (discount) {
                    case 10:
                        ncd = 0.038 * vehicle.getMprice();
                        break;
                    case 25:
                        ncd = 0.030 * vehicle.getMprice();
                        break;
                    case 35:
                        ncd = 0.024 * vehicle.getMprice();
                        break;
                    case 55:
                        ncd = 0.018 * vehicle.getMprice();
                        break;
                    default:
                        break;
                }
            }
            if (coverage == 2) {
                cov_type = "Third Party";
                switch (discount) {
                    case 10:
                        ncd = 0.033 * vehicle.getMprice();
                        break;
                    case 25:
                        ncd = 0.025 * vehicle.getMprice();
                        break;
                    case 35:
                        ncd = 0.018 * vehicle.getMprice();
                        break;
                    case 55:
                        ncd = 0.012 * vehicle.getMprice();
                        break;
                    default:
                        break;
                }
            }

            total_sst = ncd * sst;
            total = ncd + total_sst;

            request.setAttribute("plat", vehicle.getPlat());
            request.setAttribute("cov", cov_type);
            request.setAttribute("discount", discount);
            request.setAttribute("mprice", vehicle.getMprice());
            request.setAttribute("ncd", ncd);
            request.setAttribute("sst", total_sst);
            request.setAttribute("total", total);
            request.getRequestDispatcher("task2/get-quotation.jsp").forward(request, response);
        } catch (Exception e) {
            out.print(e.getMessage());
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

}
