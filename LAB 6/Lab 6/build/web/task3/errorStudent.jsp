<%-- 
    Document   : errorStudent
    Created on : 8 May 2022, 11:28:59 am
    Author     : Asyraf
--%>

<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 3 - Error Page</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Error Student</h1>
        <div class="error">
            <form id="errorForm" action="insertStudent.jsp" method="POST">
                <jsp:expression>
                    exception.getMessage()
                </jsp:expression>
            </form>
        </div>
        <p class="url-back"><a href="insertStudent.jsp">back</a> | &copy;2022 - Asyraf S60494</p>
    </body>
</html>