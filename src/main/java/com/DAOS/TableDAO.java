/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.DAOS;

import com.DBConnection.DBConnection;
import com.models._Table;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cuongseven
 */
public class TableDAO {

    private Connection conn;

    public TableDAO() {
        conn = DBConnection.getConnection();
    }

    public List<_Table> getAllTables() {
        List<_Table> tables = new ArrayList<>();
        try {
            Statement st = null;
            ResultSet rs = null;
            String query = "SELECT * FROM `_Table` ORDER BY `_Table`.`table_number` ASC";
            st = conn.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                tables.add(new _Table(rs.getString("table_id"), rs.getString("table_status"), rs.getInt("table_number")));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return tables;
    }

    public int updateTable(String TableID, String TableStatus) {
        int count = 0;
        try {
            PreparedStatement pst = null;

            String query = "UPDATE _Table SET table_status = ? WHERE table_id = ?";
            pst = conn.prepareStatement(query);
            pst.setString(1, TableStatus);
            pst.setString(2, TableID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public _Table getTableByID(String id) {
        _Table table = null;
        try {
            String query = "SELECT * FROM `_Table` WHERE `table_id` LIKE ?";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                table = new _Table(rs.getString("table_id"), rs.getString("table_status"), rs.getInt("table_number"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return table;
    }

    public int getNumberOfTable() {
        try {
            Statement st = null;
            ResultSet rs = null;
            String query = "SELECT COUNT(_Table.table_id) as 't' FROM _Table";
            st = conn.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                return rs.getInt("t");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }
    
        public int deleteTable(String TableID) {
        int count = 0;
        try {
            PreparedStatement pst = null;
            String query = "DELETE FROM `_Table` WHERE `_Table`.`table.id` = ?";
            pst = conn.prepareStatement(query);
            pst.setString(1, TableID);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    public int addNewTable(_Table table) {
        int count = 0;
        try {
            String query = "INSERT INTO `_Table` VALUES (?,?)";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, table.getTable_id());
            pst.setString(2, table.getTable_status());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }
    
//     public int updateTable(_Table table) {
//        int count = 0;
//        try {
//            String query = "UPDATE `foods` SET `Food_name` = ?, `Price` = ?, `F_Status` = ?, `URL_img` = ?, `Category_ID` = ? WHERE `foods`.`Food_ID` = ?";
//            PreparedStatement pst = conn.prepareStatement(query);
//            pst.setString(1, table.get);
//            
//            count = pst.executeUpdate();
//            System.out.println(count);
//            return count;
//        } catch (SQLException ex) {
//            Logger.getLogger(EmployeeDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return count;
//    }
}
