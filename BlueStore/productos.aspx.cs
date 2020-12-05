using MySql.Data.MySqlClient;
using System;

namespace BlueStore
{
    public partial class productos : System.Web.UI.Page
    {
        private double total_compra = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblTotalPago.Text = "0";

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
                RenderProd(lblChaqueta1, lblChPrecio1, 7);
                RenderProd(lblChaqueta2, lblChPrecio2, 8);
                RenderProd(lblChaqueta3, lblChPrecio3, 9);
                // Render Zapatos
                RenderProd(lblZapato1, lblZPrecio1, 10);
                RenderProd(lblZapato2, lblZPrecio2, 11);
                RenderProd(lblZapato3, lblZPrecio3, 12);
                // Render Blusas
                RenderProd(lblBlusa1, lblBPrecio1, 13);
                RenderProd(lblBlusa2, lblBPrecio2, 14);
                RenderProd(lblBlusa3, lblBPrecio3, 15);
                // Render vestidos
                RenderProd(lblVestido1, lblVPrecio1, 16);
                RenderProd(lblVestido2, lblVPrecio2, 17);
                RenderProd(lblVestido3, lblVPrecio3, 18);
                // Render Accesorios
                RenderProd(lblAcce1, lblAccPrecio1, 19);
                RenderProd(lblAcce2, lblAccPrecio2, 20);
                RenderProd(lblAcce3, lblAccPrecio3, 21);
            }
        }

        //Atributo global que guarda la conexión
        private readonly string conn = "server=localhost;user id=root;password=kernelpanic2311;persist security info=True;database=bluestore";

        // Método para procesar el pago
        public double Pago(double cantidad)
        {
            //si ya se ha usado el viewstate con la variable
            if (ViewState["pago"] != null)
            {
                // Devuelve un obj y lo convierto a double
                total_compra += (double)ViewState["pago"] + cantidad;
            }

            // asignamos el valor al viewstate de la variable pago
            ViewState["pago"] = total_compra;

            return total_compra;
        }

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

        public int ObtenerId(string nombre)
        {
            using (var con = new MySqlConnection(conn))
            {
                string id = "0";
                con.Open();

                using (var cmd = new MySqlCommand("SELECT id FROM usuarios WHERE nombre='" + nombre + "' ", con))
                {
                    using (var reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            id = reader["id"].ToString(); // id
                        }
                    }
                }

                con.Close();

                return int.Parse(id);
            }
        }

        protected void BtnCamisa1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(12.3).ToString(); ;
        }

        protected void BtnCamisa2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(11.5).ToString();
        }

        protected void BtnCamisa3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(10.99).ToString();
        }

        protected void BtnPantalon1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(23.45).ToString();
        }

        protected void BtnPantalon2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(30.34).ToString();
        }

        protected void BtnPantalon3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(28).ToString();
        }

        protected void BtnChaqueta1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(19.45).ToString();
        }

        protected void BtnChaqueta2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(25.15).ToString();
        }

        protected void BtnChaqueta3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(34.8).ToString();
        }

        protected void BtnZapato1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(70.5).ToString();
        }

        protected void BtnZapato2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(50.2).ToString();
        }

        protected void BtnZapato3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(60.9).ToString();
        }

        protected void BtnBlusa1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(10).ToString();
        }

        protected void BtnBlusa2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(12.5).ToString();
        }

        protected void BtnBlusa3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(14.29).ToString();
        }

        protected void BtnVestido1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(21).ToString();
        }

        protected void BtnVestido2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(22.9).ToString();
        }

        protected void BtnVestido3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(17.8).ToString();
        }

        protected void BtnAccesorio1_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(5).ToString();
        }

        protected void BtnAccesorio2_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(30).ToString();
        }

        protected void BtnAccesorio3_Click(object sender, EventArgs e)
        {
            lblTotalPago.Text = Pago(22.9).ToString();
        }

        protected void BtnPagarTotal_Click(object sender, EventArgs e)
        {
            forms.CUsuarios us = new forms.CUsuarios();

            string nombre = txtUserPago.Text;
            string password = txtPasswordPago.Text;
            string total = lblTotalPago.Text;

            if (nombre != "" && password != "")
            {
                int id = ObtenerId(nombre);

                if (us.ValidarUsuario(nombre, password) == true && total == "")
                {
                    us.IngresarPago(total, id);
                    lblConfirmacion.Text = "Pago realizado con éxito 🎉";
                }
                else
                {
                    lblConfirmacion.Text = "😕 No aun no hay nada que comprar";
                }

                if (us.ValidarUsuario(nombre, password) == false)
                {
                    lblConfirmacion.Text = "Nombre o contraseña no validos";
                }
            }
        }
    }
}