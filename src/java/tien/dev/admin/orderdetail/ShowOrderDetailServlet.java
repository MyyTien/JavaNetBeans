/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tien.dev.admin.orderdetail;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import tien.dev.admin.BaseAdminServlet;
import tien.dev.data.dao.Database;
import tien.dev.data.dao.OrderDetailDao;
import tien.dev.data.dao.model.OrderDetail;


/**
 *
 * @author My Tien
 */
public class ShowOrderDetailServlet extends BaseAdminServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int orderId = Integer.parseInt(request.getParameter("order_id"));
        OrderDetailDao orderDetailDao = Database.getInstance().getOrderDetailDao();
        List<OrderDetail> orderDetailList = orderDetailDao.findByOrder(orderId);

        request.setAttribute("orderDetailList", orderDetailList);
        request.getRequestDispatcher("admin/orderDetail/show.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
