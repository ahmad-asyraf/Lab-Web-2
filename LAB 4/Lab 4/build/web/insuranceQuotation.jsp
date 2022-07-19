<%-- 
    Document   : insuranceQuotation
    Created on : 18 Apr 2022, 12:47:19 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Insurance Quotation - JSP</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Insurance Quotation</h1>
        <div class="kotak">
            <fieldset>
                <legend>Insurance Calculation</legend>
                <form action="processInsuranceQuo.jsp" method="POST">
                    <div class="form-group text-center">
                        <label>IC No</label>:
                        <input type="text" name="icno" placeholder="E.g. 821210-05-3478" required>
                    </div>
                    <div class="form-group text-center">
                        <label>Name</label>:
                        <input type="text" name="name" placeholder="enter name" required>
                    </div>
                    <div class="form-group text-center">
                        <label>Market price</label>:
                        <input type="number" name="price" placeholder="price" required>
                    </div>
                    <div class="form-group text-center">
                        <label>Coverage type</label>:
                        <select name="coverageType">
                            <option value="1">Third Party</option>
                            <option value="2">Comprehensive</option>
                        </select>
                    </div>
                    <div class="form-group text-center">
                        <label>No claims discount (NCD)</label>:
                        <select name="discount">
                            <option value="1">10%</option>
                            <option value="2">25%</option>
                            <option value="3">35%</option>
                            <option value="4">55%</option>
                        </select>
                    </div>
                    <div class="form-group text-center">
                        <button type="submit">Submit</button>
                        <button type="reset">Cancel</button>
                    </div>
                </form>
            </fieldset>
        </div>
        <p class="url-back">
            <a href="index.html">back</a> | &copy;2022 Asyraf S60494
        </p>
    </body>
</html>
