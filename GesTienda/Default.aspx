<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 183px;
        }
    </style>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="cabecera">
               <div id="cabecera1">
                  <br />
                  comerciodaw.com &nbsp;
               </div>
               <div id="cabecera2">
                   <br />
                   &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                   <br />
               </div>
             
            </div>
            <div class="contenidotitulo" style="text-align:center; margin-top:20px">Tipos de productos</div> <br />
<br />
        <div style="display:flex; flex-direction: row;justify-content:center; margin-top:30px">
        <div style="align-items:center; text-align:center;">
            <asp:Login ID="Login1" runat="server"  style="padding:30px; padding-right:0px" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" OnAuthenticate="Login1_Authenticate" Width="100%">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LayoutTemplate>
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse; margin-top:20px">
                        <tr>
                            <td>
                                <table cellpadding="0" style="width:550px">
                                    <tr>
                                        <td align="center" colspan="2" style="font-weight: bolder; font-size: medium;padding-bottom:30px">Iniciar sesión</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Font-Size="Medium">Correo Electrónico:</asp:Label>
                                        </td>
                                        <td class="auto-style2" style="display:flex; flex-direction:row; width:350px">
                                            <asp:TextBox ID="UserName" runat="server" Width="250px" style="margin-right:15px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password" Font-Size="Medium">Contraseña:</asp:Label>
                                        </td>
                                        <td class="auto-style2" style="display:flex; flex-direction:row; width:350px">
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="250px" style="margin-right:15px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" style="color:white; margin-top:20px; margin-bottom:20px" Text="Inicio de sesión" ValidationGroup="Login1" Font-Size="Medium" BackColor="#000066" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>

            <asp:Label ID="lblMensajes" runat="server" Text=""></asp:Label>
        </div>
        </div>
    </form>
</body>
</html>
