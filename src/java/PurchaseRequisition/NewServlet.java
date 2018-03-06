/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PurchaseRequisition;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author nadia
 */
public class NewServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet NewServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
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

        HttpSession session=request.getSession(); 
        session.invalidate();
        session=request.getSession(); 
        
        //SET FORM VALUES TO NULL
        session.setAttribute("c_vendorname", "");
        session.setAttribute("c_address1", "");
        session.setAttribute("c_address2", "");
        session.setAttribute("c_postalcode", "");
        session.setAttribute("c_city", "");
        session.setAttribute("c_country", "");
        session.setAttribute("c_country1", "");
        session.setAttribute("c_country2", "");
        session.setAttribute("c_country3", "");
        session.setAttribute("c_country4", "");
        session.setAttribute("c_code", "");
        session.setAttribute("c_code1", "");
        session.setAttribute("c_code2", "");
        session.setAttribute("c_code3", "");
        session.setAttribute("c_code4", "");
        session.setAttribute("c_contact", "");
        session.setAttribute("c_fax", "");
        session.setAttribute("c_email", "");
        session.setAttribute("c_term", "");
        session.setAttribute("c_term1", "");
        session.setAttribute("c_term2", "");
        session.setAttribute("c_term3", "");
        session.setAttribute("c_link", "");
        session.setAttribute("c_platform", "");
        session.setAttribute("c_platform1", "");
        session.setAttribute("c_platform2", "");
        session.setAttribute("c_currency", "");
        session.setAttribute("c_tax", "");
        session.setAttribute("item", "");
        
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("create1tab", "active");
        session.setAttribute("create1content", "show active");
        session.setAttribute("create2tab", "disabled");
        session.setAttribute("create2content", "");
        session.setAttribute("create2submit", "");
        session.setAttribute("create3tab", "disabled");
        session.setAttribute("create3content", "");
        response.sendRedirect("PR_Type_1.jsp");
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
