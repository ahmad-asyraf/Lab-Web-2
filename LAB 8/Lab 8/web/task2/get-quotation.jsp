<%-- 
    Document   : get-quotation
    Created on : 25 May 2022, 2:49:11 pm
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
                <b> Welcome <%= customer.getName()%> </b><a href="<%= request.getContextPath()%>
                                                            /task2/logout.jsp">[ Sign Out ]</a>
            </div>
            <nav class="navbar">
                <a href="<%= request.getContextPath()%>/task2/customer-dashboard.jsp">Manage Profile</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-vehicle&userID=
                   <%= customer.getId()%>">Manage Vehicle</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-insurance&userID=
                   <%= customer.getId()%>">Insurance Quotation</a>
            </nav>
            <main class="">
                <h2>The Insurance Quotation</h2>
                <div class="form-group">
                    <label class="text-left">Plat Number</label>:
                    <label class="text-left uppercase"><%= request.getAttribute("plat")%></label>
                </div>
                <div class="form-group">
                    <label class="text-left">Coverage</label>:
                    <label class="text-left"><%= request.getAttribute("cov")%></label>
                </div>
                <div class="form-group">
                    <label class="text-left">NCD</label>:
                    <label class="text-left"><%= request.getAttribute("discount")%>%</label>
                </div>
                <div class="form-group">
                    <label class="text-left">Market Price (RM)</label>:
                    <label class="text-left">
                        <% double mprice = (double) request.getAttribute("mprice"); %>
                        <fmt:formatNumber type="currency" currencySymbol="RM " value="${mprice}"/>
                    </label>
                </div>
                <hr>
                <div class="form-group">
                    <label class="text-left">Insurance Amount (RM)</label>:
                    <label class="text-left">
                        <% double ncd = (double) request.getAttribute("ncd"); %>
                        <fmt:formatNumber type="currency" currencySymbol="RM " value="${ncd}"/>
                    </label>
                </div>
                <div class="form-group">
                    <label class="text-left">6% SST (RM)</label>:
                    <label class="text-left">
                        <% double sst = (double) request.getAttribute("sst"); %>
                        <fmt:formatNumber type="currency" currencySymbol="RM " value="${sst}"/>
                    </label>
                </div>
                <div class="form-group">
                    <label class="text-left">TOTAL (Include 6% SST)</label>:
                    <label class="text-left">
                        <% double total = (double) request.getAttribute("total");%>
                        <fmt:formatNumber type="currency" currencySymbol="RM " value="${total}"/>
                    </label>
                </div>
            </main>
        </div>
    </body>
</html>
