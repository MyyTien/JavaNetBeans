/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tien.dev.admin.product;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;
import tien.dev.admin.BaseAdminServlet;
import tien.dev.data.dao.CategoryDao;
import tien.dev.data.dao.DatabaseDao;
import tien.dev.data.dao.ProductDao;
import tien.dev.data.dao.model.Category;
import tien.dev.data.dao.model.Product;



/**
 *
 * @author My Tien
 */
@MultipartConfig
public class CreateProductServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryDao categoryDao = DatabaseDao.getInstance().getCategoryDao();
        List<Category> categoryList = categoryDao.findAll();

        request.setAttribute("categoryList", categoryList);
        request.getRequestDispatcher("admin/products/create.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uploadPath = getServletContext().getRealPath("") + File.separator + "upload";

        // Lưu hình ảnh sản phẩm vào thư mục trên server
        // Lưu file vào thư mục trên server
        Part filePart = request.getPart("img");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        InputStream fileContent = filePart.getInputStream();
        Files.copy(fileContent, new File(uploadPath + File.separator + fileName).toPath());

// Lưu thông tin sản phẩm vào cơ sở dữ liệu
        String imageUrl = "upload/" + fileName;
        String name = request.getParameter("name");

        String description = request.getParameter("description");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("category_id"));

        Product product = new Product(name, description, imageUrl, price, quantity, quantity, categoryId);
        ProductDao productDao = DatabaseDao.getInstance().getProductDao();
        productDao.insert(product);

        response.sendRedirect("IndexProductServlet");
    }

}
