<%-- 
    Document   : insertAuthor
    Created on : 8 May 2022, 8:27:47 am
    Author     : Asyraf
--%>

<%@page import="java.sql.*"%>
<%@page import="lab6.task2.Author" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 2 - Create Records via JSP Page</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Perform creating and retrieving records via JSP page</h1>
        <div class="kotak">
            <fieldset>
                <legend>Author Registration</legend>
                <form action="processAuthor.jsp" method="POST">
                    <div class="form-group">
                        <label>Author no</label>:
                        <input type="text" name="authNo" placeholder="E.g. UKXXXXX" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="authName" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label>Address</label>:
                        <input type="text" name="address" placeholder="Enter your address" required>
                    </div>
                    <div class="form-group">
                        <label>City</label>:
                        <input type="text" name="city" placeholder="Enter your city" required>
                    </div>
                    <div class="form-group">
                        <label>State</label>:
                        <input type="text" name="state" placeholder="Enter your state" required>
                    </div>
                    <div class="form-group">
                        <label>Zip</label>:
                        <input type="text" name="zip" placeholder="Enter your zip" required>
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