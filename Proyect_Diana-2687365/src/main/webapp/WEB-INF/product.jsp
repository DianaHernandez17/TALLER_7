<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.Calendar" %><%--

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
    <meta name="keywords" content="Registro Usuario ,Formulario de registro ,Crear cuenta , Registro en linea">
    <!-- minium responsive viewport-->
    <meta name="viewport" content="width=devide-width, initial-scale=1">
    <!-- TITLE-->
    <title>Registro Producto</title>
    <!-- FAVICON-->
    <link rel="icon" type="image/x-icon" href="./img/registrarse.png">
    <!-- CSS-->
    <!-- bootstrap css / icons--><link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
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
    <form action="registerProduct" method="post">
        <img class="mb-4" src="./img/registrarse.png" alt="CarUnity" width=100>
        <h4 class="text-secondary"> Register Product</h4>
        <h1 class="h5 mb-3 fw-normal">INGRESAR:</h1>
        <div class="form-floating">
            <input type="text" name="product_name" class="form-control" id="floatingName" placeholder=" Por favor, Ingrese el Nombre del Producto" required
                   pattern="[A-Za-z ]{2,40}">
            <label for="floatingName">NOMBRE:</label>
            <div class="form-floating">
                <input type="number"  name="product_value" class="form-control" id="floatingValue" placeholder="Por favor, Ingrese el Valor del Producto" required
                       pattern="{2,40}">
                <label for="floatingValue">VALOR:</label>
            </div>
            <div class="form-floating">
                <input type="number" name="category_id" class="form-control" id="floatingId"
                       placeholder="Por favor, Ingrese el Número de la Categoria"  required
                       pattern="{60}">
                <label for="floatingId">NÚMERO DE CATEGORÍA: </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="submit">ENVIAR</button>
            <div id="register">
                <a href="form.jsp">REGISRARSE</a>
            </div>
            <p class="mt-3 mb-3 text-muted">TODOS LOS DERECHOS RESERVADOS. ©<%=displayDate()%>
            </p>
        </div>
    </form>
</main>
<!-- Bootstrap script-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJL+0I4"
        crossorigin="anonymous"></script>

<%! public String displayDate(){
    SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY");
    Date date = Calendar.getInstance().getTime();
    return  dateFormat.format(date);
}%>
</body>
</html>

