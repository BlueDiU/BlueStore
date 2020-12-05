using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace BlueStore
{
    public partial class productos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                /* Param 1(nombre producto -> Label al que asigna)
                 * param 2(precio-  Label al que asigna)
                 * param3(id correspondiente)
                 */

                // Render Camisas
                RenderProd(lblCamisa1, lblCPrecio1, 1);
                RenderProd(lblCamisa2, lblCPrecio2, 2);
                RenderProd(lblCamisa3, lblCPrecio3, 3);
                // Render Pantalones
                RenderProd(lblPantalon1, lblPPrecio1, 4);
                RenderProd(lblPantalon2, lblPPrecio2, 5);
                RenderProd(lblPantalon3, lblPPrecio3, 6);
                // Render Chaquetas
                RenderProd(lblChaqueta1, lblCPrecio1, 7);
                RenderProd(lblChaqueta2, lblCPrecio2, 8);
                RenderProd(lblChaqueta3, lblCPrecio3, 9);
            }
        }

        //Atributo global que guarda la conexión
        private readonly string conn = "server=localhost;user id=root;password=kernelpanic2311;persist security info=True;database=bluestore";

        public void RenderProd(System.Web.UI.WebControls.Label producto, System.Web.UI.WebControls.Label precio, int id)
        {
            using (var con = new MySqlConnection(conn))
            {
                con.Open();

                using (var cmd = new MySqlCommand("SELECT nombre, precio FROM productos where id=" + id + " ", con))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            producto.Text = reader["nombre"].ToString(); // Prenda
                            precio.Text = reader["precio"].ToString(); // Precio
                        }
                    }
                }

                con.Close();
            }
        }
    }
}