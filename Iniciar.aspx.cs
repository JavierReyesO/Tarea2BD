using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Iniciar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonEntrar_Click(object sender, EventArgs e)
    {
        Int32 newProdID;
        string CadConexion, sql;
        SqlConnection Connection;
        SqlCommand ComandoSQL;
        CadConexion = (@"Data Source=JAVIER\BD;Initial Catalog=BD;Integrated Security=True;Pooling=False");
        Connection = new SqlConnection(CadConexion);
        sql = string.Format(@"SELECT id_usuario FROM usuario WHERE nombre ='{0}' AND contrasenna ='{1}'", TextBoxUsuario.Text, TextBoxPass.Text);
        ComandoSQL = new SqlCommand(sql, Connection);
        Connection.Open();
        newProdID = (Int32)ComandoSQL.ExecuteScalar();
        string id_usuario = newProdID.ToString();
        SqlDataReader Reg = null;
        Reg = ComandoSQL.ExecuteReader();
        if (Reg.Read()){
            Response.Redirect("Categorias.aspx?nombre="+TextBoxUsuario.Text+"&id_usuario="+id_usuario);
        }
        else{
        }
        Connection.Close();
    }
}