<%-- 
    Document   : jspParameter
    Created on : 18 Apr 2022, 11:34:34 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Using JSP Standard Action</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Using jsp:include and jsp:param to display information on JSP page</h1>
        <%
            String sCode = "CSF3209";
            String sSubject = "Web Programming 2";
            String sCredit = "3 (2+1)";
        %>
        <jsp:include page="subjectInfo.jsp" flush="true">
            <jsp:param name="code" value="<%= sCode %>"/>
            <jsp:param name="subject" value="<%= sSubject %>"/>
            <jsp:param name="credit" value="<%= sCredit %>"/>
        </jsp:include>
        <p class="url-back">
            <a href="index.html">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>
