<%-- 
    Document   : populateArray
    Created on : 1 Apr 2022, 1:14:14 pm
    Author     : Asyraf
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Populate Array Table</title>
        <style>
            html, body { font-family: poppins; }
            table {
                border: 1px solid gray;
                border-spacing: 0;
                width: 100%;
                text-align: center;
            }
            th { background-color: orange; }
            td { background-color: #fff7e6; }
            th, td {
                padding: 10px;
                border: 1px solid gray;
            }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
        </style>
    </head>
    <body>
        <%
            String sales[][] = {{"Salesman 1","2500","2100","2200"},
                                {"Salesman 2","2000","1900","2400"},
                                {"Salesman 3","1800","2200","2450"}};
        %>
        <h1>Read Java array and populate it into HTML's table</h1>
        <table cellpadding="0">
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <% 
                for(int i = 0; i < sales.length; i++)
                {
            %>
                    <tr> 
            <%
                    for(int j = 0; j <= sales.length; j++) 
                    {
            %>          
                    <td><%= sales[i][j]%></td>
                        
            <%      } %>
                    </tr>
            <%  }   %>
        </table>
        <p>&copy; Asyraf - S60494, 2022 | <a href="index.jsp">back</a></p>
    </body>
</html>