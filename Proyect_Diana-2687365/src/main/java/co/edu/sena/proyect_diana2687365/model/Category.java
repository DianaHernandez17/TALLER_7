package co.edu.sena.proyect_diana2687365.model;

public class Category {
    private Integer category_id;
    private String category_name;

    public Category() {
    }

    public Category(Integer category_id, String category_firstname) {
        this.category_id = category_id;
        this.category_name = category_firstname;
    }

    public Category(String category_name){
        this.category_name=category_name;
    }

    public Integer getCategory_id() {
        return category_id;
    }

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_id(Integer category_id) {
        this.category_id = category_id;
    }

    public String getCategory_firstname() {
        return category_name;
    }

    public void setCategory_firstname(String category_firstname) {
        this.category_name = category_firstname;
    }

    @Override
    public String toString() {
        return "Category{" +
                "category_id=" + category_id +
                ", category_firstname='" + category_name + '\'' +
                '}';
    }
}
