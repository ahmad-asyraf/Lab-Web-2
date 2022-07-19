<%-- 
    Document   : processInsuranceQuo
    Created on : 18 Apr 2022, 1:05:05 pm
    Author     : Asyraf
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String ct = request.getParameter("coverageType");
            String dc = request.getParameter("discount");
            double insurance = 0;
            double gst = 0;
            double total = 0;
            
            DecimalFormat df = new DecimalFormat("0.00");
            
            //Third Party
            if(ct.equals("1") && dc.equals("1"))
                insurance = (3.3/100) * price;
            if(ct.equals("1") && dc.equals("2"))
                insurance = (2.5/100) * price;
            if(ct.equals("1") && dc.equals("3"))
                insurance = (1.8/100) * price;
            if(ct.equals("1") && dc.equals("4"))
                insurance = (1.2/100) * price;
                
            //Comprehensive
            if(ct.equals("2") && dc.equals("1"))
                insurance = (3.8/100) * price;
            if(ct.equals("2") && dc.equals("2"))
                insurance = (3.0/100) * price;
            if(ct.equals("2") && dc.equals("3"))
                insurance = (2.4/100) * price;
            if(ct.equals("2") && dc.equals("4"))
                insurance = (1.8/100) * price;
                
            //GST
            gst = 0.06 * insurance;
            //Total
            total = gst + insurance;
        %>
        <h1>Insurance Quotation</h1>
        <div class="kotak text-center">
            <fieldset>
                <legend>Details of Insurance Quotation</legend>
                <div class="form-group">
                    <label>IC No</label>: <label><%= icno %></label>
                </div>
                <div class="form-group">
                    <label>Customer name</label>: <label><%= name %></label>
                </div>
                <div class="form-group">
                    <label>Market price</label>: <label><%= price %></label>
                </div>
                <div class="form-group">
                    <label>Coverage type</label>: <label><%= ct %></label>
                </div>
                <div class="form-group">
                    <label>No claim discount (NCD)</label>: <label><%= dc %></label>
                </div>
                <div class="form-group">
                    <label>Insurance amount</label>: 
                    <label><%= df.format(insurance) %></label>
                </div>
                <div class="form-group">
                    <label>6% GST</label>:
                    <label><%= df.format(gst) %></label>
                </div>
                <div class="form-group">
                    <label>Final amount (+ 6% GST)</label>:
                    <label><%= df.format(total) %></label>
                </div>
            </fieldset>
        </div>
        <p class="url-back">
            <a href="insuranceQuotation.jsp">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>