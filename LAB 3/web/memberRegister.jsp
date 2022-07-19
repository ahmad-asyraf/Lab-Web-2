<%-- 
    Document   : memberRegister
    Created on : 11 Apr 2022, 10:51:01 am
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title> Member Register - JSP </title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Passing data from main JSP's page to other JSP's</h1>
        <div class="kotak">
            <form action="memberProcessing.jsp" method="POST" onsubmit="checkICNo()">
                <fieldset>
                    <legend> Member Registration </legend>
                    <div class="form-group">
                        <label>IC No: *</label>
                        <input type="text" name="icno" size="15" placeholder="E.g. 921012101245">
                    </div>
                    <div class="form-group">
                        <label>Name:</label>
                        <input type="type" name="name" size="45" placeholder="Key-in your name">
                    </div>
                    <div class="form-group">
                        <button type="submit" id="btnSubmit">Submit</button>
                        <button type="reset" id="btnCancel">Reset</button>
                    </div>
                </fieldset>
            </form>
        </div>
        <p class="url-back"><a href="index.html">Back</a></p>
    </body>
</html>
