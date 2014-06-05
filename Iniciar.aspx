<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Iniciar.aspx.cs" Inherits="Iniciar" %>

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
            width: 129px;
        }
        .style3
        {
            height: 23px;
            width: 129px;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

// ]]>
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Iniciar Sesión</div>
    <table style="width:100%;">
        <tr>
            <td class="style2">
                Nombre Usuario:</td>
            <td>
                <asp:TextBox ID="TextBoxUsuario" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Contraseña:</td>
            <td>
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
            </td>
            <td class="style1">
                <asp:Button ID="ButtonEntrar" runat="server" onclick="ButtonEntrar_Click" 
                    Text="Entrar" />
            </td>
            <td class="style1">
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
