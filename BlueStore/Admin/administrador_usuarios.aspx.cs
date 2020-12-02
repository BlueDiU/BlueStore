using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlueStore.Admin
{
    public partial class administrador_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        CUsuariosAdmin us = new CUsuariosAdmin();

        protected void BntAgregar_Click(object sender, EventArgs e)
        {
            string id = Convert.ToString(txtID.Text);
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string password = txtPassword.Text;
            string sexo = "";

            

            // Verifico cual botón está seleccionado
            if (rdbHombre.Checked == true)
                sexo = "hombre";
            if (rdbMujer.Checked == true)
                sexo = "mujer";

            if ( id == "" && nombre != "" && apellido != "" && correo != "" && password != "" && sexo != "")
            {
                nombre.ToLower();
                apellido.ToLower();
                correo.ToLower();
                password.ToLower();
                sexo.ToLower();

                // Paso los parametros requeridos
                us.RegistrarUsuario(nombre, apellido, correo, password, sexo);

                // Mensaje de la operacion
                lblMensaje.Text = "Se agrego con éxito";
            } else if (id != "")
            {
                lblMensaje.Text = "No es necesaria añadir un ID";
            }
        }

        protected void BtnBorrar_Click(object sender, EventArgs e)
        {
            // ID
            int id = int.Parse(txtID.Text);

            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string password = txtPassword.Text;

            if (id != 0 && nombre == "" && apellido == "" && correo == "" && password == "")
            {
                // Metodo para borrar un dato por id
                us.BorrarUsuario(id);

                lblMensaje.Text = "Dato borrado con éxito";
            } else
            {
                lblMensaje.Text = "No se pudo borrar, revise que el resto de los campos enten vacios";
            }
            
        }

        protected void BtnActualizar_Click(object sender, EventArgs e)
        {
            // ID
            int id = int.Parse(txtID.Text);

            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string password = txtPassword.Text;
            string sexo = "";

            // Verifico cual botón está seleccionado
            if (rdbHombre.Checked == true)
                sexo = "hombre";
            if (rdbMujer.Checked == true)
                sexo = "mujer";

            if (id != 0 && nombre != "" && apellido != "" && correo != "" && password != "")
            {
                // Metodo para borrar un dato por id
                us.ModificarUsuario(id, nombre, apellido, correo, password, sexo);

                lblMensaje.Text = "Dato modificado con éxito";
            }

        }

        protected void BtnLimpiar_Click(object sender, EventArgs e)
        {
            // Limpio los campos del formulario
            txtID.Text = "";
            txtNombre.Text = "";
            txtApellido.Text = "";
            txtCorreo.Text = "";
            txtPassword.Text = "";
        }
    }
}