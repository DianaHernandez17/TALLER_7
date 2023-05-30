package co.edu.sena.proyect_diana2687365.model;

public class Product {

    private Integer product_id;
    private String product_name;
    private String product_value;



    public Product() {
    }
    public Product(Integer product_id) {
            this.product_id = product_id;
        }

    public static void add(Product u) {
    }

    public Integer getProduct_id() {
        return product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public String getProduct_value() {
        return product_value;
    }

    public void setProduct_id(Integer product_id) {
        this.product_id = product_id;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public void setProduct_value(String product_value) {
        this.product_value = product_value;
    }

    @Override
    public String toString() {
        return "Product{" +
                "product_id=" + product_id +
                ", product_name='" + product_name + '\'' +
                ", product_value='" + product_value + '\'' +
                '}';
    }
}
