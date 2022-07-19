<%-- 
    Document   : processUser
    Created on : 10 May 2022, 4:17:18 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise - Process User</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Process User</h1>
            <%
                int result;
                String uname = request.getParameter("username");
                String fname = request.getParameter("fname");
                String lname = request.getParameter("lname");
                String pass = request.getParameter("password");

                Class.forName("com.mysql.jdbc.Driver");

                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");

                Statement stmt = con.createStatement();
                String sql = "SELECT * FROM userprofile WHERE username='"+uname+"'";
                ResultSet rs = stmt.executeQuery(sql);

                if(rs.next() != true) {
                    PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO userprofile VALUES(?,md5(?),?,?)");
                    ps.setString(1, uname);
                    ps.setString(2, pass);
                    ps.setString(3, fname);
                    ps.setString(4, lname);

                    result = ps.executeUpdate();
                    out.print("Register Successfull...redirect to main page");
                    session.setAttribute("username", uname);
                    response.sendRedirect("main.jsp");
                }
                else {
                    out.print("<p class='error'>Username " + uname 
                    + " Already exist!</p>");
                }
                con.close();
            %>
        <p class="url-back"><a href="insertUser.html">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>
