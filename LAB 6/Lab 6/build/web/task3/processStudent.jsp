<%-- 
    Document   : processStudent
    Created on : 8 May 2022, 11:28:35 am
    Author     : Asyraf
--%>

<%@page language="java" %>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 3</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Task 3</h1>
        <jsp:useBean id="myStudent" class="lab6.task3.Student" scope="request"/>
        <jsp:setProperty name="myStudent" property="*"/>
        <div class="kotak">
            <%
                int result;

                Class.forName("com.mysql.jdbc.Driver");
                out.println("Step 1: MySQL driver loaded..! <br>");

                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");
                
                out.println("Step 2: Database is connected..! <br>");
                out.println("Step 3: Prepared Statements created..! <br>");
                
                String sql = "INSERT INTO Student(stuId,stuName,stuProgram,address) VALUES(?,?,?,?)";
                out.println("SQL Query: " + sql + "<br>");

                PreparedStatement ps = con.prepareStatement(sql);
                out.println("Step 4: Perform insertion of record..! <br>");
                ps.setString(1, myStudent.getStuId());
                ps.setString(2, myStudent.getStuName());
                ps.setString(3, myStudent.getProgram());
                ps.setString(4, myStudent.getAddress());

                result = ps.executeUpdate();
                if(result > 0) 
                {
            %>
                Record successfully added into Student's table..!
                <p>Record with student id <%= myStudent.getStuId() %> successfully created..!</p>
                <fieldset>
                    <legend>Details</legend>
                    <div class="form-group">
                        <label>Student ID</label>: <%= myStudent.getStuId() %>
                    </div>
                    <div class="form-group">
                        <label>Name</label>: <%= myStudent.getStuName() %>
                    </div>
                    <div class="form-group">
                        <label>Program</label>: <%= myStudent.getProgram() %>
                    </div>
                    <div class="form-group">
                        <label>Address</label>: <%= myStudent.getAddress() %>
                    </div>
                </fieldset>
            <%
                }

                out.println("Step 5: Close database connection..! <br>");
                con.close();
                out.println("Database connection is closed..!");
            %>
        </div>
        <p class="url-back">
            <a href="insertStudent.jsp">back</a> | <a href="displayStudent.jsp"> View List</a> | 
            &copy;2022 - Asyraf S60494</p>
    </body>
</html>