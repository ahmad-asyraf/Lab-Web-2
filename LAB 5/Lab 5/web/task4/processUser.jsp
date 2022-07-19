<%-- 
    Document   : processUser
    Created on : 26 Apr 2022, 10:30:51 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 4.2 - Process User</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1 class="text-center pt pb">Retrieve info using c:param & display it using c:out</h1>
        <div class="kotak">
            <div class="form-group">
                <label>First name</label>: <c:out value="${param.fname}" />
            </div>
            <div class="form-group">
                <label>Surname</label>: <c:out value="${param.sname}" />
            </div>
            <div class="form-group">
                <label>Gender</label>: <c:out value="${param.gender}" />
            </div>
            <div class="form-group">
                <label>Type of user</label>: 
                <c:out value="${param.user}" /> -
                <c:if test="${param.user == 1}" >
                    Beginner
                </c:if>
                <c:if test="${param.user == 2}" >
                    Intermediate
                </c:if>
                <c:if test="${param.user == 3}" >
                    Advanced
                </c:if>
            </div>
            <div class="form-group">
                <label>Prefer language</label>: 
                <c:out value="${param.lang1}" />
                <c:out value="${param.lang2}" />
                <c:out value="${param.lang3}" />
                <c:out value="${param.lang4}" />
            </div>
        </div>
        <p class="url-back"><a href="userRegistration.html">back</a></p>
    </body>
</html>
