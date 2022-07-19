/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asyraf
 */
public class AccountServlet extends HttpServlet {
    
    HashMap<String, String[]> account = new HashMap();
    
    @Override
    public void init() throws ServletException {
        super.init();
        account.put("Ali", new String[]{"31/01/2019: 2000.00","28/02/2019: 3000.00"});
        account.put("Ahmad", new String[]{"31/01/2019: 100.00","28/02/2019: 5000.00"});
        account.put("Muthu", new String[]{"31/01/2019: 1000.00","28/02/2019: 2000.00"});
    }

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String userid_login = (String)request.getAttribute("userid");
        
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Account Servlet</title>");
            out.println("<meta name='author' content='Asyraf S60494'>"); 
            out.println("<link rel='stylesheet' href='css/main-style.css'>");
            out.println("</head>");
            out.println("<body>");
            
            if(account.get(userid_login) == null) {
                out.println("<h1>Sorry, no information found!</h1>");
            }
            else {
                out.println("<div class='header'>"
                        + "<h1>Account status: " + userid_login + "</h1>"
                        + "</div>");
                out.println("<div class='kotak'>");
                for(String tempAcc: account.get(userid_login)) {
                    out.println("<h2>"+ tempAcc + "</h2>");
                }
                out.println("</div>");
            }
            out.println("<div class='footer'>");
            out.println("<p>&copy; Asyraf - S60494, 2022 | <a href='index.html'>back</a></p>");
            out.println("</div>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
