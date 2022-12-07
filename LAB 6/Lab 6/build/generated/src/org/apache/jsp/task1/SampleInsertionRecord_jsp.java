package org.apache.jsp.task1;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class SampleInsertionRecord_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 8192, true);
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Task 1 - Sample Insertion Records</title>\n");
      out.write("        <meta name=\"author\" content=\"Asyraf S60494\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../css/main-style.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 class=\"text-center pt pb\">Lab 6 - Task 1 Sample Insertion Records into MySQL through JSP's page</h1>\n");
      out.write("        <div class=\"kotak\">\n");
      out.write("            ");

                int result;

                Class.forName("com.mysql.jdbc.Driver");
                out.println("Step 1: MySQL driver loaded..!");
            
      out.write(" \n");
      out.write("            <br>\n");
      out.write("            ");

                String db_url = "jdbc:mysql://localhost:3306/csf3209";
                Connection con = DriverManager.getConnection(db_url, "root", "");
                out.println("Step 2: Database is connected..!");
            
      out.write("\n");
      out.write("            <br>\n");
      out.write("            ");

                out.println("Step 3: Prepared Statements created..!");
                String sql = "INSERT INTO FirstTable VALUE(?)";
                PreparedStatement ps = con.prepareStatement(sql);
            
      out.write("\n");
      out.write("            <br>\n");
      out.write("            ");

                out.println("Step 4: Perform Insertion of record..!");
                String name = "Welcome to access MySQL database with JSP..!";
                ps.setString(1, name);

                result = ps.executeUpdate();

                if(result > 0) {
            
      out.write("\n");
      out.write("            <br>\n");
      out.write("            ");

                out.println("Step 5: Close database connection..!");
                out.println (" ");
                out.println("Database connection is closed..!");
                out.print("<p>" + "The record: (" + name + ") is successfully created..!"
                + "</p>");
                }
                con.close();
            
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <p class=\"url-back\"><a href=\"../index.html\">back</a> | &copy;2022 - Asyraf S60494</p>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
