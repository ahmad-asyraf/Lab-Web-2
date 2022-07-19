<%-- 
    Document   : confirmRegister
    Created on : 23 May 2022, 1:18:02 pm
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
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>CONFIRM REGISTRATION</h1>
        <jsp:useBean id="register" class="com.model.User" scope="request"/>
        <jsp:setProperty name="register" property="*"/>
        <%
            int result;
            String uname = request.getParameter("username");
            String icno = request.getParameter("icno");
            String fName = request.getParameter("fName");
            
            session.setAttribute("username", uname);
            session.setAttribute("icno", icno);
            session.setAttribute("fName", fName);
            
            Class.forName("com.mysql.jdbc.Driver");
            String db = "jdbc:mysql://localhost:3306/csf3209";
            
            Connection con = DriverManager.getConnection(db, "root", "");
            
            PreparedStatement ps = con.prepareStatement(
            "INSERT INTO userprofiles(username,icno,firstname) VALUES(?,?,?)");
            ps.setString(1, register.getUsername());
            ps.setString(2, register.getIcno());
            ps.setString(3, register.getfName());
            
            result = ps.executeUpdate();
            
            if(result > 0) {
        %>
            <div class="kotak">
                <form action="../profileServlet" method="POST">
                    <div class="form-group">
                        <input type="text" name="username" value="<%= uname %>" readonly="on">
                    </div>
                    <div class="form-group">
                        <input type="text" name="icno" value="<%= icno %>" readonly="on">
                    </div>
                    <div class="form-group">
                        <input type="text" name="fName" value="<%= fName %>" readonly="on">
                    </div>
                    <div class="form-group">
                        <button type="submit">Proceed</button>
                    </div>
                </form>
            </div>
        <%  
            }  
            con.close();
        %>
    </body>
</html>
