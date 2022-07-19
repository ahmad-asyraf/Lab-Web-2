<%-- 
    Document   : process-update-student
    Created on : 25 May 2022, 2:48:05 am
    Author     : Asyraf
--%>

<%@page import="com.lab8.task1.Student"%>
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
        <h1>UPDATE STUDENTS</h1>
        <%
            Student student = (Student)request.getAttribute("theStudent");
        %>
        <div class="kotak">
            <form action="<%= request.getContextPath() %>/StudentServlet" method="GET">
                <fieldset>
                    <legend>Update Student</legend>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="name" value="<%= student.getName() %>" maxlength="50" required="on">
                        <input type="hidden" name="hidid" value="<%= student.getId() %>">
                        <input type="hidden" name="command" value="UPDATE">
                    </div>
                    <div class="form-group">
                        <label>Matric</label>:
                        <input type="text" name="matric" value="<%= student.getMatric() %>" maxlength="10" required="on">
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Save</button>
                        <button type="reset" onclick="window.location.href='<%= request.getContextPath() %>/StudentServlet?command=LIST'; return false;">Cancel</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <p class="url-back">
            <a href="../Lab_8/index.html">back</a> | 
            <a href="<%= request.getContextPath() %>/StudentServlet">Student List</a>
        </p>
    </body>
</html>
