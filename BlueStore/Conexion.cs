using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
//using System.Windows.Forms;
using MySql.Data.MySqlClient;

class Conexion
{
    const string var_ruta = "server=localhost;user id=root;password=kernelpanic2311;persist security info=True;database=name";
    DataSet ds = new DataSet();
    MySql.Data.MySqlClient.MySqlConnection cnSQL = new MySql.Data.MySqlClient.MySqlConnection(var_ruta);
    MySql.Data.MySqlClient.MySqlCommand cmSQL = new MySql.Data.MySqlClient.MySqlCommand();

    public DataSet Buscar(string strSQL, string tabla)
    {
        DataSet ds = new DataSet();
        try
        {
            cnSQL.Open();
            MySql.Data.MySqlClient.MySqlDataAdapter daSQL = new MySql.Data.MySqlClient.MySqlDataAdapter(strSQL, cnSQL);
            daSQL.Fill(ds, tabla);
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cnSQL.Close();
        }
        return ds;
    }

    public void Operacion(string strsql)
    {
        try
        {
            cnSQL.Open();
            MySql.Data.MySqlClient.MySqlCommand cmSQL = new MySql.Data.MySqlClient.MySqlCommand(strsql, cnSQL);
            cmSQL.ExecuteNonQuery();
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cnSQL.Close();
        }
    }

    public Int64 Valor(string strsql)
    {
        try
        {
            cnSQL.Open();
            MySql.Data.MySqlClient.MySqlCommand cmsSQL = new MySql.Data.MySqlClient.MySqlCommand(strsql, cnSQL);
            return Convert.ToInt64(cmsSQL.ExecuteScalar());
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            cnSQL.Close();
        }
    }
}



