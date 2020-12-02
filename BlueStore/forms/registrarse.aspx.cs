using System;

namespace BlueStore.forms
{
    public partial class registrarse : System.Web.UI.Page, IEsValido
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void BtnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string apellido = txtApellido.Text;
            string correo = txtCorreo.Text;
            string password = txtPassword.Text;
            string sexo = "";

            // Convieto a minúscula para evitar conflictos
            // Al logearse
            nombre.ToLower();
            apellido.ToLower();
            correo.ToLower();
            password.ToLower();


            // Instacia de mi clase que maneja la logica
            // para registrar un usuario
            CUsuarios u = new CUsuarios();

            // Verifico cual botón está seleccionado
            if (rdbMasculino.Checked == true)
                sexo = "hombre";
            if (rdbFemenino.Checked == true)
                sexo = "mujer";

            if (nombre != "" && apellido != "" && correo != "" && password != "" && sexo != "")
            {
                if (EmailValido(correo) == true &&
                    IsValidName(nombre, apellido) == true &&
                    isValidPassword(password) == true)
                {
                    // Paso los parametros requeridos
                    u.RegistrarUsuario(nombre, apellido, correo, password, sexo);
                    // Redirecciono a la página de inicio
                    Response.Redirect("../inicio.aspx");
                } else
                {
                    lblMensaje.Text = "No se puedo registrar, revise el formulario e intente de nuevo";
                }
                   
                
            }
        }

    }
}