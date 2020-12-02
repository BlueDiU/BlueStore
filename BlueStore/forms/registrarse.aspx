<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrarse.aspx.cs" Inherits="BlueStore.forms.registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrarse BlueStore</title>
    <link rel="stylesheet" href="../estilos/form_style.css" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <div class="container">
                <main id="form" class="form">
                    <h2>Registrate en BlueStore</h2>
                    <div class="form-control">
                        <label for="username">Nombre</label>
                        <asp:TextBox ID="txtNombre" runat="server" 
                            type="text" class="input" placeholder="Ingresa tu Nombre" required></asp:TextBox>

                    </div>
                    <div class="form-control">
                        <label for="lastname">Apellido</label>
                        <asp:TextBox ID="txtApellido" runat="server"
                            type="text" class="input" placeholder="Ingresa tu Apellido" required></asp:TextBox>
                       
                    </div>
                    <div class="form-control">
                        <label for="email">Correo</label>
                        <asp:TextBox ID="txtCorreo" runat="server"
                            type="text" class="input" placeholder="Correo electrónico" required></asp:TextBox>
                    </div>
                    <div class="form-control">
                        <label for="password">Contraseña</label>
                        <asp:TextBox ID="txtPassword" runat="server" type="password" class="input" placeholder="Ingresa tu contraseña" required></asp:TextBox>
                    </div>
                     <div class="form-control">
                        <label for="password">Sexo</label>
                         <div class="flex">
                              <asp:RadioButton ID="rdbMasculino" required runat="server" Text="Masculino" GroupName="sexo" />
                             <asp:RadioButton ID="rdbFemenino" required runat="server" Text="Femenino" GroupName="sexo" />
                         </div>
                        
                    </div>

                    <!-- Boton de Asp -->
                    <asp:Button ID="BtnRegistrar" runat="server" Text="Registrase" type="submit" class="btn-submit" OnClick="BtnRegistrar_Click"/>
                </main>
                 <asp:Label ID="lblMensaje" class="mensaje" runat="server" Text=""></asp:Label>
             </div>

        </div>
    </form>
</body>
</html>
