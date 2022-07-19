<%-- 
    Document   : logout
    Created on : 10 May 2022, 8:07:39 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise - Logout</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <% session.invalidate(); %>
        <jsp:forward page="login.jsp"/>
    </body>
</html>
