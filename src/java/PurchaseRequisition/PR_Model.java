/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package PurchaseRequisition;
import java.sql.Connection;
import dbConnection.DBconn;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
/**
 *
 * @author nadia
 */
public class PR_Model {
    String mat_id, vendorid, vendorname,address1,address2,postalcode,city,country,currency,tax,code,contact,fax,email,term,link,platform;
    String[] item;
    
    public String getMat_id() {
        return mat_id;
    }

    public void setMat_id(String mat_id) {
        this.mat_id = mat_id;
    }

    public String getVendorid() {
        return vendorid;
    }

    public void setVendorid(String vendorid) {
        this.vendorid = vendorid;
    }

    public String getVendorname() {
        return vendorname;
    }

    public void setVendorname(String vendorname) {
        this.vendorname = vendorname;
    }

    public String getAddress1() {
        return address1;
    }

    public void setAddress1(String address1) {
        this.address1 = address1;
    }

    public String getAddress2() {
        return address2;
    }

    public void setAddress2(String address2) {
        this.address2 = address2;
    }

    public String getPostalcode() {
        return postalcode;
    }

    public void setPostalcode(String postalcode) {
        this.postalcode = postalcode;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency;
    }

    public String getTax() {
        return tax;
    }

    public void setTax(String tax) {
        this.tax = tax;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getFax() {
        return fax;
    }

    public void setFax(String fax) {
        this.fax = fax;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTerm() {
        return term;
    }

    public void setTerm(String term) {
        this.term = term;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getPlatform() {
        return platform;
    }

    public void setPlatform(String platform) {
        this.platform = platform;
    }

    public String[] getItem() {
        return item;
    }

    public void setItem(String[] item) {
        this.item = item;
    }
    
    public void insertNewVendor(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "INSERT INTO vendor values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps=conn.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, null);
            ps.setString(2, getVendorname());
            ps.setString(3, getAddress1());
            ps.setString(4, getAddress2());
            ps.setString(5, getPostalcode());
            ps.setString(6, getCity());
            ps.setString(7, getCountry());
            ps.setString(8, getCode());
            ps.setString(9, getContact());
            ps.setString(10, getFax());
            ps.setString(11, getEmail());
            ps.setString(12, getTerm());
            ps.setString(13, getLink());
            ps.setString(14, getPlatform());  
            ps.setString(15, getCurrency());
            ps.setString(16, getTax());
            ps.executeUpdate();
            
            ResultSet keyResultSet = ps.getGeneratedKeys();
            int newCustomerId = 0;
            if (keyResultSet.next()) {
                newCustomerId = (int) keyResultSet.getInt(1);
                setVendorid(String.valueOf(newCustomerId));
            }
        }catch (SQLException e){
                System.err.println(e);
        }
        db.closeConn();
    }
    public void insertNewMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        //DATE REGISTERED
        //Timestamp time = new Timestamp(System.currentTimeMillis());
        try{
            String query = "INSERT INTO vendormaterial values (?,?)";
            ps=conn.prepareStatement(query);
            ps.setString(1, null);
            ps.setString(2, getVendorname());
            ps.executeUpdate();
            
            System.out.println("File is successfully saved!");
        }catch (SQLException e){
                System.err.println(e);
        }
        db.closeConn();
    }
    public void insertVendorMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "INSERT INTO vendormaterial values (?,?,?)";
            ps=conn.prepareStatement(query);
            ps.setString(1, getVendorid());
            ps.setString(2, getMat_id());
            ps.setString(3, null);
            ps.executeUpdate();
        }catch (SQLException e){
                System.err.println(e);
        }
        db.closeConn();
    }
    public int countRowMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection();     
        PreparedStatement ps;
        ResultSet rs;
        int row=0;
        try{
            ps=conn.prepareStatement("SELECT COUNT(*) AS row FROM vendormaterial WHERE ven_id =?");
            ps.setString(1, getVendorid());
            rs = ps.executeQuery();
            if(rs.next()){
                row=rs.getInt("row");
            }
        }catch (SQLException e){System.err.println(e);}
        
        db.closeConn();
        return row;
    }    
    public String[][] listMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        ResultSet rs;
        int row = countRowMaterial();
        String[][] array = new String[row][4];   
        try{
            ps=conn.prepareStatement("SELECT material.mat_id, material.mat_name, material.mat_desc, inventory.mat_id FROM material\n" +
                                    "INNER JOIN inventory on material.mat_id=inventory.mat_id \n" +
                                    "WHERE  material.mat_id IN(SELECT item_id FROM vendormaterial WHERE ven_id = ?)");
            ps.setString(1, getVendorid());
            rs = ps.executeQuery();
            int i=0;
            while(rs.next()){
                array[i][0]= rs.getString(1);
                array[i][1]= rs.getString(2);
                array[i][2]= rs.getString(3);
                array[i][3]= rs.getString(4);
                i++;
            }
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
        return array;
    }
}
