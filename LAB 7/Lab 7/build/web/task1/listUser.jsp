<%-- 
    Document   : listUser
    Created on : 22 May 2022, 11:39:55 AM
    Author     : PC 48
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>TASK 1 - CRUD LIST USER</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>List User</h1>
        <table>
            <tr>
                <th>User ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th colspan="2">Action</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td><c:out value="${user.userID}"/></td>
                    <td><c:out value="${user.fName}"/></td>
                    <td><c:out value="${user.lName}"/></td>
                    <td><a href="<%= request.getContextPath() %>/UserControllers?action=edit&userID=<c:out value="${user.userID}"/>">Update</a></td>
                    <td><a href="<%= request.getContextPath() %>/UserControllers?action=delete&userID=<c:out value="${user.userID}"/>">Delete</a></td>
                </tr>
            </c:forEach>
        </table>
        <p class="url-back">
            <a href="<%= request.getContextPath() %>/index.html">back</a> | 
            <a href="<%= request.getContextPath() %>/UserControllers?action=insert">Add User</a>
        </p>
    </body>
</html>
