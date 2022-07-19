<%-- 
    Document   : login
    Created on : 25 May 2022, 11:06:51 am
    Author     : Asyraf
--%>

<%@page import="com.lab8.task2.Customer" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LAB 8 - TASK 2</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <h1>Insurance Management System</h1>
        <div class="kotak text-center mb">
            <h2>Sign in</h2>
            <form action="<%= request.getContextPath() %>/CustomerController" method="POST">
                <div class="form-group">
                    <label class="text-left">Email</label>:
                    <input type="text" name="email" maxlength="50" required="on">
                    <input type="hidden" name="cmd" value="LOGIN">
                </div>
                <div class="form-group">
                    <label class="text-left">Password</label>:
                    <input type="password" name="password" maxlength="20" required="on">
                </div>
                <div class="form-group">
                    <button type="submit">Sign in</button>
                </div>
                <p>Doesn't have an account? <a href="<%= request.getContextPath() %>/task2/index.jsp">Register now</a></p>
                
            </form>
        </div>
                <% if (request.getAttribute("message") != null) {%>
                <%= request.getAttribute("message")%>
                <%  }%>
    </body>
</html>
