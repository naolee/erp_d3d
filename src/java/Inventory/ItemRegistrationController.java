/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

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
public class ItemRegistrationController extends HttpServlet {

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
            out.println("<title>Servlet ItemRegistrationController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ItemRegistrationController at " + request.getContextPath() + "</h1>");
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
        
        int submit_type = Integer.parseInt(request.getParameter("submit_type"));
        
        //DETERMINE WHICH FORM IS SUBMITTED
        switch(submit_type){
            case 1: previewInsertMaterial(request,response); break;
            case 2: insertMaterial(request,response); break;
            case 3: previewUpdateMaterial(request,response); break;
            case 4: updateMaterial(request,response); break;
            case 5: deleteMaterial(request,response); break;
            case 7: displaytMaterial(request,response); break;
        }
    }
    protected void previewInsertMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String c_materialname, c_desc, c_subclass, c_type,c_func1, c_func2,c_subfunc;
        
        //EXTRACT DATA FROM THE FORM
        c_materialname = request.getParameter("c_materialname");
        c_desc = request.getParameter("c_desc");
        c_subclass = request.getParameter("c_subclass");
        c_type = request.getParameter("c_type");
        c_func1 = request.getParameter("c_func1");
        c_func2 = request.getParameter("c_func2");
        c_subfunc = request.getParameter("c_subfunc");
        
        //SET SESSION VALUE FOR THE FORM VARIABLES
        HttpSession session=request.getSession(); 
        session.setAttribute("c_materialname", c_materialname);
        session.setAttribute("c_desc", c_desc);
        //
        if(c_subclass!= null){
            session.setAttribute("c_subclass", c_subclass);
            if (c_subclass.equals("Acrylic"))
                session.setAttribute("c_subclass1", "selected");
            if (c_subclass.equals("Aluminium Profile + Accessories"))
                session.setAttribute("c_subclass2", "selected");
            if (c_subclass.equals("Bearing"))
                session.setAttribute("c_subclass3", "selected");
            if (c_subclass.equals("Belt"))
                session.setAttribute("c_subclass4", "selected");
            if (c_subclass.equals("Brass"))
                session.setAttribute("c_subclass5", "selected");
            if (c_subclass.equals("CNC Aluminium"))
                session.setAttribute("c_subclass6", "selected");
            if (c_subclass.equals("Electronics"))
                session.setAttribute("c_subclass7", "selected");
            if (c_subclass.equals("Magnet"))
                session.setAttribute("c_subclass8", "selected");
            if (c_subclass.equals("Non-Standard Fastener "))
                session.setAttribute("c_subclass9", "selected");
            if (c_subclass.equals("Others"))
                session.setAttribute("c_subclass10", "selected");
            if (c_subclass.equals("Peek"))
                session.setAttribute("c_subclass11", "selected");
            if (c_subclass.equals("Pulley"))
                session.setAttribute("c_subclass12", "selected");
            if (c_subclass.equals("Rod"))
                session.setAttribute("c_subclass13", "selected");
            if (c_subclass.equals("SD Card"))
                session.setAttribute("c_subclass14", "selected");
            if (c_subclass.equals("Stepper Motor"))
                session.setAttribute("c_subclass15", "selected");
            if (c_subclass.equals("Tubings/Tapes/Cable Ties"))
                session.setAttribute("c_subclass16", "selected");
            if (c_subclass.equals("Wire Harness"))
                session.setAttribute("c_subclass17", "selected");
            
        }
            
        if(c_type!= null){
            session.setAttribute("c_type", c_type);
            if (c_type.equals("Custom"))
                session.setAttribute("c_type1", "selected");
            if (c_type.equals("Standard"))
                session.setAttribute("c_type2", "selected");
        }
        
        if(c_func1!= null){
            session.setAttribute("c_func1", c_func1);
            if (c_func1.equals("Build Platform"))
                session.setAttribute("c_func11", "selected");
            if (c_func1.equals("Control"))
                session.setAttribute("c_func12", "selected");
            if (c_func1.equals("Gantry"))
                session.setAttribute("c_func13", "selected");
            if (c_func1.equals("Obsolete"))
                session.setAttribute("c_func14", "selected");
            if (c_func1.equals("Power Supply"))
                session.setAttribute("c_func15", "selected");
            if (c_func1.equals("Structure"))
                session.setAttribute("c_func16", "selected");
            if (c_func1.equals("TBC"))
                session.setAttribute("c_func17", "selected");
            if (c_func1.equals("User Interface"))
                session.setAttribute("c_func18", "selected");
        }
        if(c_func2 != null){
            session.setAttribute("c_func2", c_func2);
            if (c_func2.equals("Extruder"))
                session.setAttribute("c_func21", "selected");
            if (c_func2.equals("Other"))
                session.setAttribute("c_func22", "selected");
        }
        if(c_subfunc != null){
            session.setAttribute("c_subfunc", c_subfunc);
            if (c_subfunc.equals("X"))
                session.setAttribute("c_subfunc1", "selected");
            if (c_subfunc.equals("Y"))
                session.setAttribute("c_subfunc2", "selected");
            if (c_subfunc.equals("Z"))
                session.setAttribute("c_subfunc3", "selected");
        }       
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("create1tab", "");
        session.setAttribute("create1content", "");
        session.setAttribute("create2tab", "active");
        session.setAttribute("create2content", "show active");
        
        response.sendRedirect("Inventory_ItemRegistration.jsp");
    } 
    protected void insertMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(); 
        //MATERIAL DETAILS
        InventoryModel m = new InventoryModel();
        m.setMaterialname(session.getAttribute("c_materialname").toString());
        m.setDesc(session.getAttribute("c_desc").toString());
        m.setSubclass(session.getAttribute("c_subclass").toString());
        m.setType(session.getAttribute("c_type").toString());
        m.setFunc1(session.getAttribute("c_func1").toString());
        m.setFunc2(session.getAttribute("c_func2").toString());
        m.setSubfunc(session.getAttribute("c_subfunc").toString());
        
        m.insertNewMaterial();
        m.insertNewInventory();
        updateTableContent(request,response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<script>");
            out.println("alert('New Material Added!'); location.href='Inventory_ItemRegistration.jsp'");
            out.println("</script>");
        }
    }   
    protected void previewUpdateMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String mat_id, u_materialname, u_desc, u_subclass, u_type,u_func1, u_func2,u_subfunc;

        //EXTRACT DATA FROM THE FORM
        mat_id= request.getParameter("mat_id");
        u_materialname = request.getParameter("u_materialname");
        u_desc = request.getParameter("u_desc");
        u_subclass = request.getParameter("u_subclass");
        u_type = request.getParameter("u_type");
        u_func1 = request.getParameter("u_func1");
        u_func2 = request.getParameter("u_func2");
        u_subfunc = request.getParameter("u_subfunc");
        
        //SET SESSION VALUE FOR THE FORM VARIABLES
        HttpSession session=request.getSession(); 
        session.setAttribute("mat_id", mat_id);
        session.setAttribute("u_materialname", u_materialname);
        session.setAttribute("u_desc", u_desc);
        //
        if(u_subclass!= null){
            session.setAttribute("u_subclass", u_subclass);
            if (u_subclass.equals("Acrylic"))
                session.setAttribute("u_subclass1", "selected");
            if (u_subclass.equals("Aluminium Profile + Accessories"))
                session.setAttribute("u_subclass2", "selected");
            if (u_subclass.equals("Bearing"))
                session.setAttribute("u_subclass3", "selected");
            if (u_subclass.equals("Belt"))
                session.setAttribute("u_subclass4", "selected");
            if (u_subclass.equals("Brass"))
                session.setAttribute("u_subclass5", "selected");
            if (u_subclass.equals("CNC Aluminium"))
                session.setAttribute("u_subclass6", "selected");
            if (u_subclass.equals("Electronics"))
                session.setAttribute("u_subclass7", "selected");
            if (u_subclass.equals("Magnet"))
                session.setAttribute("u_subclass8", "selected");
            if (u_subclass.equals("Non-Standard Fastener "))
                session.setAttribute("u_subclass9", "selected");
            if (u_subclass.equals("Others"))
                session.setAttribute("u_subclass10", "selected");
            if (u_subclass.equals("Peek"))
                session.setAttribute("u_subclass11", "selected");
            if (u_subclass.equals("Pulley"))
                session.setAttribute("u_subclass12", "selected");
            if (u_subclass.equals("Rod"))
                session.setAttribute("u_subclass13", "selected");
            if (u_subclass.equals("SD Card"))
                session.setAttribute("u_subclass14", "selected");
            if (u_subclass.equals("Stepper Motor"))
                session.setAttribute("u_subclass15", "selected");
            if (u_subclass.equals("Tubings/Tapes/Cable Ties"))
                session.setAttribute("u_subclass16", "selected");
            if (u_subclass.equals("Wire Harness"))
                session.setAttribute("u_subclass17", "selected");
        }
            
        if(u_type!= null){
            session.setAttribute("u_type", u_type);
            if (u_type.equals("Custom"))
                session.setAttribute("u_type1", "selected");
            if (u_type.equals("Standard"))
                session.setAttribute("u_type2", "selected");
        }
        
        if(u_func1!= null){
            session.setAttribute("u_func1", u_func1);
            if (u_func1.equals("Build Platform"))
                session.setAttribute("u_func11", "selected");
            if (u_func1.equals("Control"))
                session.setAttribute("u_func12", "selected");
            if (u_func1.equals("Gantry"))
                session.setAttribute("u_func13", "selected");
            if (u_func1.equals("Obsolete"))
                session.setAttribute("u_func14", "selected");
            if (u_func1.equals("Power Supply"))
                session.setAttribute("u_func15", "selected");
            if (u_func1.equals("Structure"))
                session.setAttribute("u_func16", "selected");
            if (u_func1.equals("TBC"))
                session.setAttribute("u_func17", "selected");
            if (u_func1.equals("User Interface"))
                session.setAttribute("u_func18", "selected");
        }
        if(u_func2 != null){
            session.setAttribute("u_func2", u_func2);
            if (u_func2.equals("Extruder"))
                session.setAttribute("u_func21", "selected");
            if (u_func2.equals("Other"))
                session.setAttribute("u_func22", "selected");
        }
        if(u_subfunc != null){
            session.setAttribute("u_subfunc", u_subfunc);
            if (u_subfunc.equals("X"))
                session.setAttribute("u_subfunc1", "selected");
            if (u_subfunc.equals("Y"))
                session.setAttribute("u_subfunc2", "selected");
            if (u_subfunc.equals("Z"))
                session.setAttribute("u_subfunc3", "selected");
        }       
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("update1tab", "");
        session.setAttribute("update1content", "");
        session.setAttribute("update2tab", "active");
        session.setAttribute("update2content", "show active");
        
        session.setAttribute("createpanel", "");
        session.setAttribute("createtab", "");
        session.setAttribute("updatepanel", "active");
        session.setAttribute("updatetab", "show active");
        
        response.sendRedirect("Inventory_ItemRegistration.jsp");
    }   
    protected void updateMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(); 
        //MATERIAL DETAILS
        InventoryModel m = new InventoryModel();
        m.setMat_id(session.getAttribute("mat_id").toString());
        m.setMaterialname(session.getAttribute("u_materialname").toString());
        m.setDesc(session.getAttribute("u_desc").toString());
        m.setSubclass(session.getAttribute("u_subclass").toString());
        m.setType(session.getAttribute("u_type").toString());
        m.setFunc1(session.getAttribute("u_func1").toString());
        m.setFunc2(session.getAttribute("u_func2").toString());
        m.setSubfunc(session.getAttribute("u_subfunc").toString());
        
        m.updateMaterial();
        updateTableContent(request,response);
        clearSessionUpdate(request,response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<script>");
            out.println("alert('Material Updated!'); location.href='Inventory_ItemRegistration.jsp'");
            out.println("</script>");
        }
    }   
    protected void deleteMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(); 
        //MATERIAL DETAILS
        InventoryModel m = new InventoryModel();
        m.setMat_id(request.getParameter("d_mat_id"));
        m.deleteMaterial();
        updateTableContent(request,response);
        clearSessionUpdate(request,response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<script>");
            out.println("alert('Material Deleted!'); location.href='Inventory_ItemRegistration.jsp'");
            out.println("</script>");
        }
        
    }
    protected void displaytMaterial(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }   
    protected void updateTableContent(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session=request.getSession(); 
        InventoryModel m = new InventoryModel();
        String[][] array = m.listMaterial();
        session.setAttribute("rowmaterial",m.countRowMaterial());
        for(int i=0; i<m.countRowMaterial(); i++){
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
    protected void clearSessionUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //SET SESSION VALUE FOR THE FORM VARIABLES
        HttpSession session=request.getSession(); 
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
    }
    
    public void showMessage(int type){
        
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
