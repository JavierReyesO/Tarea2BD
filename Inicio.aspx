<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Inicio.aspx.cs" Inherits="Inicio" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 261px;
        }
        .style2
        {
            width: 193px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 67%; height: 41px; margin-bottom: 0px;">
        <tr>
            <td class="style1">
                Foro Cartas Magic</td>
            <td class="style2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Iniciar Sesión" />
            </td>
            <td>
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Registrarse" />
            </td>
        </tr>
        </table>
    Categorias Publicas B*tch !<asp:GridView ID="GridView1" runat="server" 
        AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" 
        DataSourceID="SqlDataSource1" GridLines="Vertical" 
        onselectedindexchanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="Gainsboro" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="nombre" 
                DataNavigateUrlFormatString="Temas.aspx?nombre={0}" DataTextField="nombre" 
                HeaderText="Nombre" NavigateUrl="~/Temas.aspx" />
            <asp:BoundField DataField="nombre" HeaderText="nombre" 
                SortExpression="nombre" InsertVisible="False" Visible="False" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripcion" 
                SortExpression="descripcion" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:BDConnectionString %>" 
        SelectCommand="SELECT [nombre], [descripcion] FROM [categoria] WHERE ([publico] = @publico)">
        <SelectParameters>
            <asp:Parameter DefaultValue="True" Name="publico" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
