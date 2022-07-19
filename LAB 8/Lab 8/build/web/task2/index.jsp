<%-- 
    Document   : index
    Created on : 25 May 2022, 10:58:37 am
    Author     : Asyraf
--%>

<%@page import="com.lab8.task2.Customer" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>LAB 8 - TASK 2</title>
        <meta charset="UTF-8">
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="<%= request.getContextPath()%>/css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    </head>
    <body>
        <h1>Insurance Management System</h1>
        <div class="kotak text-center mb">
            <h2 class="text-center">Register Now!</h2>
            <form action="<%= request.getContextPath()%>/CustomerController" method="POST" >
                <div class="form-group">
                    <label class="text-left">Email</label>:
                    <input type="email" name="email" maxlength="50" required="on">
                </div>
                <div class="form-group">
                    <label class="text-left">Password</label>:
                    <input type="password" id="ps" name="password" maxlength="20" required="on">
                </div>
                <div class="form-group">
                    <label class="text-left">Re-enter Password</label>:
                    <input type="password" id="cp" onkeyup="check()" name="repass" maxlength="20" required="on">
                    <p class="form-text" id="msg"></p>
                </div>
                <div class="form-group">
                    <label class="text-left">First and Last Name</label>:
                    <input type="text" name="name" maxlength="50" required="on">
                </div>
                <div class="form-group">
                    <label class="text-left">IC Number</label>:
                    <input type="text" name="icno" maxlength="12" required="on">
                    <input type="hidden" name="cmd" value="REGISTER">
                </div>
                <div class="form-group text-center">
                    <button type="submit" onclick="check()">Complete Registration</button>
                </div>
                <div class="form-group">
                    <p class="text-center">Already own an account? <a href="<%= request.getContextPath()%>/task2/login.jsp">Sign in</a></p>
                </div>
            </form>
        </div>
        <% if (request.getAttribute("message") != null) {%>
        <%= request.getAttribute("message")%>
        <%  }%>
        <p class="url-back"><a href="<%= request.getContextPath()%>/index.html">back</a></p>

        <%-- JavaScript OnKeyUp Check Password Confirmation --%>
        <script>
            var check = function () {
                var pass = document.getElementById("ps").value;
                var repass = document.getElementById("cp").value;

                if (pass !== repass) {
                    document.getElementById("msg").style.color = "red";
                    document.getElementById("msg").innerHTML = "Wrong Password";
                    return false;
                } else if (pass === "" && repass === "") {
                    document.getElementById("msg").innerHTML = "";
                } else {
                    document.getElementById("msg").style.color = "green";
                    document.getElementById("msg").innerHTML = "Password match";
                    return true;
                }
            };
        </script>
    </body>
</html>
