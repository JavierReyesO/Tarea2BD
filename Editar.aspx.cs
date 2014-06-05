using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Editar : System.Web.UI.Page
{
    Foro foro = new Foro();
    DataSet respuesta;
    string nombre;
    string code;
    protected void Page_Load(object sender, EventArgs e)
    {
        code = Request.QueryString["code"];
        nombre = Request.QueryString["perfil"];
        respuesta = foro.MostrarUsuario(nombre);
        if(code == "016"){
            LabelIDG.Visible = true;
            TextBoxIDG.Visible = true; 
        }
        TextBoxPass.Text = respuesta.Tables["usuario"].Rows[0][3].ToString();
        TextBoxRep.Text = respuesta.Tables["usuario"].Rows[0][3].ToString();
        TextBoxFecha.Text = respuesta.Tables["usuario"].Rows[0][6].ToString();
        TextBoxURL.Text = respuesta.Tables["usuario"].Rows[0][5].ToString();
        TextBoxIDG.Text = respuesta.Tables["usuario"].Rows[0][1].ToString();


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBoxPass.Text == TextBoxRep.Text) {
            DateTime fecha = Convert.ToDateTime(TextBoxFecha.Text);
            string campos = "contrasenna='" + TextBoxRep.Text + "', fecha_nacimiento='" + fecha + "', avatar_url='" + TextBoxURL.Text +"'";
            if (code == "016") {
                campos = "contrasenna='" + TextBoxRep.Text + "', fecha_nacimiento='" + fecha + "', avatar_url='" + TextBoxURL.Text + "', id_grupo='"+TextBoxIDG.Text+"'";
            }
            if (foro.Modificar("usuario", campos, nombre) == true) { 
                LabelEstado.Text = "Se ha modificado exitosamente!";
            }
            else
            {
                LabelEstado.Text = foro.MostrarError;
            }
        }
        else
        {
            LabelEstado.Text = "Ingrese contraseña correctamente";
        }
    }
}