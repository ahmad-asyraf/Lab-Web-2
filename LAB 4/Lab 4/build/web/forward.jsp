<%-- 
    Document   : forward
    Created on : 18 Apr 2022, 12:30:11 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action (Forward)</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h2>Using jsp:forward to display user info</h2>
        <div class="kotak">
            <jsp:forward page="forwardInfo.jsp">
                <jsp:param name="uName" value="Fouad Abdulameer"/>
                <jsp:param name="email" value="fouadaug@gmail.com"/>
                <jsp:param name="nationality" value="Iraqi"/>
                <jsp:param name="background" value="Developer"/>
            </jsp:forward>
        </div>
    </body>
</html>
