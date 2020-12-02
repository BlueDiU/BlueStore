namespace BlueStore.Admin
{
    public class CUsuariosAdmin
    {
        Conexion c = new Conexion();

        // Método para registrar un nuevo usuario
        public void RegistrarUsuario(string nombre, string apellido, string correo, string password, string sexo)
        {
            c.Operacion("INSERT INTO usuarios (nombre, apellido, correo, password, sexo)" +
                " values('" + nombre + "','" + apellido + "','" + correo + "','" + password + "', '" + sexo + "' )");
        }

        // Metodo para borrar un usuario
        public void BorrarUsuario(int id)
        {
            c.Operacion("DELETE FROM usuarios WHERE id=" + id + " ");
        }

        // Metodo para modificar un usuario
        public void ModificarUsuario(int id, string nombre, string apellido, string correo, string password, string sexo)
        {
            c.Operacion("UPDATE usuarios set nombre='" + nombre + "',apellido='" + apellido + "',correo='" + correo + "',password='" + password + "',sexo='" + sexo + "' WHERE id=" + id + " ");
        }
    }
}