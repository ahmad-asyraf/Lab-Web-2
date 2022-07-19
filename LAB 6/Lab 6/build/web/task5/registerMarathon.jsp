<%-- 
    Document   : registerMarathon
    Created on : 8 May 2022, 9:57:56 pm
    Author     : Asyraf
--%>

<%@page import="lab6.task5.Marathon" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 5 - Create a record using JSP Model 1</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Create a record using JSP Model 1</h1>
        <div class="kotak">
            <fieldset>
                <legend>Marathon Registration</legend>
                <form action="processMarathon.jsp" method="POST">
                    <div class="form-group">
                        <label>IC No</label>:
                        <input type="text" name="icno" placeholder="E.g. 921110-10-XXXX" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="name" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label>Category</label>:
                        <select name="category">
                            <option>5 KM</option>
                            <option>7 KM</option>
                            <option>10 KM</option>
                        </select>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Submit</button>
                        <button type="reset">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <p class="url-back"><a href="../index.html">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>