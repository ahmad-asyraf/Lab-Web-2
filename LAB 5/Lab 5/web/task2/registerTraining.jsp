<%-- 
    Document   : reigsterTraining
    Created on : 24 Apr 2022, 3:45:07 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.task2.Register" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 2 - Register Training</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Register IT Training</h1>
        <div class="kotak">
            <fieldset>
                <legend>Training Registration</legend>
                <form action="processTraining.jsp" method="POST" autocomplete="off">
                    <div class="form-group">
                        <label>IC No</label>:
                        <input type="text" name="icno" placeholder="E.g. 911210-05-1234" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="name" placeholder="Enter name" required>
                    </div>
                    <div class="form-group">
                        <label>Type of Training</label>:
                        <select name="tot">
                            <option value="1">C++ Training</option>
                            <option value="2">Java for beginner</option>
                            <option value="3">HTML5</option>
                            <option value="4">Java EEE</option>
                            <option value="5">Android Programming</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>No of Pax</label>:
                        <input type="number" name="pax" placeholder="No of pax" required>
                    </div>
                    <div class="form-group">
                        <label>Student</label>:
                        <input type="radio" name="student" value="Yes" checked> Yes &nbsp;
                        <input type="radio" name="student" value="No" > No
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Submit</button>
                        <button type="reset">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <p class="url-back"><a href="../index.html">back</a></p>
    </body>
</html>