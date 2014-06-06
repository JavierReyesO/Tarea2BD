<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Temas.aspx.cs" Inherits="Temas" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="style1">
                <asp:Label ID="LabelPrueba" runat="server"></asp:Label>
            </td>
            <td class="style1">
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id_tema" 
                DataNavigateUrlFormatString="Comentarios.aspx?id={0}" DataTextField="nombre" 
                HeaderText="Nombre" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" 
                Visible="False" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                SortExpression="descripcion" />
            <asp:BoundField DataField="id_usuario" HeaderText="id_usuario" 
                SortExpression="id_usuario" />
            <asp:HyperLinkField DataNavigateUrlFields="id_tema" 
                DataNavigateUrlFormatString="Eliminar.aspx?id_tema={0}" HeaderText="Eliminar" 
                Text="Eliminar" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BDConnectionString %>" 
        onselecting="SqlDataSource1_Selecting" 
        SelectCommand="SELECT [nombre], [descripcion], [id_usuario], [id_tema] FROM [tema]"></asp:SqlDataSource>
    </form>
</body>
</html>
