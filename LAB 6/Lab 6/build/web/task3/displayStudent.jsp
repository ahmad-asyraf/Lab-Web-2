<%-- 
    Document   : displayStudent
    Created on : 8 May 2022, 11:28:48 am
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 3 - Display Student</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Display Student</h1>
        <%
            int i = 1;
            
            Class.forName("com.mysql.jdbc.Driver");
            String db_url = "jdbc:mysql://localhost:3306/csf3209";
            Connection con = DriverManager.getConnection(db_url, "root", "");
            
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Student";
            ResultSet rs = stmt.executeQuery(sql);
            
            out.print("<table>"
                    + "<tr>"
                    + "<th>No</th>"
                    + "<th>Student ID</th>"
                    + "<th>Name</th>"
                    + "<th>Program</th>"
                    + "<th>Address</th>"
                    + "</tr>");
            while(rs.next()) {
                out.print("<tr>");
                out.print("<td>" + i++ + "</td>");
                out.print("<td>" + rs.getString(1) + "</td>");
                out.print("<td>" + rs.getString(2) + "</td>");
                out.print("<td>" + rs.getString(3) + "</td>");
                out.print("<td>" + rs.getString(4) + "</td>");
                out.print("</tr>");
            }
            out.print("</table>");
            con.close();
        %>
        <p class="url-back"><a href="../index.html">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>