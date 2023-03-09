package com.Controllers;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author giacu
 */
public class HomeController extends HttpServlet {

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
        String type = request.getParameter("type");
        // ========== nav home ========== //
        if (type == null) {
            request.getRequestDispatcher("/home.jsp").forward(request, response);
        } else {
            // ========== nav menu ========== //
            if (type.equalsIgnoreCase("menu")) {
                request.getRequestDispatcher("/menu.jsp").forward(request, response);
            }
            // ========== nav booktable ========== //
            if (type.equalsIgnoreCase("booktable")) {
                request.getRequestDispatcher("/table").forward(request, response);
            }
            // ========== nav cart ========== //
            if (type.equalsIgnoreCase("cart")) {
                request.getRequestDispatcher("/cart.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
