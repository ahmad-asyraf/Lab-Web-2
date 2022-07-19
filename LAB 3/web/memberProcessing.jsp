<%-- 
    Document   : memberProcessing
    Created on : 11 Apr 2022, 11:55:06 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Member Processing - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Passing data from JSP's page to other JSP's page</h1>
        <div class="kotak">
            <fieldset>
                <%
                    String myIC = null;
                    String myName = null;

                    myIC  = request.getParameter("icno");
                    myName  = request.getParameter("name");
                %>
                <p>Thank you for registering in this event..!</p>
                <p>This is your details</p>
                <p class="text-left"><label>IC No</label>: <%= myIC %></p>
                <p class="text-left"><label>Name</label>: <%= myName %></p>
            </fieldset>
        </div>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>