using System;
using System.Data;

namespace BlueStore.Admin
{
    public partial class administrador_usuarios : System.Web.UI.Page, IEsValido
    {
        private CUsuariosAdmin us = new CUsuariosAdmin();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();

            ds = us.DataUsuarios();
            this.GVUsuarios.DataSource = ds.Tables[0];
            this.GVUsuarios.DataBind();
        }

        // Método que valida un email valido
        public bool EmailValido(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        // Método que valida que un nombre y apellido es valido
        public bool IsValidName(string nombre, string apellido)
        {
            if (nombre.Length >= 3 && apellido.Length >= 3)
                return true;
            else
                return false;
        }
        // Metodo que valida que una contraseña es valida
        public bool isValidPassword(string password)
        {
            if (password.Length >= 5)
                return true;
            else
                return false;
        }

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
            // ! =
            if (id == "" && nombre != "" && apellido != ""
                && correo != "" && password != "" && sexo != "")
            {
                if (EmailValido(correo) == true &&
                    IsValidName(nombre, apellido) == true &&
                    isValidPassword(password) == true)
                {
                    // Paso los parametros requeridos
                    us.RegistrarUsuario(nombre, apellido, correo, password, sexo);

                    lblMensaje.Text = "Se agrego con éxito";
                }
                else
                {
                    lblMensaje.Text = "No se puedo agregar, revise el formulario y vuelva a intentar";
                }
            }
            else if (id != "")
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
            }
            else
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
                if (EmailValido(correo) == true &&
                    IsValidName(nombre, apellido) == true &&
                    isValidPassword(password) == true)
                {
                    // Metodo para modificar un dato por id
                    us.ModificarUsuario(id, nombre, apellido, correo, password, sexo);
                    lblMensaje.Text = "Dato modificado con éxito";
                }
                else
                {
                    lblMensaje.Text = "No se puedo modificar, revise el formulario y vuelva a intentar";
                }
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
            lblMensaje.Text = "";
        }
    }
}