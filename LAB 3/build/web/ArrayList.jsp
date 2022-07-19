<%-- 
    Document   : ArrayList
    Created on : 11 Apr 2022, 8:56:34 pm
    Author     : Asyraf
--%>
<%@page import="java.util.ArrayList" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Use Java Array List - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
        <div class="kotak">
        <%
            ArrayList<String> studentList = new ArrayList<String>();
            studentList.add(0,"Mohamad Azam");
            studentList.add(1,"Peter Chong");
            studentList.add(2,"Rahimah Mansor");
            studentList.add(3,"Sri Devi");
            studentList.add(4,"Ng Hue Ween");
            studentList.add(5,"S. Nagarajan");
            
            out.println("<p>The number of records in Array List are " + 
                    studentList.size() + "</p>");
            
            for(int i = 0; i < studentList.size(); i++) {
                out.println("<p class='url-back'>Record " + (i+1) + " is " + studentList.get(i) + "</p>");
            }
        %>
        </div>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>