<%-- 
    Document   : request-quotation
    Created on : 25 May 2022, 2:42:59 pm
    Author     : Asyraf
--%>

<%
    //GET USER SESSION
    Customer customer = (Customer) session.getAttribute("username");
    //CHECK IF USER SESSION NULL BACK TO LOGIN PAGE
    if (customer == null) {
        request.setAttribute("message", "<p class='error'>Session expired! Please login.</p>");
        request.getRequestDispatcher("/task2/login.jsp").forward(request, response);
    }
%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lab8.task2.Vehicle"%>
<%@page import="com.lab8.task2.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LAB 8 - TASK 2</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <h1>Insurance Management System</h1>
        <div class="kotak text-center">
            <div class="user-header">
                <b> Welcome <%= customer.getName()%> </b><a href="<%= request.getContextPath()%>/task2/logout.jsp">[ Sign Out ]</a>
            </div>
            <nav class="navbar">
                <a href="<%= request.getContextPath()%>/task2/customer-dashboard.jsp">Manage Profile</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-vehicle&userID=<%= customer.getId()%>">Manage Vehicle</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-insurance&userID=<%= customer.getId()%>">Insurance Quotation</a>
            </nav>
            <main class="">
                <h2>Request for Insurance Quotation</h2>
                <form action="<%= request.getContextPath()%>/CustomerController" method="POST">
                    <div class="form-group">
                        <label class="text-left">Select your vehicle</label>:
                        <select name="plat" class="uppercase" required="on">
                            <%
                                ArrayList<Vehicle> allVehicle = (ArrayList<Vehicle>) request.getAttribute("Vehicles");
                                for (int i = 0; i < allVehicle.size(); i++) {
                            %>
                            <option value="<%= allVehicle.get(i).getPlat()%>"><%= allVehicle.get(i).getPlat()%></option>
                            <%  }%>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Coverage Type</label>:
                        <select name="coverage">
                            <option value="1">Comprehensive</option>
                            <option value="2">Third Party</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label class="text-left">No. Claim Discount (NCD)</label>:
                        <select name="discount">
                            <option value="10">10%</option>
                            <option value="25">25%</option>
                            <option value="35">35%</option>
                            <option value="55">55%</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="cmd" value="get-quotation">
                        <button type="submit">Get Insurance Quotation</button>
                    </div>
                </form>
            </main>
        </div>
    </body>
</html>
