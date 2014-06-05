using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Perfil : System.Web.UI.Page
{
    string nombreusuario = "1";
    Foro foro = new Foro();
    DataSet resp;
    DataSet respuesta;
    protected void Page_Load(object sender, EventArgs e)
    {
        string nombre = Request.QueryString["perfil"];
        string usuario = Request.QueryString["usuario"];
        resp = foro.MostrarUsuario(usuario);
        respuesta = foro.MostrarUsuario(nombre);
        TextBoxNombre.Text = respuesta.Tables["usuario"].Rows[0][2].ToString();
        TextBoxEdad.Text = foro.CalcularEdad(respuesta.Tables["usuario"].Rows[0][6]).ToString();
        TextBoxSexo.Text = respuesta.Tables["usuario"].Rows[0][7].ToString();
        TextBoxNumero.Text = "HOLI"; 
        TextBoxFecha.Text = respuesta.Tables["usuario"].Rows[0][8].ToString();
        TextBoxTipo.Text = foro.DevolverTipo(respuesta.Tables["usuario"].Rows[0][1].ToString());
        if (TextBoxNombre.Text == nombre) { ButtonEditar.Visible = true; }
        if (resp.Tables["usuario"].Rows[0][1].ToString() == "3") { ButtonEditar.Visible = true; }
    }

    protected void ButtonEditar_Click(object sender, EventArgs e)
    {
        string usuario = Request.QueryString["usuario"];
        string nombre = Request.QueryString["perfil"];
        string Name = resp.Tables["usuario"].Rows[0][2].ToString();
        string id_grupo = resp.Tables["usuario"].Rows[0][1].ToString();
        if (id_grupo == "3")
        {
            Response.Redirect("Editar.aspx?code=016&perfil="+nombre); // Falta pasar datos
        }
        if (Name == usuario){
            Response.Redirect("Editar.aspx?code=069&perfil="+nombre); // Falta pasar datos
        }
        else
        {

        }


    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
}