<%-- 
    Document   : populateArray
    Created on : 11 Apr 2022, 2:02:17 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Populate Array - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            String sales[][] = {{"Salesman 1","2500","2100","2200"},
                                {"Salesman 2","2000","1900","2200"},
                                {"Salesman 3","1800","2200","2450"}};
        %>
        <h1>Read Java array and populate it into HTML's table</h1>
        <table>
            <tr>
                <th></th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <tr>
                <%
                    for(int i = 0; i < sales.length; i++) 
                    {
                        for(int j = 0; j <= sales.length; j++)
                        {
                %>
                        <td><%= sales[i][j] %></td>
                <%      } %>
            </tr>
                <%  } %>
        </table>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>