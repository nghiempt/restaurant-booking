package com.DAOS;

import com.DBConnection.DBConnection;
import com.Fillters.MD5Hash;
import com.models._User;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author phamnghiem
 */
public class AccountDAO {

    private Connection conn;

    public AccountDAO() {
        conn = DBConnection.getConnection();
    }

    // ========== get all account ========== //
    public ResultSet getAllAccount() {
        ResultSet rs = null;
        try {
            Statement st = conn.createStatement();
            rs = st.executeQuery("SELECT * FROM _User");
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }

    // ========== get account account by username ========== //
    public _User getAccountByUsername(String username) {
        _User st = null;
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM _User WHERE username=?");
            pst.setString(1, username);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                st = new _User(rs.getString("user_id"),
                        rs.getString("user_fullName"),
                        rs.getString("email"),
                        rs.getString("user_role"),
                        rs.getString("user_phone"),
                        rs.getString("username"),
                        rs.getString("password")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
    }

    // ========== get account account by id ========== //
    public _User getAccountById(String user_id) {
        _User st = null;
        try {
            PreparedStatement pst = conn.prepareStatement("SELECT * FROM _User WHERE user_id=?");
            pst.setString(1, user_id);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                st = new _User(rs.getString("user_id"),
                        rs.getString("user_fullName"),
                        rs.getString("email"),
                        rs.getString("user_role"),
                        rs.getString("user_phone"),
                        rs.getString("username"),
                        rs.getString("password")
                );
            }
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return st;
    }

    // ========== add new account ========== //
    public int addAccount(_User user) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        int count = 0;
        String passHash = new MD5Hash().encrypt(user.getPassword());
        try {
            PreparedStatement pst = conn.prepareCall("INSERT INTO _User VALUES(?, ?, ?, ?, ?, ?, ?)");
            pst.setString(1, user.getUser_id());
            pst.setString(2, user.getUser_fullName());
            pst.setString(3, user.getEmail());
            pst.setString(4, user.getUser_role());
            pst.setString(5, user.getUser_phone());
            pst.setString(6, user.getUsername());
            pst.setString(7, passHash);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    // ========== update account ========== //
    public int updateAccount(_User user) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareCall("UPDATE _User SET user_fullName=?,email=?,user_role=?,user_phone=?,username=?,password=? WHERE user_id=?");
            pst.setString(1, user.getUser_fullName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getUser_role());
            pst.setString(4, user.getUser_phone());
            pst.setString(5, user.getUsername());
            pst.setString(6, user.getPassword());
            pst.setString(7, user.getUser_id());
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    // ========== delete account ========== //
    public int deleteAccount(String user_id) {
        int count = 0;
        try {
            PreparedStatement pst = conn.prepareCall("DELETE FROM _User WHERE user_id=?");
            pst.setString(1, user_id);
            count = pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return count;
    }

    // ========== login ========== //
    public boolean authLogin(String username, String password) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (getAccountByUsername(username) == null) {
            return false;
        }
        return getAccountByUsername(username).getPassword().equals(new MD5Hash().encrypt(password));
    }

    // ========== register ========== //
    public void authRegister(_User user) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        addAccount(user);
    }
    
     // ========== check account exist ========== //
    public boolean checkAccountExist(String username) {
        return getAccountByUsername(username) != null;
    }

    // ========== update account info ========== //
    public void updateAccountInfo(_User user) {
        updateAccount(user);
    }
}
