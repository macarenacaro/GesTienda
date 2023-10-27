<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
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
            <div class="contenidotitulo" style="text-align:center; margin-top:20px">GesTienda</div>
            <div style="font-size:medium; font-weight:bold; text-align:center; margin-top:10px; font-size:16px">Registro de Usuarios</div> <br />
       
        <div style="display:flex; justify-content:center; align-items:center; text-align:center">
        <asp:Table ID="Table1" runat="server">
            <asp:TableRow runat="server">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Correo Electrónico</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtCorCli" runat="server" Width="100%"></asp:TextBox>
       
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Contraseña</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtPassword1" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Introduzca nuevamente la Contraseña</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtPassword2" runat="server" Width="100%" TextMode="Password"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">NIF/NIE/CIF</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtIdCliente" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>



            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Nombre/Razon Social</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtNomCli" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Dirección</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtDirCli" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Población</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtPobCli" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Código Postal</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtCpoCli" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>


            <asp:TableRow runat="server" style="height:40px">
                <asp:TableCell runat="server" style="text-align:right" Font-Size="Medium">Teléfono</asp:TableCell>
                <asp:TableCell runat="server" Width="50">    </asp:TableCell>
                <asp:TableCell runat="server"  Width="200">
                    <asp:TextBox ID="txtTelCli" runat="server" Width="100%"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
            </div>
        <div style="display:flex; flex-direction:row; justify-content:center;  text-align:center; width:100%; margin-top:20px">
            <asp:Button ID="Button1" runat="server" Text="Insertar" ForeColor="White" BackColor="#000066" Height="32px" Width="88px" OnClick="Button1_Click" />
            <br />
        </div>

         <div style="display:flex; flex-direction:row; justify-content:center; margin-top:20px;  text-align:center; width:100%">
            
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="Default.aspx" Font-Size="Medium">Ir al Inicio</asp:LinkButton>


         </div>

              <div style="display:flex; flex-direction:row; justify-content:center; margin-top:20px;  text-align:center; width:100%">
            
            <asp:Label ID="lblMensajes" runat="server" Text=""></asp:Label><br />

         </div>

    </form>
</body>
</html>
