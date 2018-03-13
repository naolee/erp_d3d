/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PurchaseRequisition;

import dbConnection.DBconn;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
        //PURCHASE REQUISITION
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
        
        //MATERIAL REGISTRATION (INSERT)
        session.setAttribute("c_materialname", "");
        session.setAttribute("c_desc", "");
        session.setAttribute("c_subclass", "");
        session.setAttribute("c_type", "");
        session.setAttribute("c_func1", "");
        session.setAttribute("c_func2", "");
        session.setAttribute("c_subfunc", "");
        //MATERIAL REGISTRATION (UPDATE)//SET SESSION VALUE FOR THE FORM VARIABLES
        session.setAttribute("mat_id", "");
        session.setAttribute("u_materialname", "");
        session.setAttribute("u_desc", "");
        session.setAttribute("u_subclass", "");
        session.setAttribute("u_subclass1", "");
        session.setAttribute("u_subclass2", "");
        session.setAttribute("u_subclass3", "");
        session.setAttribute("u_subclass4", "");
        session.setAttribute("u_subclass5", "");
        session.setAttribute("u_subclass6", "");
        session.setAttribute("u_subclass7", "");
        session.setAttribute("u_subclass8", "");
        session.setAttribute("u_subclass9", "");
        session.setAttribute("u_subclass10", "");
        session.setAttribute("u_subclass11", "");
        session.setAttribute("u_subclass12", "");
        session.setAttribute("u_subclass13", "");
        session.setAttribute("u_subclass14", "");
        session.setAttribute("u_subclass15", "");
        session.setAttribute("u_subclass16", "");
        session.setAttribute("u_subclass17", "");
        session.setAttribute("u_type", "");
        session.setAttribute("u_type1", "");
        session.setAttribute("u_type2", "");
        session.setAttribute("u_func1", "");
        session.setAttribute("u_func11", "");
        session.setAttribute("u_func12", "");
        session.setAttribute("u_func13", "");
        session.setAttribute("u_func14", "");
        session.setAttribute("u_func15", "");
        session.setAttribute("u_func16", "");
        session.setAttribute("u_func17", "");
        session.setAttribute("u_func18", "");
        session.setAttribute("u_func2", "");
        session.setAttribute("u_func21", "");
        session.setAttribute("u_func22", "");
        session.setAttribute("u_subfunc", "");
        session.setAttribute("u_subfunc1", "");
        session.setAttribute("u_subfunc2", "");
        session.setAttribute("u_subfunc3", "");
        
        
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("create1panel", " showactive");
        session.setAttribute("create1tab", "active");
        session.setAttribute("create1content", "show active");
        session.setAttribute("create2tab", "disabled");
        session.setAttribute("create2content", "");
        session.setAttribute("create2submit", "");
        session.setAttribute("create3tab", "disabled");
        session.setAttribute("create3content", "");
        
        session.setAttribute("update1tab", "active");
        session.setAttribute("update1content", "show active");
        session.setAttribute("update2tab", "disabled");
        session.setAttribute("update2content", "");
        
        session.setAttribute("createpanel", "active");
        session.setAttribute("createtab", "show active");
        session.setAttribute("updatepanel", "");
        session.setAttribute("updatetab", "");
        
        String[][] array = mat();
        session.setAttribute("rowmaterial",countRow());
        for(int i=0; i<countRow(); i++){
            session.setAttribute("1material"+i, array[i][0]);
            session.setAttribute("2material"+i, array[i][1]);
            session.setAttribute("3material"+i, array[i][2]);
            session.setAttribute("4material"+i, array[i][3]);
            session.setAttribute("5material"+i, array[i][4]);
            session.setAttribute("6material"+i, array[i][5]);
            session.setAttribute("7material"+i, array[i][6]);
            session.setAttribute("8material"+i, array[i][7]);
        }
        
        response.sendRedirect("index.jsp");
    }
    public int countRow(){
        DBconn db = new DBconn();
        Connection conn = db.Connection();     
        PreparedStatement ps;
        ResultSet rs;
        int row=0;
        try{
            ps=conn.prepareStatement("SELECT COUNT(*) AS row FROM material");
            rs = ps.executeQuery();
            if(rs.next()){
                row=rs.getInt("row");
            }
        }catch (SQLException e){System.err.println(e);}
        
        db.closeConn();
        return row;
    }
    
    public String[][] mat(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        ResultSet rs;
        int row = countRow();
        String[][] array = new String[row][8];   
        try{
            ps=conn.prepareStatement("SELECT * FROM material");
            rs = ps.executeQuery();
            int i=0;
            while(rs.next()){
                array[i][0]= rs.getString(1);
                array[i][1]= rs.getString(2);
                array[i][2]= rs.getString(3);
                array[i][3]= rs.getString(4);
                array[i][4]= rs.getString(5);
                array[i][5]= rs.getString(6);
                array[i][6]= rs.getString(7);
                array[i][7]= rs.getString(8);
                i++;
            }
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
        return array;
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
