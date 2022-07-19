<%-- 
    Document   : SampleInsertionRecord
    Created on : 8 May 2022, 7:50:44 am
    Author     : Asyraf
--%>

<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 1 - Sample Insertion Records</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Lab 6 - Task 1 Sample Insertion Records into MySQL through JSP's page</h1>
        <div class="kotak">
            <%
                int result;

                Class.forName("com.mysql.jdbc.Driver");
                out.println("Step 1: MySQL driver loaded..!");
            %> 
            <br>
            <%
                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");
                out.println("Step 2: Database is connected..!");
            %>
            <br>
            <%
                out.println("Step 3: Prepared Statements created..!");
                String sql = "INSERT INTO FirstTable VALUE(?)";
                PreparedStatement ps = con.prepareStatement(sql);
            %>
            <br>
            <%
                out.println("Step 4: Perform Insertion of record..!");
                String name = "Welcome to access MySQL database with JSP..!";
                ps.setString(1, name);

                result = ps.executeUpdate();

                if(result > 0) {
            %>
            <br>
            <%
                out.println("Step 5: Close database connection..!");
                out.println (" ");
                out.println("Database connection is closed..!");
                out.print("<p>" + "The record: (" + name + ") is successfully created..!"
                + "</p>");
                }
                con.close();
            %>
        </div>
        <p class="url-back"><a href="../index.html">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>
