<%-- 
    Document   : EX1
    Created on : 12 Apr 2022, 11:51:47 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Temperature Converter - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String num1 = "0";
            double result = 0;
            String op = "Celcius";
            String msg = "";
            
            java.util.Formatter myFormat = new java.util.Formatter();
            
            char opchar = op.charAt(0);
            if(request.getParameter("op") != null) {
                op = request.getParameter("op");
                opchar = op.charAt(0);
            
                num1 = request.getParameter("celc");

                switch(opchar) {
                    case '0': result = (Double.parseDouble(num1) * 9/5) + 32;
                              msg = num1 + " Celcius = " + result + " Fahrenheit";
                    break;
                    case '1': result = (Double.parseDouble(num1) - 32) * 5/9;
                              msg = num1 + " Fahrenheit = " 
                              + myFormat.format("%.4f", result) + " Celcius";  
                    break;
                }
            }
        %>
        <h1>Temperature Converter</h1>
        <div class="kotak">
            <form action="Exercise1.jsp" method="POST">
                <div class="form-group">
                    <select name="op">
                        <option value="0">Celcius to Fahrenheit</option>
                        <option value="1">Fahrenheit to Celcius</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" name="celc" placeholder="Enter temperature" value="0">
                </div>
                <div class="form-group">
                    <button type="submit">Convert</button>
                </div>
            </form>
            <p><% out.print(msg); %></p>
        </div>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>