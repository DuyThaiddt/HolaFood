/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.MenuCategoriesDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.MenuCategories;
import model.MenuItems;
import model.Users;
import model.Item;

/**
 *
 * @author Duy Thai
 */
@WebServlet(name = "cartServlet", urlPatterns = {"/cart"})
public class cartServlet extends HttpServlet {

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
            out.println("<title>Servlet cartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cartServlet at " + request.getContextPath() + "</h1>");
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
    String menu_item_id_static;
    String name_static;
    String item_image_static;
    String price_static;
    String quantity_static;
    int id_static;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        MenuCategoriesDAO menuCategory = new MenuCategoriesDAO();
        List<MenuCategories> listMenuCategories = menuCategory.getAllMenuCategories();
        request.setAttribute("listMenuCategories", listMenuCategories);
        request.setAttribute("users", (Users) request.getSession().getAttribute("users"));

        request.getRequestDispatcher("cart.jsp").forward(request, response);
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
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<Item>();
            session.setAttribute("cart", cart);
        }

        String menu_item_id = request.getParameter("menu_item_id");
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String item_image = request.getParameter("item_image");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        int id = Integer.parseInt(menu_item_id);
        
        boolean productFound = false;
        
        for (Item p : cart) {
            if (p.getMenu_item_id() == id) {
                p.setQuantity(p.getQuantity() + quantity);
                productFound = true;
                break;
            }
        }

        if (!productFound) {
            Item product = new Item();
            product.setItem_image(menu_item_id);
            product.setName(name);
            product.setPrice(price);
            product.setItem_image(item_image);
            product.setQuantity(quantity);
            cart.add(product);
        }
//        

        response.sendRedirect("cart.jsp");
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
