<%-- 
    Document   : customer-register-vehicle
    Created on : 25 May 2022, 2:13:32 pm
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
            <main class="">
                <h2>Register Vehicle</h2>
                <form action="<%= request.getContextPath()%>/CustomerController" method="POST">
                    <div class="form-group">
                        <label class="text-left">Plat Number</label>:
                        <label class="text-left">
                            <input type="text" name="plat" class="uppercase" maxlength="9" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Type</label>:
                        <label class="text-left">
                            <input type="radio" name="vehType" value="Car"> Car &nbsp;&nbsp;&nbsp;
                            <input type="radio" name="vehType" value="Motorcycle"> Motorcycle
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Brand</label>:
                        <label class="text-left">
                            <select name="brand">
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
                            <input type="text" name="mprice" maxlength="9" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="userID" value="<%= customer.getId()%>">
                        <input type="hidden" name="cmd" value="registerVehicle">
                        <button type="submit">Register</button>
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
