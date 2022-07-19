<%-- 
    Document   : Message
    Created on : 24 Apr 2022, 3:33:23 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" %>
<%@page info="Using Java JSP Standard Action to call JavaBeans" %>
<%@page import="java.util.Date, lab5.task1.Message" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 1 - Message</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Using JSP Scriptlet to call JavaBeans</h1>
        <div class="kotak">
            <%
                Message objMsg = new Message();

                objMsg.setMsg("Welcome to CSF3209 course..!");
                out.println("<p>" + objMsg.getMsg() + "</p>");
                out.println("<p>Current date is " + new java.util.Date() + "</p>");
            %>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>
