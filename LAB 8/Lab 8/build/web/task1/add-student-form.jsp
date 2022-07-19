<%-- 
    Document   : add-student-form
    Created on : 25 May 2022, 1:37:28 am
    Author     : Asyraf
--%>

<%@page import="com.lab8.task1.Student" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LAB 8 - TASK 1</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="<%= request.getContextPath() %>/css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>School of Informatics and Applied Mathematics</h1>
        <div class="kotak">
            <form action="<%= request.getContextPath() %>/StudentServlet" method="POST">
                <fieldset>
                    <legend>Add Student Form</legend>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="name" maxlength="50" required="on">
                        <input type="hidden" name="command" value="ADD">
                    </div>
                    <div class="form-group">
                        <label>Matric</label>:
                        <input type="text" name="matric" maxlength="10" required="on">
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Save</button>
                        <button type="reset">Cancel</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <p class="url-back">
            <a href="<%= request.getContextPath() %>/index.html">back</a> | 
            <a href="<%= request.getContextPath() %>/StudentServlet">Student List</a>
        </p>
    </body>
</html>
