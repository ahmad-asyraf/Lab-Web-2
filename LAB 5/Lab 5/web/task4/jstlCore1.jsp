<%-- 
    Document   : jstlCore1
    Created on : 26 Apr 2022, 10:15:28 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 4.1 - JSTL Core</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Using JSTL's features</h1>
        <div class="kotak">
            <c:set var="message" value="Welcome to CSA3209 - Web Programming course..!" />
            <p><c:out value="${message}" /></p>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>
