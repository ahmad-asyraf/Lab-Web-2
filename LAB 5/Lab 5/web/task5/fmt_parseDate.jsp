<%-- 
    Document   : fmt_parseDate
    Created on : 26 Apr 2022, 11:15:01 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 5.2 - parseDate</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">parseDate</h1>
        <div class="kotak">
            <c:set var="dateTimeString" value="26-04-2022 11:20" />
            <div class="form-group">
                dateTimeString:
                <c:out value="${dateTimeString}" />
            </div>
            <div class="form-group">
                <fmt:parseDate value="${dateTimeString}" type="both" 
                               var="parsedDatetime" pattern="dd-MM-yyyy HH:mm" />
                The date time after parsing:
                <c:out value="${parsedDatetime}" />
            </div>
            <div class="form-group">
                Date only (dd/MM/yyyy):
                <fmt:formatDate value="${parsedDatetime}" pattern="yyyy-MM-dd" />
            </div>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>