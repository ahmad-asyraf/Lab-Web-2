<%-- 
    Document   : AttributeIsSet
    Created on : 1 Apr 2022, 10:55:00 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Implicit JSP</title>
        <style>
            html, body { font-family: poppins; }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
        </style>
    </head>
    <body>
        <% session.setAttribute("user", "Asyraf");%>
        <a href="GetAttribute.jsp">Click here to get user name</a><br>
        <a href="MathematicsOperations.jsp">Result of mathematics operations</a>
        <p>&copy; Asyraf - S60494, 2022 | <a href="index.jsp">back</a></p>
    </body>
</html>
