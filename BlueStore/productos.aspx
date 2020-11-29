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
                <img src="img/bluestore.jpeg" alt="bluestore" />
                <nav class="nav">
                    <ul>
                        <li><a href="inicio.aspx">Inicio</a></li>
                        <li><a href="productos.aspx">Productos</a></li>
                        <li><a href="acerca_de.aspx">Acerca de</a></li>
                    </ul>
                </nav>

                <nav class="nav-products hidden">
                    <ul>
                        <li><a href="#">Camisas</a></li>
                        <li><a href="#">Pantalones</a></li>
                        <li><a href="#">Chaquetas</a></li>
                        <li><a href="#">Zapatos</a></li>
                        <li><a href="#">Blusas</a></li>
                        <li><a href="#">Vestidos</a></li>
                        <li><a href="#">Accesorios</a></li>
                    </ul>
                </nav>
            </header>
            <!-- Contendor principal -->

            <div class="container">
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
                <br>
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