<%-- 
    Document   : notificationRegister
    Created on : 24 May 2022, 1:04:33 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>EXERCISE - STUDENT REGISTRATION</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Notification Register</h1>
        <%
            String uname = (String)session.getAttribute("username");
            
            Class.forName("com.mysql.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/csf3209";
            Connection con = DriverManager.getConnection(url, "root", "");
            
            if(uname != null || uname != "") {
                Statement stmt = con.createStatement();
                String sql = "SELECT * FROM userprofiles WHERE username='" + uname + "'";
                ResultSet rs = stmt.executeQuery(sql);

                while(rs.next())
                {
        %>
                <div class="success">Register successful</div>
                <div class="kotak mt">
                    <div class="form-group">
                        <label>Username</label>: <%= rs.getString(1) %>
                    </div>
                    <div class="form-group">
                        <label>IC No</label>: <%= rs.getString(2) %>
                    </div>
                    <div class="form-group">
                        <label>First Name</label>: <%= rs.getString(3) %>
                    </div>
                </div>
        <%
                }
            }
            else {
                out.println("<p class='error'>Session ended!</p>");
            }
            con.close();
        %>
        <%@include file="index.jsp" %>
    </body>
</html>
