/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.MenuCategoriesDAO;
import dal.MenuItemsDAO;
import dal.RestaurantsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import model.MenuCategories;
import model.MenuItems;
import model.Restaurants;
import model.Users;

/**
 *
 * @author Duy Thai
 */
@WebServlet(name = "sortServlet", urlPatterns = {"/sort"})
public class sortServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sortServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sortServlet at " + request.getContextPath() + "</h1>");
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
        String a = request.getParameter("a");
        int b = Integer.parseInt(a);
        MenuItemsDAO menuItem = new MenuItemsDAO();
        List<MenuItems> listMenuItems = new ArrayList<>();
        if (b == 0) {
            listMenuItems = menuItem.getAllMenuItemsAsc();
        } else {
            listMenuItems = menuItem.getAllMenuItemsDesc();
        }
        request.setAttribute("listMenuItems", listMenuItems);

        RestaurantsDAO restaurants = new RestaurantsDAO();
        List<Restaurants> listRestaurants = restaurants.getAllRestaurants();
        request.setAttribute("listRestaurants", listRestaurants);

        MenuCategoriesDAO menuCategory = new MenuCategoriesDAO();
        List<MenuCategories> listMenuCategories = menuCategory.getAllMenuCategories();
        request.setAttribute("listMenuCategories", listMenuCategories);

        request.setAttribute("users", (Users) request.getSession().getAttribute("users"));

        request.getRequestDispatcher("discover.jsp").forward(request, response);
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
        processRequest(request, response);
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
