package co.edu.sena.proyect_diana2687365.servlets;

import co.edu.sena.proyect_diana2687365.model.Category;
import co.edu.sena.proyect_diana2687365.model.repository.CategoryRepositoryImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.SQLException;

public class ProductRegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //collect all form data
        String category_name = request.getParameter("category_name");

        // fill it up in a User bean
        Category category = new  Category(category_name);

        // call Repository layer and save the user object to DB
        co.edu.sena.proyect_diana2687365.model.repository.Repository<Category> repository = new CategoryRepositoryImpl();
        int rows = 0;
        try {
            rows = repository.saveObj(category);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        //prepare an information message for user about success or failure of the operation
        String infoMessage = null;
        if (rows == 0){
            //infoMessage = "¡OCURRIO UN ERROR!"
            System.out.println("¡OCURRIO UN ERROR!");
        } else {
            //infoMessage = "¡REGISTRO EXITOSO!"
            System.out.println("¡REGISTRO EXITOSO!");
        }

    }
}

