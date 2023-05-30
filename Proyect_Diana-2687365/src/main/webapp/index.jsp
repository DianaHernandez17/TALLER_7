<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>user registration</title>

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.js"></script>
</head>

<body style="background-color:#EBEDEF ;">
</body>
</body>
<body>
<center><h1><%= "REGISTRO DE USUARIO." %></h1></center>
<div class="container mt-3">
    <form action="/action_page.php">
        <div class="mb-3 mt-3">
            <label for="name">Nombre:</label>
            <input type="name" class="form-control" id="Name" placeholder="Ingrese su nombre" name="Nombre" required autofocus pattern="[A-Za-z]{2,40}">
        </div>
        <div class="mb-3 mt-3">
            <label for="last name">Apellido:</label>
            <input type="last name" class="form-control" id="last name" placeholder="Ingrese su apellido" name="Apellido" required autofocus pattern="[A-Za-z]{2,40}" >
        </div>
        <div class="mb-3 mt-3">
            <label for="email">Correo:</label>
            <input type="email" class="form-control" id="email" placeholder="Ingrese su correo" name="Correo" required autofocus pattern="{60}" >
        </div>
        <div class="mb-3">
            <label for="pwd">Contraseña:</label>
            <input type="password" class="form-control" id="pwd" placeholder="Ingrese su contraseña" name="Contraseña" required autofocus pattern=
                    ^(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{4,8}$ >
        </div> <br>
        <button type="submit" class="btn btn-primary">Enviar</button>
    </form>
</div>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.js"></script>
</body>
</html>