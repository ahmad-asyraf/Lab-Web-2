<%-- 
    Document   : login
    Created on : 10 May 2022, 4:22:00 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exercise - Login User</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Login User</h1>
        <div class="kotak">
            <fieldset>
                <legend>Login User</legend>
                <form action="doLogin.jsp" method="POST">
                    <div class="form-group">
                        <label>Username</label>:
                        <input type="text" name="username" placeholder="Enter username" required>
                    </div>
                    <div class="form-group">
                        <label>Password</label>:
                        <input type="password" name="password" placeholder="Enter password" required>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Login</button>
                        <button type="reset">Reset</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <p class="url-back">
            <a href="../index.html">back</a> | 
            <a href="insertUser.html">Register</a> |
            &copy;2022 - Asyraf S60494
        </p>
    </body>
</html>
