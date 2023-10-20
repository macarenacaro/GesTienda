<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="~/Estilos/Error.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label2" runat="server" Text="Aplicacion Web GesTienda" CssClass="titulo"></asp:Label><br /><br />
            <asp:Label ID="Label1" runat="server" Text="Error en Tiempo de Ejecución" CssClass="subtitulo"></asp:Label>
           <br />
            <div class="cuadrado"  >
                <asp:Label ID="Label3" runat="server" Text="Error ASP.NET:"  CssClass="titleError"></asp:Label><br />
                <asp:Label ID="lblErrorASP" runat="server" Text="Label" CssClass="error"></asp:Label>
                <br /><br />
                <asp:Label ID="Label4" runat="server" Text="Error ASP.ADO:"  CssClass="titleError"></asp:Label><br />
                <asp:Label ID="lblErrorADO" runat="server" Text="Label" CssClass="error"></asp:Label>

            </div>
        </div>
    </form>
</body>
</html>
