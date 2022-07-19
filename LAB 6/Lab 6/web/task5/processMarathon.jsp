<%-- 
    Document   : processMarathon
    Created on : 8 May 2022, 11:04:06 pm
    Author     : Asyraf
--%>

<%@page import="java.sql.*" %>
<%@page import="lab6.task5.Database"%>
<%@page import="lab6.task5.Marathon" %>
<%@page import="lab6.task5.MarathonDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 5 - Create a record using JSP Model 1</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Create a record using JSP Model 1</h1>
        <jsp:useBean id="myMarathon" class="lab6.task5.Marathon" scope="request"/>
        <jsp:setProperty name="myMarathon" property="*"/>
        <%
            int result;
            
            Database db = new Database();
            
            MarathonDAO md = new MarathonDAO();
            
            result = md.addDetails(myMarathon);
            
            if(result > 0) 
            {
        %>
        <p class="text-center">Record successfully added into Marathon's table ..!</p>
        <p class="text-center">Record with IC No <%= myMarathon.getIcno() %> successfully created..!</p>
        <div class="kotak">
            <fieldset>
                <legend>Details</legend>
                <div class="form-group">
                    <label>IC No</label>: <%= myMarathon.getIcno() %>
                </div>
                <div class="form-group">
                    <label>Name</label>: <%= myMarathon.getName() %>
                </div>
                <div class="form-group">
                    <label>Category</label>: <%= myMarathon.getCategory() %>
                </div>
            </fieldset>
        </div>
        <%
            }
            else {
                out.print("<p class='error'>" + myMarathon.getIcno() + " already exist!</p>");
            }
            db.closeConnection();
        %>
        <p class="url-back"><a href="registerMarathon.jsp">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>