package tien.dev.data.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import tien.dev.data.dao.CategoryDao;
import tien.dev.data.dao.model.Category;
import tien.dev.data.driver.MySQLDriver;

public class CategoryDaoImp implements CategoryDao {

    private final Connection conn;

    public CategoryDaoImp() {
        this.conn = MySQLDriver.getInstance().getConnection();
    }

    @Override
    public boolean insert(Category category) {
        try {
            String sql = "INSERT INTO CATEGORIES(id, NAME, IMG, DESCRIPTION) VALUES(NULL, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.getName());
            stmt.setString(2, category.getImg());
            stmt.setString(3, category.getDescription());

            return stmt.execute();
        } catch (SQLException e) {
            // TODO: handle exception

        }
        return false;
    }

    @Override
    public boolean update(Category category) {
        try {
            String sql = "UPDATE CATEGORIES SET NAME=?, IMG=?, DESCRIPTION=? WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, category.getName());
            stmt.setString(2, category.getImg());
            stmt.setString(3, category.getDescription());

            stmt.setInt(4, category.getId());

            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean delete(int id) {
        try {
            Connection conn = MySQLDriver.getInstance().getConnection();
            String sql = "DELETE FROM CATEGORIES WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);

            stmt.setInt(1, id);
            stmt.execute();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return false;
    }

    @Override
    public Category find(int id) {
        try {
            String sql = "SELECT * FROM CATEGORIES WHERE ID=?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {

                String name = rs.getString("name");
                String img = rs.getString("img");
                String description = rs.getString("description");

                return new Category(id, name, img, description);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }

     public List<Category> findAll() {
        // TODO Auto-generated method stub
        List<Category> categorytList = new ArrayList<Category>();
        try {
            String sql = "SELECT *FROM CATEGORIES WHERE ID > ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, 2);
            ResultSet rs = stmt.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String description = rs.getString("description");
                String img = rs.getString("img");

               
                
              categorytList.add(new Category(name, img, description));
            }
        } catch (Exception ex) {
            // TODO: handle exception
        }
        return categorytList;
    }


}
