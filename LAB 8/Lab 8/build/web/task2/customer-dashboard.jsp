<%-- 
    Document   : customer-dashboard
    Created on : 25 May 2022, 11:16:57 am
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
                <h2>Profile</h2>
                <div class="form-group">
                    <label class="text-left">Email</label>: 
                    <label class="text-left"><%= customer.getEmail()%></label>
                </div>
                <div class="form-group">
                    <label class="text-left">Full Name</label>:
                    <label class="text-left"><%= customer.getName()%></label>
                </div>
                <div class="form-group">
                    <label class="text-left">IC Number:</label>:
                    <label class="text-left"><%= customer.getIcno()%></label>
                </div>
                <div class="form-group">
                    <button type="submit" onclick="window.location.href = '<%= request.getContextPath()%>/CustomerController?cmd=LOADUSER&userID=<%= customer.getId()%>';">Update</button>
                </div>
            </main>
        </div>
    </body>
</html>
