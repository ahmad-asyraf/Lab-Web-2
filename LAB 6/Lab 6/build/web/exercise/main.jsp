<%-- 
    Document   : main
    Created on : 10 May 2022, 6:02:47 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise - Main Profile</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String userSession = (String)session.getAttribute("username");
            
            if(userSession == null) {
                response.sendRedirect("login.jsp");
            }
            else {
                Class.forName("com.mysql.jdbc.Driver");
            
                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");

                Statement stmt = con.createStatement();
                String sql = "SELECT * FROM userprofile WHERE username='"+userSession+"'";
                ResultSet rs = stmt.executeQuery(sql);
                
                while(rs.next()) {
                    out.print("<h1>Welcome, " + rs.getString(1) + "</h1>" 
                    + "<div class='kotak'>"
                    + "Username: " + rs.getString(1) + "<br>" 
                    + "First name: " + rs.getString(3) + "<br>"
                    + "Last name: " + rs.getString(4) + " "
                    + "</div>");
                }
            }
        %>
        <p class="url-back"><a href="logout.jsp">Logout</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>