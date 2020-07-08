<%-- 
    Document   : index
    Created on : Jul 7, 2020, 10:24:34 PM
    Author     : galop
--%>

<%@page import="Entidades.Restaurante"%>
<%@page import="Procesos.ProcesosRestaurante"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        
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
            
            if (isSaved > 0){
                out.print("Si funciona.");
            } else{
                out.print("No funciona");
            }

        %>
        
        <h1>Hello World!</h1>
    </body>
</html>
