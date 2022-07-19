<%-- 
    Document   : bmi
    Created on : 18 Apr 2022, 3:23:41 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate BMI</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Calculate BMI</h1>
        <div class="kotak text-center">
            <form action="calculateBMI.jsp" method="POST">
                <div class="form-group">
                    <label>Weight (kg)</label>:
                    <input type="text" name="weight" placeholder="Enter weight" required>
                </div>
                <div class="form-group">
                    <label>Height (m)</label>:
                    <input type="text" name="height" placeholder="Enter height" required>
                </div>
                <div class="form-group">
                    <button type="submit">Calculate</button>
                </div>
            </form>
        </div>
        <p class="url-back">
            <a href="index.html">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>