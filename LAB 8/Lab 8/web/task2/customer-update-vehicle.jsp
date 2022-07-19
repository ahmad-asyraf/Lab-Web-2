<%-- 
    Document   : customer-update-vehicle
    Created on : 25 May 2022, 2:20:57 pm
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
                <% Vehicle vehicle = (Vehicle) request.getAttribute("vehicle");%>
                <b> Welcome <%= customer.getName()%> </b><a href="<%= request.getContextPath()%>/task2/logout.jsp">[ Sign Out ]</a>
            </div>
            <nav class="navbar">
                <a href="<%= request.getContextPath()%>/task2/customer-dashboard.jsp">Manage Profile</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-vehicle&userID=<%= customer.getId()%>">Manage Vehicle</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-insurance&userID=<%= customer.getId()%>">Insurance Quotation</a>
            </nav>
            <main class="">
                <h2>Update Vehicle</h2>
                <form action="<%= request.getContextPath()%>/CustomerController" method="POST">
                    <div class="form-group">
                        <label class="text-left">Plat Number</label>:
                        <label class="text-left">
                            <input type="text" name="plat" class="uppercase" value="<%= vehicle.getPlat()%>" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Type</label>:
                        <label class="text-left">
                            <% if (vehicle.getVehType().equalsIgnoreCase("Car")) {%>
                            <input type="radio" name="vehType" value="Car" required="on" checked="on"> Car &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="vehType" value="Motorcycle" required="on"> Motorcycle
                            <% } else if (vehicle.getVehType().equalsIgnoreCase("Motorcycle")) {%>
                            <input type="radio" name="vehType" value="Car" required="on"> Car &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="vehType" value="Motorcycle" required="on" checked="on"> Motorcycle
                            <% }%>
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Brand</label>:
                        <label class="text-left">
                            <select name="brand" required="on">
                                <option>Yamaha</option>
                                <option>Honda</option>
                                <option>Kawasaki</option>
                                <option>Harley-Davidson</option>
                                <option>Perodua</option>
                                <option>Proton</option>
                                <option>Toyota</option>
                                <option>Nissan</option>
                                <option>Volkswagen</option>
                            </select>
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Market Price (RM)</label>:
                        <label class="text-left">
                            <input type="text" name="mprice" value="<fmt:formatNumber type="currency" currencySymbol="" value="<%= vehicle.getMprice()%>"/>" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="userID" value="<%= vehicle.getUserID()%>">
                        <input type="hidden" name="vehID" value="<%= vehicle.getId()%>">
                        <input type="hidden" name="cmd" value="UPDATEVEHICLE">
                        <button type="submit">Update Vehicle</button>
                        <button type="reset" onclick="window.location.href = '<%= request.getContextPath()%>/CustomerController?cmd=list-vehicle&userID=<%= customer.getId()%>';">Cancel</button>
                    </div>
                </form>
            </main>
            <% if (request.getAttribute("theMessage") != null) {%>
            <%= request.getAttribute("theMessage")%>
            <%  }%>
        </div>
    </body>
</html>
