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

            <main class="container">

                <!-- Seccion para camisas -->
                <h2 id="seccion1">Camisas</h2>
                <section class="section">
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Camisas/camisa azul.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblCamisa1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button1" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Camisas/camisa verde.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblCamisa2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="Button2" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                      <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Camisas/camisa roja v2.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblCamisa3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="Button3" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->

                </section>
                <!-- Seccion para pantalones -->
                <h2 id="seccion2">Pantalones</h2>
                <section class="section">
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Pantalones/Pantalon de vestir de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblPantalon1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button4" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Pantalones/Pantalon vaquero de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblPantalon2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button5" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Pantalones/Pantalon vaquero de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblPantalon3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button6" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>
                <!-- seccion para chaquetas -->
                <h2 id="seccion3">Chaquetas</h2>
                <section class="section">
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Chaquetas/Chaqueta de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblChaqueta1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button7" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Chaquetas/Chaqueta de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblChaqueta2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button8" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Chaquetas/Chaqueta deportiva de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblChaqueta3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button9" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>
                <!-- seccion para zapatos -->
                <h2 id="seccion4">Zapatos</h2>
                <section class="section">
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Zapatos/Zapatos de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button10" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Zapatos/Zapatos de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button11" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Zapatos/Zapatos deportivos para hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label23" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label24" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button12" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>
                <!-- seccion blusas -->
                <h2 id="seccion5">Blusas</h2>
                <section class="section">
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Blusas/Blusa roja.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label25" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label26" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button13" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Blusas/Blusa verde.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label27" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label28" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button14" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Blusas/Bluza azul.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label29" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label30" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button15" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>
                <!-- seccion vestidos -->
                <h2 id="seccion6">Vestidos</h2>
                <section class="section">
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Vestidos/vestido amarillo.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label31" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label32" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button16" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Vestidos/vestido negro.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label33" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label34" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button17" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Vestidos/vestido salmon.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label35" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label36" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button18" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>
                <!-- seccion accesorios -->
                <h2 id="seccion7">Accesorios</h2>
                <section class="section">
                     <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Accesorios/cincho para hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label37" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label38" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button19" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Accesorios/Reloj de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label39" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label40" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button20" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Accesorios/reloj de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="Label41" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p><strong>Precio:</strong> $
                                <asp:Label ID="Label42" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                             <asp:Button class="btn-comprar" ID="Button21" runat="server" Text="Comprar ahora" />
                    </article>
                    <!-- fin tarjeta -->
                </section>

            </main>

            <!-- Al pulsar ctrl+u se muestra el boton -->
            <a class="admin-manager hidden" href="./Admin/administrador_usuarios.aspx">⚙️</a>

            <!-- Pie de pagina -->
            <footer>
                <p>📧 Contacto</p>
                <small>bluestore@gmail.com</small>
                <p>📱 +503 7893-0923</p>
                <p class="derechos">&copy; BlueStore, todos los derechos reservados | Aviso Legal</p>
            </footer>

            <script src="./js/index.js"></script>

            <!--fin codigo para html-->
        </div>
    </form>
</body>
</html>