<%-- 
    Document   : Calculator
    Created on : 11 Apr 2022, 12:59:42 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String num1 = "0", num2 = "0";
            int result = 0;
            String op = "+";
            
            char opchar = op.charAt(0);
            if(request.getParameter("op") != null) {
                op = request.getParameter("op");
                opchar = op.charAt(0);
            
                num1 = request.getParameter("operand1");
                num2 = request.getParameter("operand2");

                switch(opchar) {
                    case '0': result = Integer.parseInt(num1) + Integer.parseInt(num2);
                    break;
                    case '1': result = Integer.parseInt(num1) - Integer.parseInt(num2);
                    break;
                    case '2': result = Integer.parseInt(num1) * Integer.parseInt(num2);
                    break;
                    case '3': result = Integer.parseInt(num1) / Integer.parseInt(num2);
                    break;
                    case '4': result = Integer.parseInt(num1) % Integer.parseInt(num2);
                    break;
                }
            }
        %>
        <h1>Basic calculator program in JSP</h1>
        <div class="kotak">
            <form action="Calculator.jsp" method="POST" name="f1">
                <div class="form-group">
                    <input type="text" name="operand1" size="20" placeholder="Enter 1st number" value="<%= num1 %>" required>
                </div>
                <div class="form-group">
                    <select name="op" size="1">
                        <option value="0">+</option> 
                        <option value="1">-</option> 
                        <option value="2">*</option> 
                        <option value="3">/</option> 
                        <option value="4">%</option> 
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" size="20" name="operand2" placeholder="Enter 2nd number" value="<%= num2 %>" required>
                </div>
                <div class="form-group">
                    <button type="submit">Calculate</button>
                </div>
            </form>
            Result = <%= result + "" %>
        </div>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>