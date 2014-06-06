using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Categorias : System.Web.UI.Page
{
    string nombre;
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        nombre = Request.QueryString["nombre"];
        id = Request.QueryString["id"];
    }
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void ButtonVer_Click(object sender, EventArgs e)
    {
        Response.Redirect("Perfil.aspx?nombre="+nombre+"&id="+id);
    }
}