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

            <!-- seccion pago -->
            <h4>Ingrese sus datos para confirmar el pago</h4>
            <section class="form-pago">
                <div class="item">
                    <asp:TextBox class="input-data"  placeholder="usuario" ID="txtUserPago" runat="server"></asp:TextBox>
                </div>
                <div class="item">
                     <asp:TextBox class="input-data" placeholder="contraseña" type="password" ID="txtPasswordPago" runat="server"></asp:TextBox>
                </div>
                <div class="item">
                    $
                    <asp:Label ID="lblTotalPago" runat="server" Text="0"></asp:Label>
                </div>
                <div class="item">
                    <asp:Button ID="BtnPagarTotal"  class="btn-pagar" runat="server" Text="Pagar" OnClick="BtnPagarTotal_Click" />
                </div>
                <asp:Label ID="lblConfirmacion" runat="server" Text=""></asp:Label>
            </section>

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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnCamisa1" runat="server" Text="Comprar ahora" OnClick="BtnCamisa1_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnCamisa2" runat="server" Text="Comprar ahora" OnClick="BtnCamisa2_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblCPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnCamisa3" runat="server" Text="Comprar ahora" OnClick="BtnCamisa3_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnPantalon1" runat="server" Text="Comprar ahora" OnClick="BtnPantalon1_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnPantalon2" runat="server" Text="Comprar ahora" OnClick="BtnPantalon2_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblPPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnPantalon3" runat="server" Text="Comprar ahora" OnClick="BtnPantalon3_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnChaqueta1" runat="server" Text="Comprar ahora" OnClick="BtnChaqueta1_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnChaqueta2" runat="server" Text="Comprar ahora" OnClick="BtnChaqueta2_Click" />
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
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblChPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnChaqueta3" runat="server" Text="Comprar ahora" OnClick="BtnChaqueta3_Click" />
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
                                <asp:Label ID="lblZapato1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblZPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnZapato1" runat="server" Text="Comprar ahora" OnClick="BtnZapato1_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Zapatos/Zapatos de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblZapato2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblZPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnZapato2" runat="server" Text="Comprar ahora" OnClick="BtnZapato2_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Zapatos/Zapatos deportivos para hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblZapato3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblZPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnZapato3" runat="server" Text="Comprar ahora" OnClick="BtnZapato3_Click" />
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
                                <asp:Label ID="lblBlusa1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblBPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnBlusa1" runat="server" Text="Comprar ahora" OnClick="BtnBlusa1_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Blusas/Blusa verde.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblBlusa2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblBPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnBlusa2" runat="server" Text="Comprar ahora" OnClick="BtnBlusa2_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Blusas/Bluza azul.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblBlusa3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblBPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnBlusa3" runat="server" Text="Comprar ahora" OnClick="BtnBlusa3_Click" />
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
                                <asp:Label ID="lblVestido1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblVPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnVestido1" runat="server" Text="Comprar ahora" OnClick="BtnVestido1_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Vestidos/vestido negro.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblVestido2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblVPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnVestido2" runat="server" Text="Comprar ahora" OnClick="BtnVestido2_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Vestidos/vestido salmon.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblVestido3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblVPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnVestido3" runat="server" Text="Comprar ahora" OnClick="BtnVestido3_Click" />
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
                                <asp:Label ID="lblAcce1" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblAccPrecio1" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnAccesorio1" runat="server" Text="Comprar ahora" OnClick="BtnAccesorio1_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Accesorios/Reloj de hombre.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblAcce2" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblAccPrecio2" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnAccesorio2" runat="server" Text="Comprar ahora" OnClick="BtnAccesorio2_Click" />
                    </article>
                    <!-- fin tarjeta -->
                    <!-- Inicio tarjeta -->
                    <article class="card">
                        <img src="img/productos/Accesorios/reloj de mujer.jpg"
                            alt="camisa" />

                        <div class="product-info">
                            <h4>
                                <asp:Label ID="lblAcce3" runat="server" Text="Label"></asp:Label>
                            </h4>
                            <p>
                                <strong>Precio:</strong> $
                                <asp:Label ID="lblAccPrecio3" runat="server" Text="Label"></asp:Label>
                            </p>
                        </div>

                        <asp:Button class="btn-comprar" ID="BtnAccesorio3" runat="server" Text="Comprar ahora" OnClick="BtnAccesorio3_Click" />
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