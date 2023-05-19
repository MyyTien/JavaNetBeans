package tien.dev.data.dao.model;

import tien.dev.data.dao.DatabaseDao;

public class OrderDetail {

    public int id;
    public int productId;
    public int orderId;
    public int amount;
    public double price;

    public OrderDetail(int productId, int orderId, int amount, double price) {
        super();
        this.productId = productId;
        this.orderId = orderId;
        this.amount = amount;
        this.price = price;
    }

    public OrderDetail(int id, int productId, int orderId, int amount, double price) {
        super();
        this.id = id;
        this.productId = productId;
        this.orderId = orderId;
        this.amount = amount;
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Product getProduct() {
        return DatabaseDao.getInstance().getProductDao().find(productId);
    }

    public Order getOrder() {
        return DatabaseDao.getInstance().getOrderDao().find(orderId);
    }

}
