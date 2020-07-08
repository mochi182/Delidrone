
<%@page import="java.util.List"%>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="Entidades.Restaurante"%>
<%@page import="Procesos.ProcesosRestaurante"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Parcial 3</title>
        <link rel="stylesheet" href="estilo.css">
        <link rel="icon"   href="https://image.flaticon.com/icons/svg/1377/1377917.svg" type="image/png" />
    </head>
    <body style="margin:0px">
        <%@include file="Plantillas/header.html"%>

        <div class="fondoClaro">
            <div class="textoInterno">
                <h3>
                    Formulario para añadir restaurantes
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

            <%
                String nombre = "Burger King";
                float rango_precio_min = 15.30f;
                float rango_precio_max = 30.00f;
                int tiempo_entrega = 15;
                String descripcion = "Hamburguesas";
                String url_imagen = "https://cnet1.cbsistatic.com/img/Uz95WDjAeA3dxhDOCbNY41PiYsg=/940x0/2019/04/01/1b98aff5-886e-4020-b38c-8816830b7c11/burgerking-impossiblefoods.png";
                Restaurante restaurante = new Restaurante();
                ProcesosRestaurante prestaurante = new ProcesosRestaurante();
                restaurante.setNombre(nombre);
                restaurante.setRango_precio_max(rango_precio_max);
                restaurante.setRango_precio_min(rango_precio_min);
                restaurante.setTiempo_entrega(tiempo_entrega);
                restaurante.setDescripcion(descripcion);
                restaurante.setUrl_imagen(url_imagen);
                int isSaved = prestaurante.guardarRestaurante(restaurante);
                List<Restaurante> restaurantes = prestaurante.consultarDatos();
            %>
            
            <h2>
                <%
                    if (isSaved > 0){
                        out.print("Datos ingresados exitosamente.");
                    } else{
                        out.print("Error en la inserción de datos.");
                    }
                %>
            </h2>
            
            <table>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Precio mínimo</th>
                    <th>Precio máximo</th>
                    <th>Tiempo de entrega</th>
                    <th>Descripción</th>
                    <th>URL de imágen</th>
                </tr>
                <% for(Restaurante restaurante_get: restaurantes){%>
                    <tr>
                        <td><%= restaurante_get.getId() %></td>
                        <td><%= restaurante_get.getNombre() %></td>
                        <td><%= restaurante_get.getRango_precio_min() %></td>
                        <td><%= restaurante_get.getRango_precio_max() %></td>
                        <td><%= restaurante_get.getTiempo_entrega()%></td>
                        <td><%= restaurante_get.getDescripcion()%></td>
                        <td><%= restaurante_get.getUrl_imagen()%></td>
                    </tr>
                <%}%>
            </table>
            
        </div>


        <%@include file="Plantillas/footer.html"%>
    </body>
</html>
