/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tien.dev.admin.user;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import tien.dev.admin.BaseAdminServlet;
import tien.dev.data.dao.DatabaseDao;
import tien.dev.data.dao.UserDao;
import tien.dev.data.dao.model.User;

/**
 *
 * @author My Tien
 */
public class IndexUserServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDao userDao = DatabaseDao.getInstance().getUserDao();
        List<User> userList = userDao.findAll();

        request.setAttribute("userList", userList);
        request.getRequestDispatcher("admin/users/index.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
