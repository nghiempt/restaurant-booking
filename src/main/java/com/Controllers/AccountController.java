package com.Controllers;

import com.DAOS.AccountDAO;
import com.models._User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
//import java.io.PrintWriter;

public class AccountController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String path = request.getRequestURI();
        // ========== login ========== //
        if (path.endsWith("/account/login")) {
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        // ========== error login ========== //
        if (path.endsWith("/account/error_login")) {
            request.getRequestDispatcher("/error-login.jsp").forward(request, response);
        }
        // ========== register ========== //
        if (path.endsWith("/account/register")) {
            request.getRequestDispatcher("/register.jsp").forward(request, response);
        }
        // ========== logout ========== //
        if (path.endsWith("account/logout")) {
            Cookie cookie = new Cookie("account", null);
            cookie.setMaxAge(0);
            cookie.setPath("/");
            response.addCookie(cookie);
            response.sendRedirect(request.getContextPath() + "/");
        }
        // ========== profile ========== //
        if (path.endsWith("/account/profile")) {
            request.getRequestDispatcher("/user-profile.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, UnsupportedEncodingException {
        PrintWriter out = response.getWriter();

        // ========== login controller ========== //
        if (request.getParameter("btn_login") != null) {
            // init parameter
            String username = request.getParameter("inputUsername");
            String password = request.getParameter("inputPassword");

            // init DAO
            AccountDAO accountDAO = new AccountDAO();

            try {
                // check login
                if (!accountDAO.authLogin(username, password)) {
                    response.sendRedirect(request.getContextPath() + "/account/login");
                    request.getSession().setAttribute("errorMessage", "Your username or password is wrong!");
                } else {
                    request.getSession().removeAttribute("errorMessage");
                    // save cookie
                    Cookie cookie = new Cookie("account", accountDAO.getAccountByUsername(username).getUser_id());
                    cookie.setMaxAge(3 * 24 * 60 * 60);
                    response.addCookie(cookie);

                    // check permision
                    switch (accountDAO.getAccountByUsername(username).getUser_role()) {
                        case "staff":
                            response.sendRedirect(request.getContextPath() + "/order-management.jsp");
                            break;
                        case "admin":
                            response.sendRedirect(request.getContextPath() + "/menu-management.jsp");
                            break;
                        default:
                            response.sendRedirect(request.getContextPath() + "/");
                            break;
                    }
                }
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        // ========== register controller  ========== //
        if (request.getParameter("btn_register") != null) {
            try {
                // init parameter
                String fullName = request.getParameter("inputFullName");
                String email = request.getParameter("inputEmail");
                String phone = request.getParameter("inputPhone");
                String username = request.getParameter("inputUsername");
                String password = request.getParameter("inputPassword");

                // init DAO
                AccountDAO accountDAO = new AccountDAO();

                // get length of table account
                ResultSet rs = accountDAO.getAllAccount();
                int i = 0;
                while (rs.next()) {
                    i++;
                }

                if (accountDAO.checkAccountExist(username)) {
                    out.print("Account has exist");
                } else {
                    // init model
                    _User acc = new _User(String.valueOf(i), fullName, email, "user", phone, username, password);

                    // craete function
                    accountDAO.authRegister(acc);

                    response.sendRedirect(request.getContextPath() + "/");
                }
            } catch (SQLException | NoSuchAlgorithmException ex) {
                Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        // ========== update account info ========== //
        if (request.getParameter("btn_update") != null) {
            // init parameter
            String username = request.getParameter("inputUsername");
            String fullName = request.getParameter("inputFullname");
            String email = request.getParameter("inputEmail");
            String phone = request.getParameter("inputPhone");
            
//            out.print(fullName);

            // init DAO
            AccountDAO accountDAO = new AccountDAO();

            _User accountUpdate = accountDAO.getAccountByUsername(username);

            // init model
            _User acc = new _User(accountUpdate.getUser_id(), fullName, email, accountUpdate.getUser_role(), phone, accountUpdate.getUsername(), accountUpdate.getPassword());

            // update function
            accountDAO.updateAccountInfo(acc);

            response.sendRedirect(request.getContextPath() + "/");
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
