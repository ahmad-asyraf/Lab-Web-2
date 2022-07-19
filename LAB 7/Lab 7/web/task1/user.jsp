<%-- 
    Document   : user
    Created on : 22 May 2022, 11:50:25 AM
    Author     : PC 48
--%>


<%@page import="com.model.User" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TASK 1 - CRUD ADD USER</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>New Record</h1>
        <div class="kotak">
            <form name="frmAddUser" action="UserControllers" method="POST">
                <div class="form-group">
                    <label>User ID</label>:
                    <input type="text" name="userID" required="on">
                </div>
                <div class="form-group">
                    <label>First Name</label>:
                    <input type="text" name="fName" required="on">
                </div>
                <div class="form-group">
                    <label>Last Name</label>:
                    <input type="text" name="lName" required="on">
                    <input type="hidden" name="action" value="insert">
                </div>
                <div class="form-group text-center">
                    <button type="submit">Submit</button>
                    <button type="reset">Cancel</button>
                </div>
            </form>
        </div>
        <p class="url-back"><a href="UserControllers?action=listUser">back</a></p>
    </body>
</html>