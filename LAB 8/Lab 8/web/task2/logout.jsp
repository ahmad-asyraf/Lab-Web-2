<%-- 
    Document   : logout
    Created on : 26 May 2022, 3:06:23 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign out</title>
    </head>
    <body>
        <%
            session.invalidate();
            request.setAttribute("message", "<p class='success pt pb'>Logout successful</p>");
            request.getRequestDispatcher("/task2/login.jsp").include(request, response);
        %>
    </body>
</html>
