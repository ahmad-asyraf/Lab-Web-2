<%-- 
    Document   : calculateProcess
    Created on : 27 Apr 2022, 12:59:55 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="java.lang.Math" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise 1 - Calculate Area with JSTL</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Calculate Process</h1>
        <div class="kotak">
            <div class="form-group">
                <label>Radius of circle</label>: 
                <c:out value="${param.radius}" />
            </div>
            <div class="form-group">
                <label>Perimeter of circle</label>: 
                <c:set var="perimeter" value="${(param.radius * Math.PI) * 2}" />
                <fmt:formatNumber type="number" maxFractionDigits="3" value="${perimeter}" />
            </div>
            <div class="form-group">
                <label>Area of circle</label>: 
                <c:set var="area" value="${(param.radius * param.radius) * Math.PI}" />
                <fmt:formatNumber type="number" maxFractionDigits="3" value="${area}" />
            </div>
        </div>
        <p class="url-back"><a href="calculateArea.jsp">back</a></p>
    </body>
</html>
