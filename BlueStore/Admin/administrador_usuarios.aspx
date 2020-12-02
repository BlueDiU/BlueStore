<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="administrador_usuarios.aspx.cs" Inherits="BlueStore.Admin.administrador_usuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Administrar Usuarios</title>
    <link href="../estilos/admin.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="container">
                <h2>Administrador para Usuarios</h2>
                <!--ID-->
                <asp:Label class="title" ID="Label5" runat="server" Text="ID:"></asp:Label>
                <asp:TextBox autocomplete="off" class="input" ID="txtID" runat="server"></asp:TextBox>
                <span class="separar"></span>
                <!--Nombres-->
                <asp:Label class="title" ID="Label1" runat="server" Text="Nombre:"></asp:Label>
                <asp:TextBox autocomplete="off" class="input" ID="txtNombre" runat="server"></asp:TextBox>
                <!--Apellidos-->
                <asp:Label class="title" ID="Label2" runat="server" Text="Apellidos"></asp:Label>
                <asp:TextBox autocomplete="off" class="input" ID="txtApellido" runat="server"></asp:TextBox>
                <!--correo-->
                <asp:Label class="title" ID="Label3" runat="server" Text="Correo"></asp:Label>
                <asp:TextBox autocomplete="off" class="input" ID="txtCorreo" runat="server"></asp:TextBox>
                <!--password-->
                <asp:Label class="title" ID="Label4" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox autocomplete="off" class="input" ID="txtPassword" runat="server"></asp:TextBox>
                <!--sexo-->
                <div>
                    <asp:RadioButton ID="rdbHombre" runat="server" Checked="True" GroupName="sexo" Text="Hombre" />
                     <asp:RadioButton ID="rdbMujer" runat="server" GroupName="sexo" Text="Mujer" />
                </div>
                <!--Botones para las acciones con la DB-->
                <div class="container-btns">
                    <asp:Button CssClass="input-db" ID="BntAgregar" runat="server" Text="Agregar" OnClick="BntAgregar_Click" />
                    <asp:Button  CssClass="input-db" ID="BtnBorrar" runat="server" Text="Borrar" OnClick="BtnBorrar_Click" />
                    <asp:Button  CssClass="input-db" ID="BtnActualizar" runat="server" Text="Actualizar" OnClick="BtnActualizar_Click" />
                    <asp:Button  CssClass="input-db" ID="BtnLimpiar" runat="server" Text="Limpiar" OnClick="BtnLimpiar_Click" UseSubmitBehavior="False" />
                </div>
                <!--Mensaje-->
                 <asp:Label CssClass="mensaje" ID="lblMensaje" runat="server" Text=""></asp:Label>
            </div>

             <!--start Grid-->
            <section class="grid-container">
                <asp:GridView ID="GVUsuarios" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </section>
             <!--end Grid-->
        </div>
    </form>
</body>
</html>