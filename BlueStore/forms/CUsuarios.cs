using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlueStore.forms
{
    public class CUsuarios
    {
        Conexion c = new Conexion();

        // Método para registrar un nuevo usuario
        public void RegistrarUsuario(string nombre, string apellido, string correo, string password, string sexo)
        {
            c.Operacion("INSERT INTO usuarios (nombre, apellido, correo, password, sexo)" +
                " values('" + nombre + "','" + apellido + "','" + correo + "','" + password + "', '" + sexo + "' )");
        }
        // Método que valida que exista un usuario en la base
        // de datos previamente registrado.
        public bool ValidarUsuario(string nombre, string password)
        {
            /*   Retorna el valor (1) si encuentro los datos en toda la tabla
                y devuelve true sino devuelve (0) y retorna false, es decir que
                no encontro esos datos en toda la tabla. 
            */
            if (c.Valor("SELECT COUNT(*) FROM usuarios WHERE nombre='" + nombre + "' AND password='" + password + "'") == 1)
                return true;
            else
                return false;
        }
    }
}