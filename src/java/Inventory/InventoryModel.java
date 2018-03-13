/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Inventory;

import dbConnection.DBconn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author nadia
 */
public class InventoryModel {
    String mat_id, materialname, desc, subclass, type, func1, func2, subfunc;

    public String getMat_id() {
        return mat_id;
    }

    public void setMat_id(String mat_id) {
        this.mat_id = mat_id;
    }

    public String getMaterialname() {
        return materialname;
    }

    public void setMaterialname(String materialname) {
        this.materialname = materialname;
    }

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    public String getSubclass() {
        return subclass;
    }

    public void setSubclass(String subclass) {
        this.subclass = subclass;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getFunc1() {
        return func1;
    }

    public void setFunc1(String func1) {
        this.func1 = func1;
    }

    public String getFunc2() {
        return func2;
    }

    public void setFunc2(String func2) {
        this.func2 = func2;
    }

    public String getSubfunc() {
        return subfunc;
    }

    public void setSubfunc(String subfunc) {
        this.subfunc = subfunc;
    }
    
    public void insertNewMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "INSERT INTO material VALUES (?,?,?,?,?,?,?,?)";
            ps=conn.prepareStatement(query,PreparedStatement.RETURN_GENERATED_KEYS);
            ps.setString(1, null);
            ps.setString(2, getMaterialname());
            ps.setString(3, getDesc());
            ps.setString(4, getSubclass());
            ps.setString(5, getType());
            ps.setString(6, getFunc1());
            ps.setString(7, getFunc2());
            ps.setString(8, getSubfunc());
            ps.executeUpdate();
            
            ResultSet keyResultSet = ps.getGeneratedKeys();
            int mat_id = 0;
            if (keyResultSet.next()) {
                mat_id = (int) keyResultSet.getInt(1);
                setMat_id(String.valueOf(mat_id));
            }
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
    }
    
    public void updateMaterial(){
    DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "UPDATE material SET mat_name=?,mat_desc=?,mat_subclass=?,mat_type=?,mat_func1=?,mat_func2=?,mat_subfunc=? WHERE mat_id=?";
            ps=conn.prepareStatement(query);
            ps.setString(1, getMaterialname());
            ps.setString(2, getDesc());
            ps.setString(3, getSubclass());
            ps.setString(4, getType());
            ps.setString(5, getFunc1());
            ps.setString(6, getFunc2());
            ps.setString(7, getSubfunc());
            ps.setString(8, getMat_id());
            ps.executeUpdate();
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
    }
    public void deleteMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "DELETE FROM material WHERE mat_id=?";
            ps=conn.prepareStatement(query);
            ps.setString(1, getMat_id());
            ps.executeUpdate();
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
    }
    public void displayMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "SELECT mat_desc FROM erp.material WHERE mat_id IN \n" +
                           "	( SELECT item_id FROM erp.vendormaterial WHERE ven_id = 1001 );";
            ps=conn.prepareStatement(query);
            ps.setString(1, null);
            ps.setString(2, getMaterialname());
            ps.setString(3, getDesc());
            ps.setString(4, getSubclass());
            ps.setString(5, getType());
            ps.setString(6, getFunc1());
            ps.setString(7, getFunc2());
            ps.setString(8, getSubfunc());
            ps.executeUpdate();
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
    }
    
    public void insertNewInventory(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        try{
            String query = "INSERT INTO inventory VALUES (?,?,?,?)";
            ps=conn.prepareStatement(query);
            ps.setString(1, getMat_id());
            ps.setString(2, null);
            ps.setInt(3, 0);
            ps.setDouble(4, 0);
            ps.executeUpdate();
        }catch (SQLException e){
            System.err.println(e);
        }
        db.closeConn();
    }
    public String[][] listMaterial(){
        DBconn db = new DBconn();
        Connection conn = db.Connection(); 
        PreparedStatement ps;
        ResultSet rs;
        int row = countRowMaterial();
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
    public int countRowMaterial(){
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
}
