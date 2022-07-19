<%-- 
    Document   : customer-list-vehicle
    Created on : 25 May 2022, 12:49:30 pm
    Author     : Asyraf
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    //GET USER SESSION
    Customer customer = (Customer) session.getAttribute("username");
    //CHECK IF USER SESSION NULL BACK TO LOGIN PAGE
    if (customer == null) {
        request.setAttribute("message", "<p class='error'>Session expired! Please login.</p>");
        request.getRequestDispatcher("/task2/login.jsp").forward(request, response);
    }
%>
<%@page import="com.lab8.task2.Customer"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.lab8.task2.Vehicle"%>
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
            <%
                ArrayList<Vehicle> allVehicle = (ArrayList<Vehicle>) request.getAttribute("Vehicles");
                if (allVehicle.isEmpty()) {
            %>
            <%-- IF USER DOESN'T HAVE VEHICLE RECORDED --%>
            <main class="">
                <h2>Your Vehicle Information</h2>
                <p>No vehicle has been registered yet.</p>
                <button type="submit" onclick="window.location.href = '<%= request.getContextPath()%>/task2/customer-register-vehicle.jsp'; return false;">Add New Vehicle</button>
            </main>
            <%-- IF USER HAVE VEHICLE RECORDED --%>
            <%  }
                if (!allVehicle.isEmpty()) { %>
            <h2>Your Vehicle Information</h2>
            
        </div>
        <table class="mt mb text-center">
            <tr>
                <th>Plat Number</th>
                <th>Type</th>
                <th>Brand</th>
                <th>Market Price (RM)</th>
                <th>Actions</th>
            </tr>
            <%
                for (int i = 0; i < allVehicle.size(); i++) {
            %>
            <tr>
                <td class="uppercase"><%= allVehicle.get(i).getPlat()%></td>
                <td><%= allVehicle.get(i).getVehType()%></td>
                <td><%= allVehicle.get(i).getBrand()%></td>
                <td><% double mprice = (double)allVehicle.get(i).getMprice();%><fmt:formatNumber type="currency" currencySymbol="" value="<%= mprice %>"/></td>
                <td>
                    <a href="<%= request.getContextPath()%>/CustomerController?cmd=load-vehicle&vehicleID=<%= allVehicle.get(i).getId()%>">Update</a> | 
                    <a href="<%= request.getContextPath()%>/CustomerController?cmd=delete-vehicle&vehicleID=<%= allVehicle.get(i).getId()%>" onclick="return confirm('Are you sure to delete?')">Delete</a>
                </td>
            </tr>
            <%  }%>
        </table>
        <div class="form-group text-center">
            <button type="submit" onclick="window.location.href = '<%= request.getContextPath()%>/task2/customer-register-vehicle.jsp'; return false;">Add New Vehicle</button>
        </div>
        <%  }%>
        <% if (request.getAttribute("theMessage") != null) {%>
            <%= request.getAttribute("theMessage")%>
            <%  }%>
    </body>
</html>
