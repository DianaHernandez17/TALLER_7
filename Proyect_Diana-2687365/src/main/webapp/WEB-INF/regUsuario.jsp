<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--
  Created by IntelliJ IDEA.
  User: APRENDIZ
  Date: 30/05/2023
  Time: 11:38 a. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <!-- METADATA-->
    <!-- charset para caracteres especiales-->
    <meta charset="utf-8">
    <!-- author-->
    <meta name="author" content="Nombre Autor">
    <!--Description -->
    <meta name="description" content="Esta debe ser una informacion que aparece en el parrafo que acompaña los resultados de una busqueda en Internet.">
    <!--Keywords-->
    <meta name="keywords" content="registro Usuario ,formulario de registro ,crear cuenta , registro en linea">
    <!-- minium responsive viewport-->
    <meta name="viewport" content="width=devide-width, initial-scale=1">
    <!-- TITLE-->
    <title>Registro Usuario</title>
    <!-- FAVICON-->
    <link rel="icon" type="image/x-icon" href="./img/imagen.png">
    <!-- bootstrap css / icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <!-- CSS-->
    <link rel="stylesheet"href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
    <!--custom css-->
    <link rel="stylesheet" href="./css/signin.css">
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body class="text-center">
<!-- login form -->
<main class="form-signin w-100 m-auto" class="text-center">
    <form action="registerUser" method="post">
        <img class="mb-4" src="./img/imagen.png" alt="MY APP" width=100>
        <h4 class="text-secondary">CarUnity</h4>
        <h1 class="h5 mb-3 fw-normal">Ingresar</h1>
        <div class="form-floating">
            <input type="text" name="user_firstname" class="form-control" id="floatingFirstName" placeholder="Ingrese su Apellido" required
                   pattern="[A-Za-z ]{2,40}">
            <label for="floatingFirstName">Nombres:</label>
            <div class="form-floating">
                <input type="text" name="user_lastname" class="form-control" id="floatingLastName" placeholder="Ingrese su Apellido" required
                       pattern="[A-Za-z ]{2,40}">
                <label for="floatingLastName">Apellidos:</label>
            </div>
            <div class="form-floating">
                <input type="text" name="user_email" class="form-control" id="floatingEmail"
                       placeholder="Ingrese su email"  required
                       pattern="{60}">
                <label for="floatingEmail">Email: </label>
            </div>
            <div class="form-floating">
                <input type="password" name="user_password" class="form-control" id="floatingPassword"
                       placeholder="Ingrese su contraseña" required pattern="[A-Za-20-91(8, 12}">
                <label for="floatingPassword">Contraseña: </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">Enviar</button>
            <div id="register">
                <a href="product.jsp">Registrar producto</a>
                <a href="category.jsp">Registrar categoria</a>
            </div>
            <p class="mt-3 mb-3 text-muted">Todos los Derechos Reservados CarUnity ©<%=displayDate()%>
            </p>
        </div>
    </form>
</main>
<!-- Bootstrap script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJL+0I4"
        crossorigin=anonymous"></script>
<%! public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return  dateFormat.format(date);
}%>
</body>
</html>
