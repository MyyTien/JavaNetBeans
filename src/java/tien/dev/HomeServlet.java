/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tien.dev;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import tien.dev.data.dao.CategoryDao;
import tien.dev.data.dao.DatabaseDao;
import tien.dev.data.dao.ProductDao;
import tien.dev.data.dao.model.Category;
import tien.dev.data.dao.model.Product;

/**
 *
 * @author ACER
 */
public class HomeServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        List<Product> productList = productDao.findAll();

        request.setAttribute("categoryList", categoryList);
        request.setAttribute("productList", productList);

        request.getRequestDispatcher("Home.jsp").include(request, response);
        
    }
    

    @Override

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
