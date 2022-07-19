package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.math.*;
import java.io.*;

public final class Sales_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta name=\"author\" content=\"Asyraf S60494\">\n");
      out.write("        <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap\" rel=\"stylesheet\">\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Calculate Sales Discount - JSP</title>\n");
      out.write("        <style>\n");
      out.write("            html, body { font-family: poppins; }\n");
      out.write("            th { background-color: aliceblue; }\n");
      out.write("            th, td { padding: 10px; }\n");
      out.write("            table { \n");
      out.write("                width: 50%; \n");
      out.write("                margin: auto; \n");
      out.write("            }\n");
      out.write("            table, th, td {\n");
      out.write("                border: 1px solid gray;\n");
      out.write("                border-spacing: 0;\n");
      out.write("            }\n");
      out.write("            p { text-align: center; }\n");
      out.write("            a { text-decoration: none; color: blue; }\n");
      out.write("            a:hover { color: red; }\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            String fName = "C:\\Users\\aimas\\OneDrive - umt.edu.my\\Documents\\CSA3209\\LAB 1\\Lab 1 - JSP\\Sales.csv";
            String thisLine;
            FileInputStream fis = new FileInputStream(fName);
            DataInputStream myInput = new DataInputStream(fis);
            int i = 1;
        
      out.write("\n");
      out.write("        <table>\n");
      out.write("            <tr>\n");
      out.write("                <th>Customer</th>\n");
      out.write("                <th>Cust. Type</th>\n");
      out.write("                <th>Purchase</th>\n");
      out.write("                <th>Discount</th>\n");
      out.write("            </tr>\n");
      out.write("            ");

                while((thisLine = myInput.readLine()) != null)
                {
                    String strar[] = thisLine.split(";");
                    out.print("<tr>");
                    if(strar[1] == "Cash") { out.print("success"); }
                    for(int j = 0; j < strar.length; j++)
                    {
                        out.print("<td>" + strar[j] + "</td>");
                        
                    }
                        out.print("<td>");
                        if(thisLine.contains("Cash")) 
                        { 
                            java.util.Formatter myFormat = new java.util.Formatter();
                            double calc = Double.parseDouble(strar[2])*10/100;
                            out.print(myFormat.format("%.2f",calc));
                        }
                        else {
                            out.print("0.00");
                        }
                        out.print("</td>");
                    out.print("</tr>");
                    i++;
                }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("        <p>&copy; Asyraf - S60494, 2022 | <a href=\"index.jsp\">back</a></p>\n");
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
