<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Editar.aspx.cs" Inherits="Editar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 29px;
        }
        .style2
        {
            width: 180px;
        }
        .style3
        {
            height: 29px;
            width: 180px;
        }
        .style4
        {
            width: 630px;
        }
        .style5
        {
            height: 29px;
            width: 630px;
        }
    </style>
</head>
<body style="height: 242px">
    <form id="form1" runat="server">
    <div>
    
        Editar Perfil
    
    </div>
    <table style="width: 100%; height: 116px;">
        <tr>
            <td class="style2">
                Contraseña:</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxPass" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Volver a Categoria" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                Repetir Contraseña:</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxRep" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Fecha de Nacimiento:</td>
            <td class="style4">
                <asp:TextBox ID="TextBoxFecha" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                Avatar URL:</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxURL" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="LabelIDG" runat="server" Text="ID Grupo:"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBoxIDG" runat="server"></asp:TextBox>
            </td>
            <td class="style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Label ID="LabelEstado" runat="server"></asp:Label>
            </td>
            <td class="style1">
                <asp:Button ID="ButtonFinalizar" runat="server" onclick="Button1_Click" 
                    Text="Finalizar" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
