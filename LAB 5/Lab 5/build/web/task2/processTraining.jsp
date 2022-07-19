<%-- 
    Document   : processTraining
    Created on : 24 Apr 2022, 4:04:26 pm
    Author     : Asyraf
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab5.task2.Register"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Task 2 - Process Training</title>
        <meta name="author" content="Asyraf S60494">
        <link rel="stylesheet" href="../css/main-style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%!
            double amount = 0;
            double discount = 0.10;
            double total = 0;
            String tot_name;
        %>
        <%
            Register PT = new Register();
            
            PT.setIcno(request.getParameter("icno"));
            PT.setName(request.getParameter("name"));
            PT.setTot(request.getParameter("tot"));
            PT.setPax(Integer.parseInt(request.getParameter("pax")));
            PT.setStudent(request.getParameter("student"));
            
            if(PT.getStudent().equals("Yes")) {
                if(PT.getTot().equals("1")) {
                    tot_name = "C++ Programming";
                    amount = discount * 3000;
                    total = (3000 - amount) * PT.getPax();
                }
                if(PT.getTot().equals("2")) {
                    tot_name = "Java for beginner";
                    amount = discount * 3000;
                    total = (3000 - amount) * PT.getPax();
                }
                if(PT.getTot().equals("3")) {
                    tot_name = "HTML5";
                    amount = discount * 2800;
                    total = (2800 - amount) * PT.getPax();
                }
                if(PT.getTot().equals("4")) {
                    tot_name = "Java EEE";
                    amount = discount * 5500;
                    total = (5500 - amount) * PT.getPax();
                }
                if(PT.getTot().equals("5")) {
                    tot_name = "Android Programming";
                    amount = discount * 3200;
                    total = (3200 - amount) * PT.getPax();
                }
            }
            else {
                if(PT.getTot().equals("1")) {
                    tot_name = "C++ Programming";
                    total = 3000 * PT.getPax();
                }
                if(PT.getTot().equals("2")) {
                    tot_name = "Java for beginner";
                    total = 3000 * PT.getPax();
                }
                if(PT.getTot().equals("3")) {
                    tot_name = "HTML5";
                    total = 2800 * PT.getPax();
                }
                if(PT.getTot().equals("4")) {
                    tot_name = "Java EEE";
                    total = 5500 * PT.getPax();
                }
                if(PT.getTot().equals("5")) {
                    tot_name = "Android Programming";
                    total = 3200 * PT.getPax();
                }
            }
            
            java.util.Formatter formatter = new java.util.Formatter();
        %>
        <h1 class="text-center pt pb">Training Registration Acknowledgement</h1>
        <div class="kotak">
            <div class="form-group">
                <label>IC No</label>: <% out.println(PT.getIcno()); %>
            </div>
            <div class="form-group">
                <label>Name</label>: <% out.println(PT.getName()); %>
            </div>
            <div class="form-group">
                <label>Type of Training</label>: 
                <% out.println(PT.getTot()); %> - <%= tot_name %>
            </div>
            <div class="form-group">
                <label>No of Pax</label>: <% out.println(PT.getPax()); %> person/s
            </div>
            <div class="form-group">
                <label>Student</label>: <% out.println(PT.getStudent()); %>
            </div>
            <div class="form-group">
                <label>Amount due</label>: RM <%= formatter.format("%.2f", total) %>
            </div>
        </div>
        <p class="url-back"><a href="registerTraining.jsp">back</a></p>
    </body>
</html>