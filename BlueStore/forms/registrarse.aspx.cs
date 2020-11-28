using System;

namespace BlueStore.forms
{
    public partial class registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
                // Paso los parametros requeridos
                u.RegistrarUsuario(nombre, apellido, correo, password, sexo);

                // Limpio los campos del formulario
                txtNombre.Text = "";
                txtApellido.Text = "";
                txtCorreo.Text = "";
                txtPassword.Text = "";
                sexo = "";

                // Redirecciono a la página de inicio
                Response.Redirect("../inicio.aspx");
            }
        }
    }
}