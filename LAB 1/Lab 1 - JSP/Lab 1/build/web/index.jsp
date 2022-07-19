<%-- 
    Document   : index
    Created on : 2 Apr 2022, 1:44:21 pm
    Author     : Asyraf
--%>
<%@page import="java.util.Date" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@00&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Main Page</title>
        <style>
            html, body { font-family: poppins; }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
            table {
                border: 0.5px solid gray;
                border-spacing: 0;
                margin: auto;
                width: 50%;
            }
            th, td { padding: 10px; border: 0.5px solid white; }
            th { background-color: burlywood; }
            td { background-color: bisque; }
        </style>
    </head>
    <body>
        <%
            String projName[][] = 
            {{"","<a href='Welcome.jsp'>Writing a Simple JSP Program</a>","Task 6"},
             {"","<a href='useJavaObject.jsp'>Use Java Reference Datatype/Class Wrapper in JSP</a>","Task 7"},
             {"","<a href='AttributeIsSet.jsp'>Using JSP Implicit object in JSP Page</a>","Task 8"},
             {"","<a href='populateArray.jsp'>Populate Array</a>","Task 9"},
             {"","<a href='CalculateRadius.jsp?radius=0'>Calculate Area of Circle</a>","Task 9 - EX1"},
             {"","<a href='Sales.jsp'>Sales</a>","Task 9 - EX2"},
             {"","",""},
            };
        %>
        <table>
            <tr>
                <th>Bil.</th>
                <th>Task Name</th>
                <th>Task No</th>
            </tr>
            <% 
                int count = 0;
                //Start row
                for(int i = 0; i < projName.length; i++)
                {
            %>
                    <tr> 
                        <td><% count++; out.print(count); %></td>
            <%
                    //Start column
                    for(int j = 1; j < projName[i].length; j++) 
                    {
            %>          
                    
                    <td><%= projName[i][j]%></td>
            <%      } %>
                    
            <%  }   %>
            
            </tr>
        </table>
    </body>
</html>