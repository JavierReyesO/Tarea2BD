using System;
using System.Globalization;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Registrarse : System.Web.UI.Page
{
    Foro foro = new Foro();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonRegistration_Click(object sender, EventArgs e)
    {
        //string datePatt = @"M/d/yyyy hh:mm:ss tt";
        LabelEstado.Visible = true;
        string tabla = "usuario";
        CultureInfo provider = CultureInfo.InvariantCulture;
        string format = "d";
        DateTime result = DateTime.ParseExact(TextBoxNacimiento.Text , format, provider);
        DateTime now = DateTime.Today;
        int cant = 0;
        int idGrupo = 1;
        string campos = "id_grupo, nombre, contrasenna, cantidad_comentarios, avatar_url, fecha_nacimiento, sexo, fecha_registro";
        string valores = "'" + idGrupo + "','" + TextBoxNombreReg.Text + "', '" + TextBoxPassReg.Text + "', '" + cant + "', '" + TextBoxAvatar.Text + "', '" + result +"', '" + TextBoxSexo.Text + "','" + now +"'";
        if (TextBoxPassReg.Text == TextBoxPassRep.Text)
        {
            if (foro.Registrar(tabla, campos, valores) == true)
            {
                LabelEstado.Text = "Se ha registrado exitosamente!";
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
    protected void ButtonVolver_Click(object sender, EventArgs e)
    {
        Response.Redirect("Inicio.aspx");
    }
}