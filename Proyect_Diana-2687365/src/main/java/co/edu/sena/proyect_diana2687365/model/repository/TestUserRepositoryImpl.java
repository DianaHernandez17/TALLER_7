package co.edu.sena.proyect_diana2687365.model.repository;

import co.edu.sena.proyect_diana2687365.model.User;

import java.sql.SQLException;

public class TestUserRepositoryImpl {
    public  static void main(String [] args ) throws SQLException{
    Repository<User> repository = new UserRepositoryImpl();

    System.out.println("========== saveObj Insert ==========");//insert

    User userInsert = new User();
    userInsert.setUser_firstname("Carlos");
    userInsert.setUser_firstname("rojas");
    userInsert.setUser_firstname("carlos@LoQueSea.com");
    userInsert.setUser_firstname("asdfg12345");
    repository.saveObj(userInsert);
    userInsert.setUser_firstname("pEpE");
    userInsert.setUser_firstname("perez");
    userInsert.setUser_firstname("PEPE@correo.com");
    userInsert.setUser_firstname("6780qwrty");
    repository.saveObj(userInsert);

    System.out.println("========= listAllObi =========");
    repository. listAllObj().forEach(System.out::println);
    System.out.println();

    System.out.println("========= byIdObj ===========");
    System.out.println(repository.byIdObj(1));
    System.out .println();

    System.out .println("========= saveObj =========="); //update
    User userUpdate = new User();
    userUpdate.setUser_id(2);
    userUpdate. setUser_firstname("Diana");
    userUpdate.setUser_lastname("Hernandez");
    userUpdate. setUser_email ("alejandra@email.com");
    userUpdate. setUser_password("129144534662");
    repository.saveObj(userInsert);


    repository. listAllObj().forEach(System.out::println);

    System.out.println();

    System.out.println("========== delete0bj ==========");
    repository.deleteObj(2);
    repository. listAllObj().forEach(System.out::println);

}
}// TestUserRepositoryImpl


