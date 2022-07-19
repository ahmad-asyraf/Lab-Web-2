<%-- 
    Document   : doLogin
    Created on : 10 May 2022, 4:26:51 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise - Check Login</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            int result;
            String uname = request.getParameter("username");
            String pass = request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            
            String db_url = "jdbc:mysql://localhost:3306/csf3209";
            Connection con = DriverManager.getConnection(db_url, "root", "");
            
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM userprofile WHERE "
                    + "username='" + uname + "' AND pass=md5('" + pass + "')";
            ResultSet rs = stmt.executeQuery(sql);
            
            if(rs.next()) {
                session.setAttribute("username", uname);
                response.sendRedirect("main.jsp");
            }
            else {
                out.print("<h1>Login Validation</h1>");
                out.print("<p class='error'>Invalid username or password..!</p><br>");
                out.print("<p class='text-center'>Redirect to login page in 5 secs...</p>");
                response.setHeader("Refresh", "5;url=login.jsp");
            }
        %>
    </body>
</html>