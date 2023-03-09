package com.DAOS;

import com.DBConnection.DBConnection;
import com.models._Order;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.PreparedStatement;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author cuongseven
 */
public class OrderDAO {

    private Connection connection = null;

    public OrderDAO() {
        connection = DBConnection.getConnection();
    }

    public List<_Order> getAllOrder() {
        List<_Order> list = new ArrayList<>();
        try {
            Statement st = null;
            ResultSet rs = null;
            String query = "select * from `_Order`";
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
//                list.add(new _Order(query, query, 0, 0, order_tableDateTime, query, query, query));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int addNewOrder(_Order order) {

        String query = "INSERT INTO `_Order` (`order_id`, `order_status`, `order_tableNumber`, `order_tablePeople`, `order_tableDate`, `order_tableTimeCheckin`, `order_tableNote`, `invoice_id`, `user_id`,`table_id`) VALUES (?,?,?,?,?,?,?,?,?,?)";
        int count = 0;
//        SimpleDateFormat inputFormat = new SimpleDateFormat("hh:mm a");
//        Date date = inputFormat.parse(order.getOrder_tableTimeCheckin());
//        Time time = new Time(date.getTime());
//
//        // Convert Time object to string in "hh:mm:ss" format
//        SimpleDateFormat outputFormat = new SimpleDateFormat("hh:mm:ss");
//        String convertTimetoString = outputFormat.format(time);
        try ( PreparedStatement pst = connection.prepareStatement(query)) {

            pst.setString(1, order.getOrder_id());
            pst.setString(2, order.getOrder_status());
            pst.setInt(3, order.getOrder_tableNumber());
            pst.setInt(4, order.getOrder_tablePeople());
            pst.setString(5, order.getOrder_tableDate());
            pst.setString(6, order.getOrder_tableTimeCheckin());
            pst.setString(7, order.getOrder_tableNote());
            pst.setString(8, order.getInvoice_id());
            pst.setString(9, order.getUser_id());
            pst.setString(10, order.getTable_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;

    }

    public _Order getOrderByID(String id) {
        _Order order = null;
        try {
            String query = "SELECT * FROM `_Order` WHERE `order_id` LIKE ?";
            PreparedStatement pst = connection.prepareStatement(query);
            pst.setString(1, id);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                order = new _Order(rs.getString("order_id"), rs.getString("order_status"), rs.getInt("order_tableNumber"), rs.getInt("order_tablePeople"), rs.getString("order_tableDate"), rs.getString("order_tableTimeCheckin"), rs.getString("order_tableNote"), rs.getString("invoice_id"), rs.getString("user_id"), rs.getString("table_id"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return order;
    }

    public boolean isExistsOrderID(String orderID) {
        boolean isExist = false;
        _Order order = null;

        try {
            String query = "SELECT _Order.order_id FROM `_Order` WHERE _Order.order_id LIKE ?";

            PreparedStatement pst = connection.prepareStatement(query);
            pst.setString(1, orderID);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                order = new _Order(rs.getString("order_id"));
                if (orderID.equalsIgnoreCase(order.getOrder_id())) {
                    isExist = true;
                    return isExist;
                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return isExist;
    }

    public int getNumberOfOrder() {

        try {
            Statement st = null;
            ResultSet rs = null;
            String query = "SELECT COUNT(order_id) as 'o' FROM `_Order`";
            st = connection.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {
                return rs.getInt("o");
            }
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public void deleteOrderByID(_Order order) {
        String query = "DELETE FROM _Order WHERE order_id = ?";
//        String query2 = "DELETE FROM `_Order` WHERE `_Order`.`order_id` = ?";
//        String query3 = "DELETE FROM _Order WHERE `_Order`.`order_id` = ?";
        try ( PreparedStatement pst = connection.prepareStatement(query)) {
            pst.setString(1, order.getOrder_id());
            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(TableDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
