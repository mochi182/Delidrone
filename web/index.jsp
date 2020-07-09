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
        <script src="https://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
        <script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
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
                    Somos una empresa comprometida con tu bienestar y satisfacci�n. Te prometemos un delivery r�pido y eficiente, del cu�l solo podr�s tener buenas opiniones.
                </h2>
            </div>
        </section>

        <!--Elementos del centro-->

        <div class="fondoClaro">
            <div class="textoInterno">
                <h3>
                    Ofrecemos gran variedad de opciones, de los restaurantes m�s destacados...
                </h3>
                <h1>
                    A�adir restaurantes afiliados:
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
                <input type="text" placeholder="B�squeda">
                <img src="https://icongr.am/clarity/search.svg" alt="Busqueda">
                <h3>Ver m�s</h3>
            </div>
            <br>
        </div>

        <!--Banner 2-->

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
                    Con los m�s deliciosos restaurantes afiliados a nuestro negocio y un servicio de primera l�nea, estamos seguros que de ahora en adelante querr�s recibir tus alimientos volando!
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
                            Este servicio es una experiencia �nica, es el futuro. Esperamos crecer mucho m�s los pr�ximos a�os.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco P�rez - CEO
                        </h3>
                    </div>
                </div>

                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Ordenar comida a domicilio nunca hab�a sido tan sencillo y personalizado. Por eso nos adoran.
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
                            Nuestro servicio ha sido un �xito en esta cuarentena, debido a nuestro compromiso por la calidad.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/8nzE9wL.jpg" alt="foto3" class="fotoPerfil">
                        <h3>
                            Melitón Rodríguez - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio es una experiencia �nica, es el futuro. Esperamos crecer mucho m�s los pr�ximos a�os.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/YZRHXvQ.png" alt="foto1" class="fotoPerfil">
                        <h3>
                            Francisco P�rez - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Siempre pensando en lo mejor para el consumidor,la orden llega rápido y caliente, 0 tranque.
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/kFKp0Fl.jpg" alt="foto1" class="fotoPerfil">
                        <h3>
                            Juan Huerta - CEO
                        </h3>
                    </div>
                </div>
                
                <div class="cajaBlanca">
                    <div class="citaDeTexto">
                        <i>
                            Este servicio esta hecho para todos. Compartelo con todos/as tus colegas!
                        </i>
                    </div>
                    <br>
                    <div class="filaDeFotos">
                        <img src="https://i.imgur.com/JFoSaDW.jpg" alt="foto1" class="fotoPerfil">
                        <h3>
                            Ernesto Solís - CEO
                        </h3>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="Plantillas/footer.html"%>
    </body>
</html>
