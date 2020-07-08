<%@page import="Procesos.ProcesosRestaurante"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidades.Restaurante"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="estilo.css">
        <title>Parcial 3</title>
    </head>
    
    <body style="margin:0px">
        <%@include file="Plantillas/header.html"%>

        <!--baner 1-->

        <section>
            <div class="banersito">
                <div style="color: transparent">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                <h1 class ="banertxt" id="tituloHeader">
                    "El delivery que vuela"
                </h1>
                <br>

                <h2 class= "banertxt">
                    Somos una empresa comprometida con tu bienestar y satisfacción. Te prometemos un delivery rápido y eficiente, del cuál solo podrás tener buenas opiniones.
                </h2>
            </div>
        </section>

        <!--Elementos del centro-->

        <div class="fondoClaro">
            <div class="textoInterno">
                <h3>
                    Ofrecemos gran variedad de opciones, de los restaurantes más destacados...
                </h3>
                <h1>
                    Añadir restaurantes afiliados:
                </h1>
            </div>

            <%
                ProcesosRestaurante prestaurante = new ProcesosRestaurante();
                List<Restaurante> restaurantes = prestaurante.consultarDatos();
            %>

            
            <div class="contenedorFlex">
                <% for(Restaurante restaurante: restaurantes){%>
                    <div class="cajaBlanca">
                        <img class="imagenComida" src="<%= restaurante.getUrl_imagen()%>" alt="BK">
                        <h2>
                            <%= restaurante.getNombre() %>
                        </h2>
                        <p>
                            B/.<%= restaurante.getRango_precio_min()%>-<%= restaurante.getRango_precio_max()%>
                            <br>
                            <%= restaurante.getTiempo_entrega()%> minutos
                            <br>
                            <%= restaurante.getDescripcion()%>
                        </p>
                    </div>
                <%}%>

            </div>


            <div class="filaInput">
                <input type="text" placeholder="Búsqueda">
                <img src="https://icongr.am/clarity/search.svg" alt="Busqueda">
                <h3>Ver más</h3>
            </div>
            <br>
        </div>

        <!--Baner 2-->

        <section>
            <div class="banersito2">
                <div style="color: transparent">
                    <br>
                    <br>
                    <br>
                    <br>
                    <br>
                </div>
                    <h1 class ="banertxt2" id="tituloHeader">
                        Delivery en tiempo record asegurado
                    </h1>
                <br>

                <h2 class= "banertxt2">
                    Con los más deliciosos restaurantes afiliados a nuestro negocio y un servicio de primera línea, estamos seguros que de ahora en adelante querrás recibir tus alimientos volando!
                </h2>
            </div>
        </section>

        <!--Elementos del centro / parte 2-->

        <div class="fondoClaro">

            <div class="textoInterno">
                <div>
                    <h2>
                        Conoce a los fundadores...
                    </h2>
                </div>
            </div>

            <div class="contenedorFlex">

                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio es una experiencia única, es el futuro. Esperamos crecer mucho más los próximos años.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco Pérez - CEO
                        </h3>
                    </div>
                </div>

                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Ordenar comida a domicilio nunca había sido tan sencillo y personalizado. Por eso nos adoran.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/UcGxn2b.jpg" alt="foto2" class="fotoPerfil">
                        <h3>
                            Alejandro Andrade - CEO
                        </h3>
                    </div>
                </div>

                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Nuestro servicio ha sido un éxito en esta cuarentena, debido a nuestro compromiso por la calidad.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/7QOIo2I.jpg" alt="foto3" class="fotoPerfil">
                        <h3>
                            José Sieiro - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio es una experiencia única, es el futuro. Esperamos crecer mucho más los próximos años.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco Pérez - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio es una experiencia única, es el futuro. Esperamos crecer mucho más los próximos años.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco Pérez - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio es una experiencia única, es el futuro. Esperamos crecer mucho más los próximos años.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco Pérez - CEO
                        </h3>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="Plantillas/footer.html"%>
    </body>
</html>
