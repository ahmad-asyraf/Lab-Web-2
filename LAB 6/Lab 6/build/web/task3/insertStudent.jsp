<%-- 
    Document   : insertStudent
    Created on : 8 May 2022, 11:10:35 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 3 - Create records constrained by regular expression in JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Create records constrained by regular expression in JSP</h1>
        <div class="kotak">
            <fieldset>
                <legend>Student Registration</legend>
                <form id="errorForm" action="processStudent.jsp" method="POST">
                    <div class="form-group">
                        <label>Student ID</label>:
                        <input type="text" name="stuId" placeholder="E.g. UKXXXXX" required>
                    </div>
                    <div class="form-group">
                        <label>Name</label>:
                        <input type="text" name="stuName" placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label>Program</label>:
                        <select name="program">
                            <option>BSc. Soft. Eng.</option>
                            <option>BSc. with IM</option>
                            <option>BSc in Networking</option>
                            <option>BSc in Robotics</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Address</label>:
                        <input type="text" name="address" placeholder="Enter your address" required>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Submit</button>
                        <button type="reset">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <p class="url-back">
            <a href="../index.html">back</a> | <a href="displayStudent.jsp"> View List</a> | 
            &copy;2022 - Asyraf S60494</p>
    </body>
</html>