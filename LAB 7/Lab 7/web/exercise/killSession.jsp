<%-- 
    Document   : killSession
    Created on : 24 May 2022, 5:01:45 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            session.invalidate();
            request.getRequestDispatcher("../exercise/notificationRegister.jsp").forward(request, response);
        %>
    </body>
</html>
