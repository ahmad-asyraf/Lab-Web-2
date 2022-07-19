<%-- 
    Document   : mainPage
    Created on : 11 Apr 2022, 9:16:22 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Use Include Directive - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="task6-main">
            <%@ include file = "headerPage.jsp" %>
            <h2>Using JSP Include Directive</h2>

            <p class="task6-url-back">
                Java Server Page (JSP) is a technology for controlling the content
                or appearance of Web pages through the use of servlets, small programs
                that are specified in the Web pages and run on the Web server to modify
                the web page before it sent to the user who requested it.
            </p>

            <p class="task6-url-back"><a href="index.html">Back</a></p>
            <%@ include file = "footerPage.jsp" %>
        </div>
    </body>
</html>
