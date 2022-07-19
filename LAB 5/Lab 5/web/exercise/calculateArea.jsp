<%-- 
    Document   : calculateArea
    Created on : 26 Apr 2022, 9:04:06 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise 1 - Calculate Area with JSTL</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Calculate the area</h1>
        <div class="kotak">
            <form action="calculateProcess.jsp" method="POST">
                <div class="form-group">
                    <label>Radius</label>:
                    <input type="text" name="radius" placeholder="Enter radius" required>
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





