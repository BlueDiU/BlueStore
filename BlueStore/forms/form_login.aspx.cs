using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlueStore.forms
{
    public partial class form_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensaje.Text = "";
        }

        protected void BtnIniciarS_Click(object sender, EventArgs e)
        {
            CUsuarios u = new CUsuarios();
            string nombre = txtNombreL.Text;
            string password = txtContraL.Text;

            if (nombre != "" && password != "")
            {
                if (u.ValidarUsuario(nombre, password) == true)
                {
                    Response.Redirect("../inicio.aspx");
                } else
                {
                    lblMensaje.Text = "Nombre o contraseña no validos";
                }
            }

           
        }
    }
}