package com.Controllers;

import com.DAOS.OrderDAO;
import com.DAOS.TableDAO;
import com.models._Order;
import com.models._Table;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author cuongseven
 */
public class TableController extends HttpServlet {

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
        String path = request.getRequestURI();
        List<_Table> list;

        //GET useID from cookie. setted at menu-management page.
        Cookie[] cookiess = request.getCookies();
        String userID = "";
        if (cookiess != null) {
            for (Cookie cookie : cookiess) {
                if (cookie.getName().equals("account")) {
                    userID = cookie.getValue();
                    break;
                }
            }
        }

        //Check User isLogin? to bookking a table.
        if (!userID.equals("")) {

            if (path.endsWith("/table")) {
                TableDAO tableDAO = new TableDAO();
                list = tableDAO.getAllTables();
                request.setAttribute("list", list);
                request.getRequestDispatcher("/booking-a-table.jsp").forward(request, response);
            }

            if (path.startsWith("/table/")) {
                String[] s = path.split("/");
                String tableID = s[s.length - 1];

                TableDAO tableDAO = new TableDAO();
                OrderDAO orderDAO = new OrderDAO();

                _Table table = tableDAO.getTableByID(tableID);
                if (table != null) {

                    //c??ch 1: t???o orderID ng???u nhi??n (KH??NG TR??NG L???P).
                    boolean isLoop = true;
                    while (isLoop) {
                        int min = 1;
                        int max = 999;
                        int o_idRandom = (int) Math.floor(Math.random() * (max - min + 1) + min);
                        String OrderID_number = "o" + (o_idRandom + 1);

                        boolean oid_Exists = orderDAO.isExistsOrderID(OrderID_number);
                        if (!oid_Exists) {
                            

                            //l??u session orderID, tableID v??o brower
                            HttpSession sess = request.getSession();
                            sess.setAttribute("orderID", OrderID_number);
                            sess.setAttribute("tableID", tableID);
                            
                            // Chuy???n h?????ng ?????n trang "/order/orderID"
                            response.sendRedirect("/order/" + OrderID_number);

                            //Ph???i c?? return ????? tr??? v???
                            return;
                        }

                    }
                }

            }
        } else {
            response.sendRedirect("/account/login");
        }

//              
        /* //CREATE ORDER l???y TIME - DATE hi???n t???i.
                LocalTime timeNow = LocalTime.now();
                LocalDate dateNow = LocalDate.now();
                String date_format = "yyyy/MM/dd";
                String time_format = "HH:mm:ss";

                DateTimeFormatter datefm = DateTimeFormatter.ofPattern(date_format);
                DateTimeFormatter timefm = DateTimeFormatter.ofPattern(time_format);

                String table_date = dateNow.format(datefm);
                String table_time = timeNow.format(timefm);
//----------------------------------------------------------------------------------------*/
 /*          C??ch2: t???o orderID t??ng theo d???n
                    int o_number = orderDAO.getNumberOfOrder();
                    String OrderID_number = "o" + (o_number + 1);
                    _Order order = orderDAO.getOrderByID(OrderID_number);
                    int people = order.getOrder_tablePeople(); 
         */
//            
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
