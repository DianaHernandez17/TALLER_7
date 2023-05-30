package co.edu.sena.proyect_diana2687365.model.repository;

import co.edu.sena.proyect_diana2687365.connection_test.ConnectionPool;
import co.edu.sena.proyect_diana2687365.model.Category;
import co.edu.sena.proyect_diana2687365.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductRepositoryImpl implements Repository<Product> {
    private String sql= null;

    @Override
    public List<Product> listAllObj() throws SQLException {
        sql ="select u.product_id, u.product_name,u.product_value, u.category_id" +
                "from Product_tbl u order by u.product_value";
        List<Product> product = new ArrayList<>();

        try(Connection conn = ConnectionPool.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(sql)){

            while (rs.next()){
                Product u= createObj(rs);
                Product.add(u);
            }//while
        }//try
        return null;
    }

    @Override
    public Product byIdObj(Integer id) throws SQLException {
        sql ="select u.product_id, u.product_name, u.product_value, u.category_id" +
                "from Product_tbl u where u.produt_id =?";
        Product product = null;

        try(Connection conn= ConnectionPool.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setInt(1, id);
            try(ResultSet rs = ps.executeQuery()){
                if(rs.next()){
                    Product Product = createObj(rs);
                }
            }
        }//Try
        return null;
    }

    @Override
    public Integer saveObj(Product product) throws SQLException {
        int rowsAffected = 0;

        if(product.getProduct_id() != null && product.getProduct_id() > 0){
            sql ="update Product_tbl set Product_name = ?, Product_value, category_id=?"+
                    "where product_id=?";
        } else {
            sql = "insert into product_tbl(product_name,product_id,product_value,category_id)"+
                    "values(upper(?), (?),(?))";

        }
        try(Connection conn = ConnectionPool.getConnection();
            PreparedStatement ps= conn.prepareStatement(sql)){
            ps.setString(1, product.getProduct_name());
            ps.setString(2, product.getProduct_value());
            if (product.getProduct_id() != null && product.getProduct_id()> 0){
                ps.setInt(3, product.getProduct_id());
            }
            rowsAffected = ps.executeUpdate();
        }
        return rowsAffected;
    }

    @Override
    public void deleteObj(Integer id) throws SQLException {


    }

    @Override
    public Product createObj(ResultSet rs) throws SQLException {
        return null;
    }
}
