using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Temas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string tema = Request.QueryString["id"];

        LabelPrueba.Text = tema;
    }
    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}