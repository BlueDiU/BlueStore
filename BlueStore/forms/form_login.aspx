<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="form_login.aspx.cs" Inherits="BlueStore.forms.form_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login BlueStore</title>
     <link rel="stylesheet" href="../estilos/form_style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container">
                <main id="form" class="form">
                    <h2>Iniciar sesión en BlueStore</h2>
                    <div class="form-control">
                        <label for="username">Nombre</label>
                        <asp:TextBox ID="txtNombreL" runat="server" 
                            type="text" class="input" placeholder="Ingresa tu Nombre" required></asp:TextBox>

                    </div>
                    <div class="form-control">
                        <label for="password">Contraseña</label>
                        <asp:TextBox ID="txtContraL" runat="server" type="password" class="input" placeholder="Ingresa tu contraseña" required></asp:TextBox>
                    </div>

                    <!-- Boton de Asp -->
                    <asp:Button ID="BtnIniciarS" runat="server" Text="Iniciar sesión" type="submit" class="btn-submit" OnClick="BtnIniciarS_Click"/>

                    <div class="form-register flex">
                        <label>¿No tienes una cuenta?</label>
                        <a href="registrarse.aspx">Registrase</a>
                    </div>
                </main>

               

             </div>
            <!-- Mensaje de error-->
             <asp:Label ID="lblMensaje" class="alert" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
