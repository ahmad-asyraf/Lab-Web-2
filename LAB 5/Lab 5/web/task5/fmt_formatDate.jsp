<%-- 
    Document   : fmt_formatDate
    Created on : 26 Apr 2022, 10:54:31 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 5.1 - JSTL's Formatting Date</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">fmt:parseDate feature</h1>
        <div class="kotak">
            <c:set var="now" value="<%= new java.util.Date() %>" />
            <div class="form-group">
                Time (fmt:formatDate type="time");
                <strong>
                    <fmt:formatDate type="time" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date (fmt:formatDate type="date");
                <strong>
                    <fmt:formatDate type="date" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date, Time (fmt:formatDate type="both");
                <strong>
                    <fmt:formatDate type="both" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date, Time Short (fmt:formatDate type="both" dataStyle="short");
                <strong>
                    <fmt:formatDate type="both" dateStyle="short" timeStyle="short" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date, Time Medium (fmt:formatDate type="both" dataStyle="medium" timeStyle="medium");
                <strong>
                    <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"  value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date, Time Long (fmt:formatDate type="both" dateStyle="long" timeStyle="long");
                <strong>
                    <fmt:formatDate type="both" dateStyle="long" timeStyle="long" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                Date, Time (fmt:formatDate pattern="dd-MM-yy HH:mm:ss");
                <strong>
                    <fmt:formatDate pattern="dd-MM-yy HH:mm:ss" value="${now}" />
                </strong>
            </div>
            <div class="form-group">
                <fmt:formatDate pattern="dd-MM-yy HH:mm" value="${now}" var="nowString" />
                Now String (dd-MM-yyyy HH:mm);
                <strong>
                    <c:out value="${nowString}" />
                </strong>
            </div>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>
