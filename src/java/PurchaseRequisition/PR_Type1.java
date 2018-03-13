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
public class PR_Type1 extends HttpServlet {

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
            out.println("<title>Servlet PR_Type1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet PR_Type1 at " + request.getContextPath() + "</h1>");
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
            case 1: registerVendor(request,response); break;
            case 2: vendorMaterials(request,response); break;
            case 3: completeRegistration(request,response); break;
        }
    }
    protected void registerVendor(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         
        String c_vendorname, c_address1, c_address2,c_postalcode, c_city,c_country,c_code, c_contact,c_fax,c_email,c_term,c_link,c_platform,c_currency,c_tax;
        
        //EXTRACT DATA FROM THE FORM
        c_vendorname = request.getParameter("c_vendorname");
        c_address1 = request.getParameter("c_address1");
        c_address2 = request.getParameter("c_address2");
        c_postalcode = request.getParameter("c_postalcode");
        c_city = request.getParameter("c_city");
        c_country = request.getParameter("c_country");
        c_code = request.getParameter("c_code");
        c_contact = request.getParameter("c_contact");
        c_fax = request.getParameter("c_fax");
        c_email = request.getParameter("c_email");
        c_term = request.getParameter("c_term");
        c_link = request.getParameter("c_link");
        c_platform = request.getParameter("c_platform");
        
        //SET SESSION VALUE FOR THE FORM VARIABLES
        HttpSession session=request.getSession(); 
        session.setAttribute("c_vendorname", c_vendorname);
        session.setAttribute("c_address1", c_address1);
        session.setAttribute("c_address2", c_address2);
        session.setAttribute("c_postalcode", c_postalcode);
        session.setAttribute("c_city", c_city);
        
        if(c_country != null){
            session.setAttribute("c_country", c_country);
            if (c_country.equals("Australia")){
                session.setAttribute("c_country1", "selected");
                session.setAttribute("c_currency","AUD");
                session.setAttribute("c_tax","None");
            }
            if (c_country.equals("China")){
                session.setAttribute("c_country2", "selected");
                session.setAttribute("c_currency","RMB");
                session.setAttribute("c_tax","None");
            }
            if (c_country.equals("Malaysia")){
                session.setAttribute("c_country3", "selected");
                session.setAttribute("c_currency","MYR");
                session.setAttribute("c_tax","GST");
            }
            if (c_country.equals("Singapore")){
                session.setAttribute("c_country4", "selected");
                session.setAttribute("c_currency","SGD");
                session.setAttribute("c_tax","None");
            }
        }
        if(c_code != null){
            session.setAttribute("c_code", c_code);
            if (c_code.equals("+61")){
                session.setAttribute("c_code1", "selected");
            }
            if (c_code.equals("+86")){
                session.setAttribute("c_code2", "selected");
            }
            if (c_code.equals("+60")){
                session.setAttribute("c_code3", "selected");
            }
            if (c_code.equals("+65")){
                session.setAttribute("c_code4", "selected");
            }
        }
        session.setAttribute("c_contact", c_contact);
        session.setAttribute("c_fax", c_fax);
        session.setAttribute("c_email", c_email);
        if(c_term != null){
            session.setAttribute("c_term", c_term);
            if (c_term.equals("Cash On Delivery")){
                session.setAttribute("c_term1", "selected");
            }
            if (c_term.equals("Pay Upfront")){
                session.setAttribute("c_term2", "selected");
            }
            if (c_term.equals("30 Days Credit")){
                session.setAttribute("c_term3", "selected");
            }
        }
        session.setAttribute("c_link", c_link);
        if(c_platform != null){
            session.setAttribute("c_platform", c_platform);
            if (c_platform.equals("None")){
                session.setAttribute("c_platform1", "selected");
            }
            if (c_platform.equals("Taobao")){
                session.setAttribute("c_platform2", "selected");
            }
        }
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("create1tab", "");
        session.setAttribute("create1content", "");
        session.setAttribute("create2tab", "active");
        session.setAttribute("create2content", "show active");
        session.setAttribute("create2submit", "submitRegVendor(1)");
        session.setAttribute("create3tab", "disabled");
        session.setAttribute("create3content", "");
        response.sendRedirect("Purchasing_PurchaseRequisition_1.jsp");
    }
    protected void vendorMaterials(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //EXTRACT DATA FROM THE FORM
        HttpSession session=request.getSession(); 
        int itemno = Integer.parseInt(request.getParameter("itemno"));
        session.setAttribute("item", itemno);
        String x = request.getParameter("item1");
        String y = request.getParameter("iditem");
        session.setAttribute("item1", x);
        session.setAttribute("iditem", y);
        String[][] itemArray = new String[itemno][2]; 
        for (int i=0; i<itemno; i++){
            int j=i+1;
            itemArray[i][0] = request.getParameter("item"+j);
            itemArray[i][1] = request.getParameter("iditem"+j);
            session.setAttribute("item"+j, itemArray[i][0]);
            session.setAttribute("iditem"+j, itemArray[i][1]);
        }
        session.setAttribute("itemarray", itemArray);
        //ACTIVE OR INACTIVE TAB
        session.setAttribute("create1tab", "");
        session.setAttribute("create1content", "");
        session.setAttribute("create2tab", "");
        session.setAttribute("create2content", "");
        session.setAttribute("create2submit", "submitRegVendor(1)");
        session.setAttribute("create3tab", "active");
        session.setAttribute("create3content", "show active");
        response.sendRedirect("Purchasing_PurchaseRequisition_1.jsp");
    }
    protected void completeRegistration(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession(); 
        //VENDOR DETAILS
        PR_Model m = new PR_Model();
        m.setVendorname(session.getAttribute("c_vendorname").toString());
        m.setAddress1(session.getAttribute("c_address1").toString());
        m.setAddress2(session.getAttribute("c_address2").toString());
        m.setPostalcode(session.getAttribute("c_postalcode").toString());
        m.setCity(session.getAttribute("c_city").toString());
        m.setCountry(session.getAttribute("c_country").toString());
        m.setCurrency(session.getAttribute("c_currency").toString());
        m.setContact(session.getAttribute("c_contact").toString());
        m.setTax(session.getAttribute("c_tax").toString());
        m.setCode(session.getAttribute("c_code").toString());
        m.setFax(session.getAttribute("c_fax").toString());
        m.setEmail(session.getAttribute("c_email").toString());
        m.setTerm(session.getAttribute("c_term").toString());
        m.setLink(session.getAttribute("c_link").toString());
        m.setPlatform(session.getAttribute("c_platform").toString());
        
        //INSERT A NEW ROW INTO VENDOR
        m.insertNewVendor();
        int itemno = Integer.parseInt(session.getAttribute("item").toString());
        String[] itemArray = new String[itemno]; 
        for (int i=0; i<itemno;i++){
            int j=i+1;
            itemArray[i]=session.getAttribute("iditem"+j).toString();
        }
        m.setItem(itemArray);
        //INSERT A NEW ROW INTO VENDORMATERIAL
        for (int i=0; i<itemno;i++){
            m.setMat_id(itemArray[i]);
            m.insertVendorMaterial();
        }
        clearSessionUpdate(request,response);
        //STOPPED HERE
        
        int rowmaterial = m.countRowMaterial();
        String[][] array = m.listMaterial();
        session.setAttribute("rowmaterial",rowmaterial);
        for(int i=0; i<rowmaterial; i++){
            session.setAttribute("1material"+i, array[i][0]);
            session.setAttribute("2material"+i, array[i][1]);
            session.setAttribute("3material"+i, array[i][2]);
            session.setAttribute("4material"+i, array[i][3]);
        }
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            out.println("<script>");
            out.println("alert('New Vendor Registered!'); location.href='newjsp.jsp'");
            out.println("</script>");
        }
    }
    protected void clearSessionUpdate(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //SET SESSION VALUE FOR THE FORM VARIABLES
        HttpSession session=request.getSession(); 
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
    
    protected void s(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session=request.getSession(); 
        PR_Model m = new PR_Model();
       /* int rowmaterial = m.countRowMaterial(m.vendorid);
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
        }*/
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
