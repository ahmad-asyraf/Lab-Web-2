<%-- 
    Document   : studentRegister
    Created on : 23 May 2022, 1:10:27 pm
    Author     : Asyraf
--%>

<%@page import="com.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EXERCISE - STUDENT REGISTRATION</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Student Registration</h1>
        <div class="kotak">
            <form action="confirmRegister.jsp" method="POST">
                <div class="form-group">
                    <label>Username</label>:
                    <input type="text" name="username" size="15" maxlength="15" required="on">
                </div>
                <div class="form-group">
                    <label>IC No</label>:
                    <input type="text" name="icno" size="15" maxlength="15" required="on">
                </div>
                <div class="form-group">
                    <label>First Name</label>:
                    <input type="text" name="fName" size="50" maxlength="50" required="on">
                </div>
                <div class="form-group text-center">
                    <button type="submit">Submit</button>
                    <button type="reset">Reset</button>
                </div>
            </form>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>
