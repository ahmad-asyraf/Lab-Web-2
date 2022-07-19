<%-- 
    Document   : useJavaObject
    Created on : 1 Apr 2022, 9:07:40 am
    Author     : Asyraf
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java's object in JSP page</title>
        <style>
            html, body { font-family: poppins; }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
        </style>
    </head>
    <body>
        <h1>Display Date and perform auto refresh header.</h1>
        
        <%
            Date todayDate = new Date();
            out.print("<p>Current date and time is " + todayDate.toString() + "</p>");
        
            //Set refresh, autoload time as 5 seconds
            response.setIntHeader("Refresh", 5);
        %>
        <p>&copy; Asyraf - S60494, 2022 | <a href="index.jsp">back</a></p>
    </body>
</html>
