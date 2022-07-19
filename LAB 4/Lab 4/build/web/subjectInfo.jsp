<%-- 
    Document   : subjectInfo
    Created on : 18 Apr 2022, 11:55:15 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Calling subjectInfo.jsp page</h1>
        <div class="kotak">
            <p>Code = <%= request.getParameter("code") %></p>
            <p>Subject = <%= request.getParameter("subject") %></p>
            <p>Credit = <%= request.getParameter("credit") %></p>
        </div>
    </body>
</html>
