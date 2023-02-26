package org.apache.jsp.task3;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class processStudent_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"errorStudent.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Task 3</title>\n");
      out.write("        <meta name=\"author\" content=\"Asyraf S60494\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/main-style.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Task 3</h1>\n");
      out.write("        ");
      lab6.task3.Student myStudent = null;
      synchronized (request) {
        myStudent = (lab6.task3.Student) _jspx_page_context.getAttribute("myStudent", PageContext.REQUEST_SCOPE);
        if (myStudent == null){
          myStudent = new lab6.task3.Student();
          _jspx_page_context.setAttribute("myStudent", myStudent, PageContext.REQUEST_SCOPE);
        }
      }
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("myStudent"), request);
      out.write("\n");
      out.write("        <div class=\"kotak\">\n");
      out.write("            ");

                int result;

                Class.forName("com.mysql.jdbc.Driver");
                out.println("Step 1: MySQL driver loaded..! <br>");

                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");
                
                out.println("Step 2: Database is connected..! <br>");
                out.println("Step 3: Prepared Statements created..! <br>");
                
                String sql = "INSERT INTO student(stuId,stuName,stuProgram,address) VALUES(?,?,?,?)";
                out.println("SQL Query: " + sql + "<br>");

                PreparedStatement ps = con.prepareStatement(sql);
                out.println("Step 4: Perform insertion of record..! <br>");
                ps.setString(1, myStudent.getStuId());
                ps.setString(2, myStudent.getStuName());
                ps.setString(3, myStudent.getProgram());
                ps.setString(4, myStudent.getAddress());

                result = ps.executeUpdate();
                if(result > 0) 
                {
            
      out.write("\n");
      out.write("                Record successfully added into Student's table..!\n");
      out.write("                <p>Record with student id ");
      out.print( myStudent.getStuId() );
      out.write(" successfully created..!</p>\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend>Details</legend>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Student ID</label>: ");
      out.print( myStudent.getStuId() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Name</label>: ");
      out.print( myStudent.getStuName() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Program</label>: ");
      out.print( myStudent.getProgram() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <label>Address</label>: ");
      out.print( myStudent.getAddress() );
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                </fieldset>\n");
      out.write("            ");

                }

                out.println("Step 5: Close database connection..! <br>");
                con.close();
                out.println("Database connection is closed..!");
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <p class=\"url-back\">\n");
      out.write("            <a href=\"insertStudent.jsp\">back</a> | <a href=\"displayStudent.jsp\"> View List</a> | \n");
      out.write("            &copy;2022 - Asyraf S60494</p>\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
