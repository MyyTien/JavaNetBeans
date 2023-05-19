/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tien.dev.data.dao.impl;

import java.util.List;
import tien.dev.data.dao.OrderDetailDao;
import tien.dev.data.dao.model.OrderDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import tien.dev.data.driver.MySQLDriver;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author My Tien
 */
public class OrderDetailDaoImp implements OrderDetailDao {

    private final Connection conn;

    public OrderDetailDaoImp() {
        this.conn = (Connection) MySQLDriver.getInstance().getConnection();
    }

    @Override
    public void insert(OrderDetail orderDetail) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "INSERT INTO ORDER_DETAILS(id, amount, order_id, product_id, price ) VALUES(NULL,?,?,?,?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.amount);
            stmt.setInt(2, orderDetail.orderId);
            stmt.setInt(3, orderDetail.productId);
            stmt.setDouble(4, orderDetail.price);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            Logger.getLogger("insert order_detail").log(Level.SEVERE, e.toString());
        }
    }

    @Override
    public void update(OrderDetail orderDetail) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "UPDATE ORDER_DETAILS SET amount=?, order_id=?, product_id=?, price=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetail.amount);
            stmt.setInt(2, orderDetail.orderId);
            stmt.setInt(3, orderDetail.productId);
            stmt.setDouble(4, orderDetail.price);
            stmt.setInt(5, orderDetail.id);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public void delete(int orderDetailId) {
        // TODO Auto-generated method stub
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM ORDER_DETAILS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, orderDetailId);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
    }

    @Override
    public OrderDetail find(int orderDetailId) {
        // TODO Auto-generated method stub
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderDetailId);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int orderId = rs.getInt("order_id");
                int productId = rs.getInt("product_id");
                double price = rs.getInt("price");
                return new OrderDetail(id, amount, orderId, productId, price);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

    @Override
    public List<OrderDetail> findALL() {
        List<OrderDetail> orderdetailList = new ArrayList<>();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS";
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int product_id = rs.getInt("product_id");
                int order_id = rs.getInt("order_id");
                double price = rs.getDouble("price");
                orderdetailList.add(new OrderDetail(id, amount, product_id, order_id, price));
            }
        } catch (SQLException ex) {
        }

        return orderdetailList;
    }

    @Override
    public List<OrderDetail> findByOrder(int orderId) {
        List<OrderDetail> orderdetail = new ArrayList<>();
        Connection conn = MySQLDriver.getInstance().getConnection();
        try {
            String sql = "SELECT * FROM ORDER_DETAILS WHERE ORDER_ID = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, orderId);

            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                int amount = rs.getInt("amount");
                int productId = rs.getInt("product_id");
                double price = rs.getDouble("price");
                orderdetail.add(new OrderDetail(id, productId, orderId, amount, price));
            }
        } catch (SQLException ex) {
        }

        return orderdetail;
    }

}
