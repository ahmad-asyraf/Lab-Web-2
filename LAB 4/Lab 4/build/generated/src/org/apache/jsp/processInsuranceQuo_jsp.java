package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class processInsuranceQuo_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


            double insurance;
            double gst;
            double total = 0;
        
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Insurance Quotation - JSP</title>\n");
      out.write("        <meta name=\"author\" content=\"Asyraf S60494\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/main-style.css\"/>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            String icno = request.getParameter("icno");
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            String ct = request.getParameter("coverageType");
            String dc = request.getParameter("discount");
            
            
            //Third Party
            if(ct.equals("1") && dc.equals("1")) {
                insurance = (3.3/100) * price;
                gst = (6/100) * insurance;
                total = gst + insurance; 
            }
            else if(ct.equals("1") && dc.equals("2")) {
                insurance = (2.5/100) * price;
                gst = (6/100) * insurance;
                total = gst + insurance; }
                else if(ct.equals("1") && dc.equals("3")) {
                insurance = (1.8/100) * price;
                        gst = (6/100) * insurance;
                total = gst + insurance; }
                else if(ct.equals("1") && dc.equals("4")){
                insurance = (1.2/100) * price;
                        gst = (6/100) * insurance;
                total = gst + insurance; }
                
            //Comprehensive
            else if(ct.equals("2") && dc.equals("1")){
                insurance = (3.8/100) * price;
            gst = (6/100) * insurance;
                total = gst + insurance;}
                else if(ct.equals("2") && dc.equals("2")){
                insurance = (3.0/100) * price;
            gst = (6/100) * insurance;
                total = gst + insurance;}
                else if(ct.equals("2") && dc.equals("3")){
                insurance = (2.4/100) * price;
            gst = (6/100) * insurance;
                total = gst + insurance;}
                else if(ct.equals("2") && dc.equals("4")){
                insurance = (1.8/100) * price;
            gst = (6/100) * insurance;
                total = gst + insurance;}
                
            
        
      out.write("\n");
      out.write("        <h1>Insurance Quotation</h1>\n");
      out.write("        <div class=\"kotak\">\n");
      out.write("            <fieldset>\n");
      out.write("                <legend>Details of Insurance Quotation</legend>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>IC No</label>: ");
      out.print( icno );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>Customer name</label>: ");
      out.print( name );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>Market price</label>: ");
      out.print( price );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>Coverage type</label>: ");
      out.print( ct );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>No claim discount (NCD)</label>: ");
      out.print( dc );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>Insurance amount</label>: ");
      out.print( insurance );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>6% GST</label>: ");
      out.print( gst );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <div class=\"form-group\">\n");
      out.write("                    <label>Final amount (+ 6% GST)</label>: ");
      out.print( total );
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </fieldset>\n");
      out.write("        </div>\n");
      out.write("        <p class=\"url-back\">\n");
      out.write("            <a href=\"insuranceQuotation.jsp\">back</a> | &copy;2022 Asyraf S60494\n");
      out.write("        </p>\n");
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
