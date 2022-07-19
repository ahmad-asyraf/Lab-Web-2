<%-- 
    Document   : customer-update
    Created on : 25 May 2022, 11:17:12 am
    Author     : Asyraf
--%>

<%
    //GET USER SESSION
    Customer customer = (Customer) session.getAttribute("username");
    //CHECK IF USER SESSION NULL BACK TO LOGIN PAGE
    if (customer == null) {
        request.setAttribute("message", "<p class='error'>Session expired! Please login.</p>");
        request.getRequestDispatcher("/task2/login.jsp").forward(request, response);
    }
%>
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
            <div class="user-header">
                <b> Welcome <%= customer.getName()%> </b><a href="<%= request.getContextPath()%>/task2/logout.jsp">[ Sign Out ]</a>
            </div>
            <nav class="navbar">
                <a href="<%= request.getContextPath()%>/task2/customer-dashboard.jsp">Manage Profile</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-vehicle&userID=<%= customer.getId()%>">Manage Vehicle</a> | 
                <a href="<%= request.getContextPath()%>/CustomerController?cmd=list-insurance&userID=<%= customer.getId()%>">Insurance Quotation</a>
            </nav>
            <main class="">
                <h2>Update Profile</h2>
                <form action="<%= request.getContextPath()%>/CustomerController" method="POST" onsubmit="return confirm('Confirm to update?');">
                    <div class="form-group">
                        <label class="text-left">Email</label>:
                        <label class="text-left">
                            <input type="text" name="email" maxlength="50" value="<%= customer.getEmail()%>" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Password</label>:
                        <label class="text-left">
                            <input type="password" id="ps" name="password" maxlength="20" value="<%= customer.getPassword()%>" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">Re-enter Password</label>:
                        <label  class="text-left">
                            <input type="text" id="cp" name="repass" onkeyup="check()" maxlength="20" required="on">
                        </label>
                        <p class="form-text" id="msg"></p>
                    </div>
                    <div class="form-group">
                        <label class="text-left">First and Last Name</label>:
                        <label  class="text-left">
                            <input type="text" name="name" maxlength="50" value="<%= customer.getName()%>" required="on">
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="text-left">IC Number:</label>: 
                        <label  class="text-left"><%= customer.getIcno()%></label>
                    </div>
                    <div class="form-group">
                        <input type="hidden" name="userID" value="<%= customer.getId()%>">
                        <input type="hidden" name="cmd" value="UPDATE">
                        <button type="submit"">Update</button>
                    </div>
                </form>
            </main>
        </div>
        <% if (request.getAttribute("theMessage") != null) {%>
        <%= request.getAttribute("theMessage")%>
        <%  }%>

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
