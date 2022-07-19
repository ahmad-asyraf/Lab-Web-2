<%-- 
    Document   : CalculateRadius
    Created on : 1 Apr 2022, 9:43:53 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Area of Circle - JSP</title>
        <style>
            html, body, button, input { font-family: poppins; }
            .kotak {
                background-color: aliceblue;
                border: 1px solid gray;
                padding: 10px;
                min-width: 200px;
                max-width: 400px;
                margin: auto;
                margin-bottom: 10px;
            }
            button {
                margin: 0;
                padding: 0;
                padding: 6px;
                min-width: 200px;
                background-color: cornflowerblue;
                border: 0;
                border-radius: 5px;
                color: white;
            }
            input {
                margin: 0;
                padding: 0;
                padding: 6px;
                min-width: 185px;
                border-radius: 5px;
                border: 0.5px solid gray;
            }
            .form-group {
                padding-top: 5px;
                padding-bottom: 5px;
            }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
        </style>
    </head>
    <body>
        <%
            String area = request.getParameter("radius");
            
            double area1 = Double.parseDouble(area);
            double kira = 3.14*(area1*area1);
        %>
        <div class="kotak">
            <form name="calc" action="CalculateRadius.jsp" method="GET">
                <div class="form-group">
                    <label>Enter radius:</label>
                </div>
                <div class="form-group">
                    <input type="number" name="radius" placeholder="Numeric only*" required>
                </div>
                <div class="form-group">
                    <button type="submit">Submit</button>
                </div>
            </form>
        </div>
        
        <div class="kotak">
        <%
            out.println("The area of circle: " + kira);
        %>
        <p>&copy; Asyraf - S60494, 2022 | <a href="index.jsp">back</a></p>
        </div>
    </body>
</html>