/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Asyraf
 */
public class EditServlet extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        out.print("<head>"
                + "<title>Users update</title>"
                + "<meta name='author' content='Asyraf S60494'>"
                + "<link rel='stylesheet' href='css/main-style.css'/></head>");
        out.println("<h1>Update User</h1>");
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        
        User e = UserDao.getUserById(id);
        
        out.print("<div class='kotak'>");
        out.print("<form action='EditServlet2' method='POST'>");
        out.print("<div class='form-group'>"
                + "<input type='hidden' name='id' value='"+e.getId()+"'/>"
                + "</div>");
        out.print("<div class='form-group'>"
                + "<label class='label'> Username </label>:"
                + "<input type='text' name='username' value='"+e.getUsername()+"'/>"
                + "</div>");
        out.print("<div class='form-group'>"
                + "<label class='label'> Password </label>:"
                + "<input type='password' name='password' value='"+e.getPassword()+"'/></td>"
                + "</div>");
        out.print("<div class='form-group'>"
                + "<label class='label'> Role </label>:"
                + "<select class='select' name='role' required>"
                + "<option disabled selected>Select role</option>"
                + "<option> Admin </option>"
                + "<option> User </option>"
                + "</select>"
                + "</div>");
        out.print("<div class='form-group'>"
                + "<button type='submit'>Edit & Save</button>"
                + "</div>");
        out.print("</form>");
        out.print("</div>");
        out.print("<p><a href='ViewServlet'>Back to list</a></p>");
        
        out.close();
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