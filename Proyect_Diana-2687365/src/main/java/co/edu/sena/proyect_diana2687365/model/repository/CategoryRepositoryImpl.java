package co.edu.sena.proyect_diana2687365.model.repository;

import co.edu.sena.proyect_diana2687365.connection_test.ConnectionPool;
import co.edu.sena.proyect_diana2687365.model.Category;
import co.edu.sena.proyect_diana2687365.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CategoryRepositoryImpl implements Repository<Category> {
    private String sql= null;
    @Override
    public List<Category> listAllObj() throws SQLException {
        sql ="select u.category_id, u.category_name" +
                "from Category_tbl u";
        List<Category> Category = new ArrayList<>();

        try(Connection conn = ConnectionPool.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while (rs.next()){
                Category u= createObj(rs);
                Category.add(u);
            }//while
        }//try
        return null;
    }

    @Override
    public Category byIdObj(Integer id) throws SQLException {
        sql ="select u.category_id, u.category_name," +
                "from Category_tbl u where u.category_id =?";
        Category Category = null;

        try(Connection conn= ConnectionPool.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Category = createObj(rs);
                }
            }
        }//Try
        return null;
    }

    @Override
    public Integer saveObj(Category category) throws SQLException {
        int rowsAffected = 0;

        if(category.getCategory_id() != null && category.getCategory_id() > 0){
            sql ="update Category_tbl, category_name = ?"+
                    "where category_id=?";
        } else {
            sql = "insert into Category_tbl(category_name)"+
                    "values(upper(?), upper(?), lower(?),";

        }
        try(Connection conn = ConnectionPool.getConnection();
            PreparedStatement ps= conn.prepareStatement(sql)){
            ps.setString(1, category.getCategory_name());
            if (category.getCategory_id() != null){
                ps.setInt(2, category.getCategory_id());
            }
            rowsAffected = ps.executeUpdate();
        }
        return null;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {
        sql="delete from Category_tbl where user_id=?";
        try(Connection conn= ConnectionPool.getConnection();
            PreparedStatement ps =conn.prepareStatement(sql)){
            ps.setInt(1,id);
            ps.executeUpdate();
        }//Try
    }


    @Override
    public Category createObj(ResultSet rs) throws SQLException {
        Category category = new Category();
        category.setCategory_id(rs.getInt("category_id"));
        category.setCategory_firstname(rs.getString("category_firstname"));
        return null;
    }



}
