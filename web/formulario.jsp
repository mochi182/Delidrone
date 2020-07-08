
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
            <div class="contenedorFlex">
                <div class="cajaFormulario">
                    <div class="textoInterno">
                        <h1>
                            Añadir restaurantes
                        </h1>
                    </div>
                    
                    <form method="POST" action="formulario.jsp">
                        <label for="nombre">Nombre del restaurante:</label><br>
                        <input name="nombre" type="text" required>
                        <br>

                        <fieldset>
                            <legend>
                                <h3>Rango de precios</h3>
                            </legend>
                            <label for="rango_precio_min">Mínimo:</label><br>
                            <input  name="rango_precio_min" type="number">
                            <br>

                            <label for="rango_precio_max">Máximo:</label><br>
                            <input name="rango_precio_max" type="number" step="0.01">
                            <br>
                            <br>
                        </fieldset>

                        <label for="tiempo_de_entrega" >Tiempo de espera:</label><br>
                        <input name="tiempo_de_entrega" type="number">
                        <br>
                        <br>

                        <label name="descripcion" >Descripción:</label><br>
                        <input name="descripcion" type="text" required>
                        <br>
                        <br>

                        <label name="url_imagen" >URL de imágen:</label><br>
                        <input name="url_imagen" type="url" required>
                        <br>
                        <br>
                        
                    <center>
                        <input type="submit" value="Enviar">
                        <input type="reset" value="Borrar todo">
                    </center>
                    </form>
                    
                </div>
            </div>

            <%
                String rango_precio_max_string = "16.00";
                Float rango_precio_max = new Float(0);
                rango_precio_max = Float.parseFloat(rango_precio_max_string);
                
                float rango_precio_min = 0f;
                int tiempo_entrega = 0;
                String nombre = request.getParameter("nombre");
                String descripcion = request.getParameter("descripcion");
                String url_imagen = request.getParameter("url_imagen");
                
                
                
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
            
            <table class="tabla_formulario">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Precio mínimo (B/.)</th>
                    <th>Precio máximo (B/.)</th>
                    <th>Tiempo de entrega (minutos)</th>
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
