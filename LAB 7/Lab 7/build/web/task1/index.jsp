<%-- 
    Document   : index
    Created on : 22 May 2022, 8:51:02 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TASK 1 - CRUD</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>TASK 1</h1>
        <jsp:forward page="../UserControllers?action=listUser" />
    </body>
</html>
