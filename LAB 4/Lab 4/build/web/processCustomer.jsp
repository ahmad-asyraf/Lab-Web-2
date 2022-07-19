<%-- 
    Document   : processCustomer
    Created on : 17 Apr 2022, 5:23:10 pm
    Author     : Asyraf
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Process Customer - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="kotak">
            <%
                final int price = 10;
                
                String cust_code = request.getParameter("cust_code");
                int quantity = Integer.parseInt(request.getParameter("quantity"));
                String cust_type = request.getParameter("cust_type");
                
                if(cust_type.equals("1") && quantity > 100) {
                    out.print("Customer code " + cust_code);
                    out.print("<p>You're entitle " + "10%</p>");
                    out.print("Total amount is RM" + quantity * price * 0.9);
                }
                else if(cust_type.equals("2") && quantity > 100) {
                    out.print("Customer code " + cust_code);
                    out.print("<p>You're entitle " + "25%</p>");
                    out.print("Total amount is RM" + quantity * price * 0.75);
                }
                else {
                    out.print("Customer code " + cust_code);
                    out.print("<p>You're not entitle discount..!</p>");
                    out.print("Total amount is RM" + quantity * price);
                }
            %>
        </div>
        <p class="url-back">
            <a href="customer.html">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>
