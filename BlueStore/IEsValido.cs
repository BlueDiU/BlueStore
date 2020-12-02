using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BlueStore
{
    interface IEsValido
    {
        // Metodo que valida un correo electronico
        bool EmailValido(string email);
        // Metodo que valida nombre y apellido
        bool IsValidName(string nombre, string apellido);
        // Metodo que valida una contraseña valida
        bool isValidPassword(string password);
    }
}
