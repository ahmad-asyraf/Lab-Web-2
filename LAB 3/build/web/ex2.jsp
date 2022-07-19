<%-- 
    Document   : ex2
    Created on : 12 Apr 2022, 9:59:24 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculate Area of Rectangle - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <div class="kotak">
            <fieldset>
                <legend>Result</legend>
                <%
                    String num1 = "0", num2 = "0", num3 = "0", num4 = "0";
                    double rect1 = 0, rect2 = 0;
                    String result, msg = "";

                    java.util.Formatter myFormat = new java.util.Formatter();
                    java.util.Formatter myFormat1 = new java.util.Formatter();

                    num1 = request.getParameter("width_r1");
                    num2 = request.getParameter("height_r1");
                    num3 = request.getParameter("width_r2");
                    num4 = request.getParameter("height_r2");
                    
                    rect1 = Double.parseDouble(num1) * Double.parseDouble(num2);
                    rect2 = Double.parseDouble(num3) * Double.parseDouble(num4);
                    
                    result = "<div class='form-group'>"
                            + "<label>Area of rectangle 1</label> : " + myFormat.format("%.2f", rect1)
                            + "</div><div class='form-group'>"
                            + "<label>Area of rectangle 2</label> : " + myFormat1.format("%.2f", rect2)
                            + "</div>";
                        
                    if(rect1 > rect2) {
                        msg = result + "<p>Therefore, area of Rectangle 1 is greater than Rectangle 2</p>";
                    }
                    else if(rect1 == rect2) {
                        msg = result + "<p>Therefore, area of Rectangle 1 is equal to Rectangle 2</p>";
                    }
                    else {
                        msg = result + "<p>Therefore, area of Rectangle 2 is greater than Rectangle 1</p>";
                    }
                %>
                <%= msg %>
            </fieldset>
        </div>
        <% request.getRequestDispatcher("Exercise2.jsp").include(request, response); %>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>