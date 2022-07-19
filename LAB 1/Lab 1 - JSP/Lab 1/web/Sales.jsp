<%-- 
    Document   : Sales
    Created on : 1 Apr 2022, 11:09:45 pm
    Author     : Asyraf
--%>
<%@page import="java.math.*" %>
<%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="author" content="Asyraf S60494">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculate Sales Discount - JSP</title>
        <style>
            html, body { font-family: poppins; }
            th { background-color: aliceblue; }
            th, td { padding: 10px; }
            table { 
                width: 50%; 
                margin: auto; 
            }
            table, th, td {
                border: 1px solid gray;
                border-spacing: 0;
            }
            p { text-align: center; }
            a { text-decoration: none; color: blue; }
            a:hover { color: red; }
        </style>
    </head>
    <body>
        <%
            String fName = "C:\\Users\\aimas\\OneDrive - umt.edu.my\\Documents\\CSA3209\\LAB 1\\Lab 1 - JSP\\Sales.csv";
            String thisLine;
            FileInputStream fis = new FileInputStream(fName);
            DataInputStream myInput = new DataInputStream(fis);
            int i = 1;
        %>
        <table>
            <tr>
                <th>Customer</th>
                <th>Cust. Type</th>
                <th>Purchase</th>
                <th>Discount</th>
            </tr>
            <%
                while((thisLine = myInput.readLine()) != null)
                {
                    String strar[] = thisLine.split(";");
                    out.print("<tr>");
                    if(strar[1] == "Cash") { out.print("success"); }
                    for(int j = 0; j < strar.length; j++)
                    {
                        out.print("<td>" + strar[j] + "</td>");
                        
                    }
                        out.print("<td>");
                        if(thisLine.contains("Cash")) 
                        { 
                            java.util.Formatter myFormat = new java.util.Formatter();
                            double calc = Double.parseDouble(strar[2])*10/100;
                            out.print(myFormat.format("%.2f",calc));
                        }
                        else {
                            out.print("0.00");
                        }
                        out.print("</td>");
                    out.print("</tr>");
                    i++;
                }
            %>
        </table>
        <p>&copy; Asyraf - S60494, 2022 | <a href="index.jsp">back</a></p>
    </body>
</html>