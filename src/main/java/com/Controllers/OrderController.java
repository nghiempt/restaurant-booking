/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.Controllers;

import com.DAOS.AccountDAO;
import com.DAOS.OrderDAO;
import com.DAOS.TableDAO;
import com.models._Order;
import com.models._Table;
import com.models._User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.regex.*;

/**
 *
 * @author cuongseven
 */
public class OrderController extends HttpServlet {

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

        String path = request.getRequestURI();

        HttpSession session = request.getSession();
        String orderID = session.getAttribute("orderID").toString();
        String tableID = session.getAttribute("tableID").toString();

        TableDAO tableDAO = new TableDAO();
        _Table table = tableDAO.getTableByID(tableID);
        String table_status = table.getTable_status();

        if (orderID != null) {
            //Check table stt, if table_status = "busy", not access form-booking Page 
            if (!table_status.equalsIgnoreCase("busy")) {

                if (path.startsWith("/order/" + orderID)) {
                    request.getRequestDispatcher("/form-booking.jsp").forward(request, response);
                } //if you at form-booking, but not booked that "change path" will be not booked successful 
                else {
                    request.getRequestDispatcher("/error.jsp").forward(request, response);
                }
            } else {
                request.getRequestDispatcher("/error.jsp").forward(request, response);

            }
            
        }

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

        String path = request.getRequestURI();

        if (path.startsWith("/order/")) {
            HttpSession session = request.getSession();
            String orderID = session.getAttribute("orderID").toString();

            if (request.getParameter("btnSubmit") != null) {
                String userID = request.getParameter("txtUserID");
                String table_date = request.getParameter("txtDate");
                String timeCheckin = request.getParameter("txtTime");
                int people_number = Integer.parseInt(request.getParameter("txtPeople"));
                String note = request.getParameter("txtNote");
                String tableID = request.getSession().getAttribute("tableID").toString();

                // init parameter
//                String fullname = request.getParameter("txtFullName");
//                String email = request.getParameter("txtEmail");
//                String phone = request.getParameter("txtPhone");
                // init DAO
//                AccountDAO accountDAO = new AccountDAO();
                // check Phone
//                String regexPhone = "^0\\d{9}$";
//                if (!phone.matches(regexPhone)) {
//                    request.getSession().setAttribute("errMessagePhone", "Phone number must be format 08xxxxxxxx !");
//                    response.sendRedirect(request.getContextPath() + "/order/" + orderID);
//                } else {
//                    request.getSession().removeAttribute("errMessagePhone");
//                }
                TableDAO tableDAO = new TableDAO();
                OrderDAO order = new OrderDAO();

                _Table table = tableDAO.getTableByID(tableID);
                int table_number = table.getTable_number();
                // Set trạng thái bàn từ "Available" - "Busy"
                tableDAO.updateTable(tableID, "busy");

                order.addNewOrder(new _Order(orderID, "Processing", table_number, people_number, table_date, timeCheckin, note, null, userID, tableID));

                response.sendRedirect("/menu");
            }

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
