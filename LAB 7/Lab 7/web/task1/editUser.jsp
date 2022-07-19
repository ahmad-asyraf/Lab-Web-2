<%-- 
    Document   : editUser
    Created on : 22 May 2022, 4:50:06 pm
    Author     : Asyraf
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TASK 1 - CRUD UPDATE USER</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>UPDATE USER</h1>
        <div class="kotak">
            <form name="frmEditUser" action="UserControllers" method="POST">
                <div class="form-group">
                    <label>User ID</label>:
                    <input type="text" name="userID" value="<c:out value="${user.userID}"/>" readonly="on">
                    <br><span class="form-text">non-editable*</span>
                </div>
                <div class="form-group">
                    <label>First Name</label>:
                    <input type="text" name="fName" value="<c:out value="${user.fName}"/>">
                </div>
                <div class="form-group">
                    <label>Last Name</label>:
                    <input type="text" name="lName" value="<c:out value="${user.lName}"/>">
                    <input type="hidden" name="action" value="edit">
                </div>
                <div class="form-group text-center">
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
    </body>
</html>
