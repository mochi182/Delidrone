<%--
  Created by IntelliJ IDEA.
  User: alejandroandrade
  Date: 7/7/20
  Time: 9:47 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Parcial2</title>
    <link rel="stylesheet" href="style.css">
    <link  rel="icon"   href="https://image.flaticon.com/icons/svg/1377/1377917.svg" type="image/png" />
</head>
<body>

<!--baner 1-->

<!--Elementos del centro-->

<div class="fondoClaro">
    <div class="textoInterno">
        <h3>
            Ofrecemos gran variedad de opciones, de los restaurantes más destacados...
        </h3>
        <h1>
            Restaurantes afiliados:
        </h1>
    </div>

    <div class="contenedorFlex">

        <div class="cajaBlanca">
            <br>
            <label class="label-datos" >Nombre del Restaurante</label>
            <br>
            <input  class="datos1" name="nombre" type="text" pattern="[A-Za-z]{2,30}"  required>
            <br>
            <br>
            <label class="label-datos" >Rango de precios</label>
            <br>
            <h3>Minimo
                <input  class="datos1" name="rango_precio_min" type="text" pattern="[A-Za-z]{2,30}"  required></h3>
            <h3>Maximo
                <input  class="datos1" name="rango_precio_max" type="text" pattern="[A-Za-z]{2,30}"  required></h3>

            <label class="label-datos" >Tiempo de espera</label>
            <br>
            <input  class="datos1" name="tiempo_de_entrega" type="text" pattern="[A-Za-z]{2,30}"  required>
            <br>
            <br>
            <label class="label-datos" >Descripcion</label>
            <br>
            <input  class="datos1" name="producto" type="text" pattern="[A-Za-z]{2,30}"  required>
            <br>
            <br>
            <label class="label-datos" >Imagen de Restaurante(url)</label>
            <br>
            <input class="datos1" type="url" name="archivosubido"   required> </p>
            <br>

            <br>

        </div>
    </div>
    <div class="contenedorFlex">
        <div class="cajaBlanca">

        </div>

    </div>

</div>

<!--Baner 2-->

<!--Elementos del centro / parte 2-->

<!--Elementos del footer-->

</body>
</html>
