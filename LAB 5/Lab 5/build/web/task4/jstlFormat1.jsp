<%-- 
    Document   : jstlFormat1
    Created on : 26 Apr 2022, 10:39:38 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 4.3 - JSTL Formatting</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Using JSTL Formatting tag for formatting</h1>
        <div class="kotak">
            <c:set var="total" value="2880.4638" />
            <p>Number to be formatted is <c:out value="${total}" /></p>
            <p>
                Formatting number as currency with currency code :
                <fmt:formatNumber type="currency" currencyCode="MYR" value="${total}" />
            </p>
            <p>
                Formatting number to the nearest 2 integer digit :
                <fmt:formatNumber type="number" maxIntegerDigits="2"  value="${total}" />
            </p>
            <p>
                Formatting number by grouping :
                <fmt:formatNumber type="number" groupingUsed="true" value="${total}" />
            </p>
            <p>
                Formatting number by 3 decimal places :
                <fmt:formatNumber type="number" groupingUsed="false" maxFractionDigits="3" value="${total}" />
            </p>
            <p>
                Formatting number by % :
                <fmt:formatNumber type="percent" maxIntegerDigits="6" value="${total}" />
            </p>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>
