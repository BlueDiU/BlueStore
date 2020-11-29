<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="acerca_de.aspx.cs" Inherits="BlueStore.acerca_de" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Acerca de</title>
    <link href="./estilos/acerca.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <header>
                <img src="./img/bluestore.jpeg" alt="bluestore">
                <nav class="nav">
                    <ul>
                        <li><a href="./inicio.aspx">Inicio</a></li>
                        <li><a href="productos.aspx">Productos</a></li>
                        <li><a href="acerca_de.aspx">Acerca de</a></li>
                    </ul>
                </nav>
            </header>

            <h2>¿Quienes somos?</h2>
            <main class="container">
                <div class="image-container">
                    <img src="./img/about.svg" alt="bluestore"/>
                </div>
                <div class="info">
                    <img src="./img/bluestore.jpeg" alt="bluestore"/>
                    <p>
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab magnam nam consequuntur enim eveniet omnis
                nobis!
                    </p>
                </div>
            </main>

            <footer>
                <p>📧 Contacto</p>
                <small>bluestore@gmail.com</small>
                <p>📱 +503 7893-0923</p>
                <p class="derechos">&copy; BlueStore, todos los derechos reservados | Aviso Legal</p>
            </footer>
        </div>
    </form>
</body>
</html>