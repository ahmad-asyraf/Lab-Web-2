<%-- 
    Document   : calculateBMI
    Created on : 18 Apr 2022, 3:34:40 pm
    Author     : Asyraf
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate BMI</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            double weight = Double.parseDouble(request.getParameter("weight"));
            double height = Double.parseDouble(request.getParameter("height"));
            double bmi = 0.00;
            String msg = "";
            
            bmi = weight / (height * 2);
            
            if(bmi < 18.5)
                msg = "Underweight";
            else if(bmi < 25)
                msg = "Optimal";
            else
                msg = "Overweight";
                
            DecimalFormat df = new DecimalFormat("0.00");    
        %>
        <h1>Result</h1>
        <div class="kotak text-center">
            <%= df.format(bmi) + " = " + msg %>
        </div>
        <% request.getRequestDispatcher("bmi.jsp").include(request, response); %>
    </body>
</html>
