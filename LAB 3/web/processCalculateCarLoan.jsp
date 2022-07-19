<%-- 
    Document   : processCalculateCarLoan
    Created on : 11 Apr 2022, 6:36:27 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Calculate - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String LAmount = request.getParameter("amount");
            String period = request.getParameter("period");
            double interest = 0;
            
            if(Integer.parseInt(period) > 5) {
                interest = Integer.parseInt(LAmount) * Integer.parseInt(period) * 0.045;
            }
            else {
                interest = Integer.parseInt(LAmount) * Integer.parseInt(period) * 0.028;
            }
            
            double result = Integer.parseInt(LAmount) + interest;
        %>
        <h1>Perform Car Loan Calculation</h1>
        <div class="kotak">
            <fieldset>
                <legend>Details of car loan</legend>
                <div class="form-group p-loan">
                    <label>Loan Request</label>: <%= LAmount %>
                </div>
                <div class="form-group p-loan">
                    <label>Period of payment</label>: <%= period %>
                </div>
                <div class="form-group p-loan">
                    Total Loan + (interest) : <%= result %>
                </div>
            </fieldset>
        </div>
        <p class="url-back"><a href="calculateCarLoan.html">Back</a></p>
    </body>
</html>
