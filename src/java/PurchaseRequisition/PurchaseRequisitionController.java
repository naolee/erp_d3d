/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PurchaseRequisition;

import Inventory.InventoryModel;
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
public class PurchaseRequisitionController extends HttpServlet {

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
            out.println("<title>Servlet PurchaseRequisitionController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PurchaseRequisitionController at " + request.getContextPath() + "</h1>");
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
        PR_Model m = new PR_Model();
        //int rowmaterial = m.countRowMaterial(m.vendorid);
        /*String[][] array = m.listVendorMaterial(m.vendorid);
        session.setAttribute("rowmaterial",rowmaterial);
        for(int i=0; i<rowmaterial; i++){
            session.setAttribute("1material"+i, array[i][0]);
            session.setAttribute("2material"+i, array[i][1]);
            session.setAttribute("3material"+i, array[i][2]);
            session.setAttribute("4material"+i, array[i][3]);
            session.setAttribute("5material"+i, array[i][4]);
            session.setAttribute("6material"+i, array[i][5]);
            session.setAttribute("7material"+i, array[i][6]);
            session.setAttribute("8material"+i, array[i][7]);
        }
        response.sendRedirect("newjsp.jsp");*/
    }
/*
    protected void updateTableContent(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(); 
        PR_Model m = new PR_Model();
        int rowmaterial = m.countRowMaterial(m.vendorid);
        String[][] array = m.listVendorMaterial(m.vendorid);
        session.setAttribute("rowmaterial",rowmaterial);
        for(int i=0; i<rowmaterial; i++){
            session.setAttribute("1material"+i, array[i][0]);
            session.setAttribute("2material"+i, array[i][1]);
            session.setAttribute("3material"+i, array[i][2]);
            session.setAttribute("4material"+i, array[i][3]);
            session.setAttribute("5material"+i, array[i][4]);
            session.setAttribute("6material"+i, array[i][5]);
            session.setAttribute("7material"+i, array[i][6]);
            session.setAttribute("8material"+i, array[i][7]);
        }
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
