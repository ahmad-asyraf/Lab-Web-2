<%-- 
    Document   : process-view-student
    Created on : 25 May 2022, 1:39:10 am
    Author     : Asyraf
--%>

<%@page import="java.util.List"%>
<%@page import="com.lab8.task1.Student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LAB 8 - TASK 1</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>LIST STUDENTS</h1>
        <table class="text-center">
            <tr>
                <th>ID</th>
                <th>Matric</th>
                <th>Name</th>
                <th>Actions</th>
            </tr>
            <%
                if(request.getAttribute("theMessage") != null) {
                    String message = (String)request.getAttribute("theMessage");
                    out.println("<script type='javascript'>");
                    out.println("alert('" + message + "')");
                    out.println("</script>");
                }
                List<Student> allStudent = (List<Student>)request.getAttribute("theStudents");
                for(int i = 0; i < allStudent.size(); i++) 
                {
            %>
                    <tr>
                    <td> <%= allStudent.get(i).getId() %></td>
                    <td> <%= allStudent.get(i).getMatric() %></td>
                    <td> <%= allStudent.get(i).getName() %></td>
                    <td>
                    <a href="<%= request.getContextPath() %>/StudentServlet?command=LOAD&id=<%= allStudent.get(i).getId() %>">Update</a> |
                    <a href="<%= request.getContextPath() %>/StudentServlet?command=DELETE&id=<%= allStudent.get(i).getId() %>" onclick="return confirm('Are you sure you want to delete?')">Delete</a>
                    </td>
                    </tr>
            <%
                }
            %>
        </table>
        <p class="url-back">
            <a href="../Lab_8/index.html">back</a> | 
            <input type="button" value="Add Student" 
            onclick="window.location.href='task1/add-student-form.jsp'; return false;">
        </p>
    </body>
</html>
