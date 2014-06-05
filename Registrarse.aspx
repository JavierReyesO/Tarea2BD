<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registrarse.aspx.cs" Inherits="Registrarse" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 216px;
        }
        .style2
        {
            width: 190px;
        }
        .style3
        {
            width: 216px;
            height: 26px;
        }
        .style4
        {
            width: 190px;
            height: 26px;
        }
        .style5
        {
            height: 26px;
        }
        .style6
        {
            width: 580px;
        }
        .style7
        {
            height: 26px;
            width: 580px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="width: 100%; height: 80px;">
            <tr>
                <td class="style1">
                    Registrarse</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    <asp:Label ID="LabelEstado" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="ButtonVolver" runat="server" onclick="ButtonVolver_Click" 
                        Text="Volver al Inicio" Width="125px" />
                </td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Nombre:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxNombreReg" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Contraseña:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxPassReg" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    Repetir Contraseña:</td>
                <td class="style4">
                    <asp:TextBox ID="TextBoxPassRep" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td class="style7">
                </td>
                <td class="style5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Fecha Nacimiento(dd/mm/aaaa):</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxNacimiento" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Sexo:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxSexo" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    Avatar URL:</td>
                <td class="style2">
                    <asp:TextBox ID="TextBoxAvatar" runat="server"></asp:TextBox>
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="ButtonRegistration" runat="server" 
                        onclick="ButtonRegistration_Click" Text="Registrarse" />
                </td>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
