<%-- 
    Document   : calculateShare
    Created on : 27 Apr 2022, 1:39:20 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise 2 - Calculate Share</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Display Result</h1>
        <div class="kotak">
            <div class="form-group">
                <label>Shares of stock</label>:
                <c:out value="${param.stock}" />
            </div>
            <div class="form-group">
                <label>Price per share</label>:
                <fmt:formatNumber type="currency" currencyCode="MYR" value="${param.price}" />
            </div>
            <div class="form-group">
                <label>Amount of stock</label>:
                <c:set var="amount" value="${param.stock * param.price}" />
                <fmt:formatNumber type="currency" currencyCode="MYR" value="${amount}" />
            </div>
            <div class="form-group">
                <label>Amount of commission</label>:
                <c:set var="comission" value="${0.05 * amount}" />
                <fmt:formatNumber type="currency" currencyCode="MYR" value="${comission}" />
            </div>
            <div class="form-group">
                <label>Total</label>:
                <c:set var="total" value="${amount + comission}" />
                <fmt:formatNumber type="currency" currencyCode="MYR" value="${total}" />
            </div>
        </div>
        <p class="url-back"><a href="calculateStock.jsp">back</a></p>
    </body>
</html>