/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tien.dev.data.dao;

import tien.dev.data.dao.impl.CategoryDaoImp;
import tien.dev.data.dao.impl.OrderDaoImp;
import tien.dev.data.dao.impl.OrderDetailDaoImp;
import tien.dev.data.dao.impl.ProductDaoImp;
import tien.dev.data.dao.impl.UserDaoImp;

/**
 *
 * @author ACER
 */
public class Database extends DatabaseDao {

    @Override
    public UserDao getUserDao() {
        // TODO Auto-generated method stub
        return new UserDaoImp();
    }

    @Override
    public ProductDao getProductDao() {
        return new ProductDaoImp();
    }

    @Override
    public CategoryDao getCategoryDao() {
        return new CategoryDaoImp();
    }

    @Override
    public OrderDao getOrderDao() {
        return new OrderDaoImp();
    }

    @Override
    public OrderDetailDao getOrderDetailDao() {
        return new OrderDetailDaoImp();
    }

}
