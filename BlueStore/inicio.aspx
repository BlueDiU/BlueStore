<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio.aspx.cs" Inherits="BlueStore.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Inicio</title>
    <link href="./estilos/inicio.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <header>
                <img src="./img/bluestore.jpeg" alt="bluestore"/>
                <nav class="nav">
                    <ul>
                        <li><a href="inicio.aspx">Inicio</a></li>
                        <li><a href="productos.aspx">Productos</a></li>
                        <li><a href="acerca_de.aspx">Acerca de</a></li>
                    </ul>
                </nav>
            </header>

            <main class="container">
                <div class="image-container">
                    <img src="./img/inicioImagen.svg" alt="bluestore"/>
                </div>
                <div class="info">
                    <h3>Frase mega épica Lorem, ipsum dolor Lorem, ipsum.</h3>
                    <a href="productos.aspx">Empieza a comprar</a>
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