/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package tien.dev;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;
import tien.dev.data.dao.DatabaseDao;
import tien.dev.data.dao.OrderDao;
import tien.dev.data.dao.OrderDetailDao;
import tien.dev.data.dao.model.User;
import tien.dev.util.StringHelper;
import tien.dev.data.dao.model.Order;
import tien.dev.data.dao.model.OrderDetailSession;
import tien.dev.data.dao.model.OrderDetail;



/**
 *
 * @author My Tien
 */
public class CheckoutServlet extends BaseServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("LoginServlet");
        } else {

            OrderDao orderDao = DatabaseDao.getInstance().getOrderDao();
            String code = StringHelper.randomString(9);
            Order order = new Order(code, "order", "pending", user.getId());
            orderDao.insert(order);

            order = orderDao.find(code);

            OrderDetailDao orderDetailDao = DatabaseDao.getInstance().getOrderDetailDao();

            List<OrderDetailSession> cart = (List<OrderDetailSession>) session.getAttribute("cart");
            if (cart != null) {
                for (OrderDetailSession ods : cart) {
                    OrderDetail orderDetail = new OrderDetail(ods.getQuantity(), order.getId(), ods.getProductId(), ods.getProductPrice());
                    orderDetailDao.insert(orderDetail);
                }
            }

            session.removeAttribute("cart");
            response.sendRedirect("CartServlet");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
