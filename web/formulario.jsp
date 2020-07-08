
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
                        
                        <p>
                            <label for="nombre">Nombre del restaurante:</label><br>
                            <input name="nombre" type="text" required>
                        </p>

                        <fieldset>
                            <legend>
                                <b>Rango de precios</b>
                            </legend>
                            
                            <p>
                                <label for="rango_precio_min">Mínimo:</label><br>
                                <input required name="rango_precio_min" type="number" step="0.01">
                            </p>
                            
                            <p>
                                <label for="rango_precio_max">Máximo:</label><br>
                                <input required name="rango_precio_max" type="number" step="0.01">
                            </p>
                        </fieldset>

                        <p>
                            <label for="tiempo_de_entrega" >Tiempo de espera:</label><br>
                            <input required name="tiempo_de_entrega" type="number">
                        </p>

                        <p>
                            <label name="descripcion" >Descripción:</label><br>
                            <input required name="descripcion" type="text" required>
                        </p>

                        <p>
                            <label name="url_imagen" >URL de imágen:</label><br>
                            <input required name="url_imagen" type="url" required>
                        </p>
                        <br>
                        
                        <p>
                            <input type="submit" value="Enviar"><br>
                            <input type="reset" value="Borrar todo">
                        </p>
                    </form>
                    
                </div>
            </div>

            <%
                ProcesosRestaurante prestaurante = new ProcesosRestaurante();
                if(request.getParameter("nombre")==null){
                }else{
                    String rango_precio_max_string = request.getParameter("rango_precio_max");
                    Float rango_precio_max = new Float(0);
                    rango_precio_max = Float.parseFloat(rango_precio_max_string);
                    
                    String rango_precio_min_string = request.getParameter("rango_precio_min");
                    Float rango_precio_min = new Float(0);
                    rango_precio_min = Float.parseFloat(rango_precio_min_string);
                    
                    String tiempo_entrega_string = request.getParameter("tiempo_de_entrega");
                    Integer tiempo_entrega = new Integer(0);
                    tiempo_entrega = Integer.parseInt(tiempo_entrega_string);

                    
                    String nombre = request.getParameter("nombre");
                    String descripcion = request.getParameter("descripcion");
                    String url_imagen = request.getParameter("url_imagen");



                    Restaurante restaurante = new Restaurante();
                    restaurante.setNombre(nombre);
                    restaurante.setRango_precio_max(rango_precio_max);
                    restaurante.setRango_precio_min(rango_precio_min);
                    restaurante.setTiempo_entrega(tiempo_entrega);
                    restaurante.setDescripcion(descripcion);
                    restaurante.setUrl_imagen(url_imagen);

                    int isSaved = prestaurante.guardarRestaurante(restaurante);
            %>
            
                    <h2>
                        <%
                            if (isSaved > 0){
                                out.print("¡Datos ingresados exitosamente!");
                            } else{
                                out.print("Error en la inserción de datos.");
                            }
                        %>
                    </h2>
            <%}%><!-- Fin del IF-ELSE -->
            
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
                <%
                    List<Restaurante> restaurantes = prestaurante.consultarDatos();
                    for(Restaurante restaurante_get: restaurantes){%>
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
