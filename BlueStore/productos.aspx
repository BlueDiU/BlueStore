<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="productos.aspx.cs" Inherits="BlueStore.productos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Productos</title>
    <link href="./estilos/productos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--inicio codigo para html-->
            <header>
                <img src="../img/frame1.svg" alt="bluestore" />
                <nav class="nav">
                    <ul>
                        <li><a href="inicio.aspx">Inicio</a></li>
                        <li><a href="productos.aspx">Productos</a></li>
                        <li><a href="acerca_de.aspx">Acerca de</a></li>
                    </ul>
                </nav>

                <nav class="nav-products hidden">
                    <ul>
                        <li><a href="#seccion1">Camisas</a></li>
                        <li><a href="#seccion2">Pantalones</a></li>
                        <li><a href="#seccion3">Chaquetas</a></li>
                        <li><a href="#seccion4">Zapatos</a></li>
                        <li><a href="#seccion5">Blusas</a></li>
                        <li><a href="#seccion6">Vestidos</a></li>
                        <li><a href="#seccion7">Accesorios</a></li>
                    </ul>
                </nav>
            </header>
            <!-- Contendor principal -->

            <div class="container">

                <!-- Seccion para camisas -->
                <h2 id="seccion1">Camisas</h2>
                <div class="section">
                    <div class="card">
                        <img src="https://ae01.alicdn.com/kf/H55a330a1ef76441192aef1eb1aea559eK/Camisa-de-mezclilla-para-hombre-2020-primavera-oto-o-camisa-delgada-para-hombre-camisa-de-manga.jpg_q50.jpg"
                            alt="camisa">

                        <div class="product-info">
                            <h4>Camisas Azul</h4>
                            <p><strong>Precio:</strong> $20</p>
                        </div>
                        <button class="btn-comprar">Comprar ahora</button>
                    </div>

                    <div class="card">
                        <img src="https://ae01.alicdn.com/kf/H55a330a1ef76441192aef1eb1aea559eK/Camisa-de-mezclilla-para-hombre-2020-primavera-oto-o-camisa-delgada-para-hombre-camisa-de-manga.jpg_q50.jpg"
                            alt="camisa">

                        <div class="product-info">
                            <h4>Camisas Azul</h4>
                            <p><strong>Precio:</strong> $20</p>
                        </div>
                        <button class="btn-comprar">Comprar ahora</button>
                    </div>
                </div>
                <!-- Seccion para pantalones -->
                <h2 id="seccion2">Pantalones</h2>
                <div class="seccion">
                </div>
                <!-- seccion para chaquetas -->
                <h2 id="seccion3">Chaquetas</h2>
                <div class="seccion">
                </div>
                <!-- seccion para zapatos -->
                <h2 id="seccion4">Zapatos</h2>
                <div class="seccion">
                </div>
                <!-- seccion blusas -->
                <h2 id="seccion5">Blusas</h2>
                <div class="seccion">
                </div>
                <!-- seccion vestidos -->
                <h2 id="seccion6">Vestidos</h2>
                <div class="seccion">
                </div>
                <!-- seccion accesorios -->
                <h2 id="seccion7">Accesorios</h2>
                <div class="seccion">
                </div>
            </div>

            <!-- Pie de pagina -->
            <footer>
                <p>📧 Contacto</p>
                <small>bluestore@gmail.com</small>
                <p>📱 +503 7893-0923</p>
                <p class="derechos">&copy; BlueStore, todos los derechos reservados | Aviso Legal</p>
            </footer>

            <script src="./js/productos.js"></script>

            <!--fin codigo para html-->
        </div>
    </form>
</body>
</html>