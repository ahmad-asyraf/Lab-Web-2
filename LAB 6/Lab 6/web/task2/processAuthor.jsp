<%-- 
    Document   : processAuthor
    Created on : 8 May 2022, 8:47:52 am
    Author     : Asyraf
--%>

<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 2 - Create Records via JSP Page</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Hello World!</h1>
        <jsp:useBean id="myAuthor" class="lab6.task2.Author" scope="request" />
        <jsp:setProperty name="myAuthor" property="*" />
        <div class="kotak">
            <%
                int result;

                Class.forName("com.mysql.jdbc.Driver");

                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");

                String sql = "INSERT INTO author(authNo,authName,address,city,state,zip) "
                        + "VALUES (?,?,?,?,?,?)";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, myAuthor.getAuthNo());
                ps.setString(2, myAuthor.getAuthName());
                ps.setString(3, myAuthor.getAddress());
                ps.setString(4, myAuthor.getCity());
                ps.setString(5, myAuthor.getState());
                ps.setString(6, myAuthor.getZip());

                result = ps.executeUpdate();
                if(result > 0) {
                    out.println("\tRecord successfully added into Author table..!");
                    out.print("<p>Record with author no " + myAuthor.getAuthNo()
                    + " successfully created..! </p>");
                    out.print("<p>Details of record are; </p>");
                    out.print("<p><label>Name</label>: " + myAuthor.getAuthName() + "</p>");
                    out.print("<p><label>Address</label>: " + myAuthor.getAddress() + "</p>");
                    out.print("<p><label>City</label>: " + myAuthor.getCity() + "</p>");
                    out.print("<p><label>State</label>: " + myAuthor.getState() + "</p>");
                    out.print("<p><label>Zip</label>: " + myAuthor.getZip() + "</p>");
                }

                out.println("Step 5: Close database connection..!");
                con.close();
                out.println(" ");
                out.println("Database connection is closed..!");
            %>
        </div>
        <p class="url-back"><a href="insertAuthor.jsp">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>