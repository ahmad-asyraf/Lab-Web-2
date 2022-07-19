<%-- 
    Document   : calculateStock
    Created on : 27 Apr 2022, 1:28:36 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.exercise.calculateShare" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise 2 - Calculate Stock</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Calculate stock</h1>
        <div class="kotak">
            <form action="calculateShare.jsp" method="POST">
                <div class="form-group">
                    <label>Shares of stock</label>:
                    <input type="number" name="stock" placeholder="Enter stock" required>
                </div>
                <div class="form-group">
                    <label>Price per share</label>:
                    <input type="text" name="price" placeholder="Enter price" required>
                </div>
                <div class="form-group text-center">
                    <button type="submit">Calculate</button>
                    <button type="reset">Cancel</button>
                </div>
            </form>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>