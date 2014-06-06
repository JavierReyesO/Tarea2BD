<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Perfil.aspx.cs" Inherits="Perfil" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 23px;
        }
        .style2
        {
            width: 156px;
        }
        .style3
        {
            height: 23px;
            width: 156px;
        }
        .style4
        {
            width: 638px;
        }
        .style5
        {
            height: 23px;
            width: 638px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Perfil</div>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Datos</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="Button" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Nombre:</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxNombre" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Edad:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxEdad" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Button ID="ButtonEditar" runat="server" onclick="ButtonEditar_Click" 
                    Text="Editar Perfil" Visible="False" />
            </td>
        </tr>
        <tr>
            <td class="style3">
                Sexo:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxSexo" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                N° de Comentarios:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxNumero" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Fecha de Registro:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxFecha" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Tipo Usuario:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxTipo" runat="server" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
