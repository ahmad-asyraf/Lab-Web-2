<%-- 
    Document   : forwardInfo
    Created on : 18 Apr 2022, 12:34:06 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action (Forward)</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="kotak">
        <% 
            String name = request.getParameter("uName");
            String email = request.getParameter("email");
            String nationality = request.getParameter("nationality");
            String bg = request.getParameter("background");
            
            if(name != null) {
        %>
                <p><%= name %></p>
                <p><%= email %></p>
                <p><%= nationality %></p>
                <p><%= bg %></p>
        <%  
            out.print("Today is: " + java.util.Calendar.getInstance().getTime());
            }
        %>
        </div>
        <p class="url-back">
            <a href="index.html">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>
