package org.apache.jsp.task2;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import com.lab8.task2.Customer;

public final class customer_002ddashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');

    //GET USER SESSION
    Customer customer = (Customer) session.getAttribute("username");
    //CHECK IF USER SESSION NULL BACK TO LOGIN PAGE
    if (customer == null) {
        request.setAttribute("message", "<p class='error'>Session expired! Please login.</p>");
        request.getRequestDispatcher("/task2/login.jsp").forward(request, response);
    }

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>LAB 8 - TASK 2</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"author\" content=\"Asyraf S60494\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"");
      out.print( request.getContextPath());
      out.write("/css/main-style.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Insurance Management System</h1>\n");
      out.write("        <div class=\"kotak text-center\">\n");
      out.write("            <div class=\"user-header\">\n");
      out.write("                <b> Welcome ");
      out.print( customer.getName());
      out.write(" </b><a href=\"");
      out.print( request.getContextPath());
      out.write("/task2/logout.jsp\">[ Sign Out ]</a>\n");
      out.write("            </div>\n");
      out.write("            <nav class=\"navbar\">\n");
      out.write("                <a href=\"");
      out.print( request.getContextPath());
      out.write("/task2/customer-dashboard.jsp\">Manage Profile</a> | \n");
      out.write("                <a href=\"");
      out.print( request.getContextPath());
      out.write("/CustomerController?cmd=list-vehicle&userID=");
      out.print( customer.getId());
      out.write("\">Manage Vehicle</a> | \n");
      out.write("                <a href=\"");
      out.print( request.getContextPath());
      out.write("/CustomerController?cmd=list-insurance&userID=");
      out.print( customer.getId());
      out.write("\">Insurance Quotation</a>\n");
      out.write("            </nav>\n");
      out.write("            <main class=\"\">\n");
      out.write("                <h2>Profile</h2>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"text-left\">Email</label>: \n");
      out.write("                    <label class=\"text-left\">");
      out.print( customer.getEmail());
      out.write("</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"text-left\">Full Name</label>:\n");
      out.write("                    <label class=\"text-left\">");
      out.print( customer.getName());
      out.write("</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label class=\"text-left\">IC Number:</label>:\n");
      out.write("                    <label class=\"text-left\">");
      out.print( customer.getIcno());
      out.write("</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <button type=\"submit\" onclick=\"window.location.href = '");
      out.print( request.getContextPath());
      out.write("/CustomerController?cmd=LOADUSER&userID=");
      out.print( customer.getId());
      out.write("';\">Update</button>\n");
      out.write("                </div>\n");
      out.write("            </main>\n");
      out.write("        </div>\n");
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
