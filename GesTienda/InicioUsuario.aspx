<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InicioUsuario.aspx.cs" Inherits="GesTienda.InicioUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
          <div class="contenidotitulo" style="text-align:center; margin-top:20px">Inicio de Usuario</div> <br />
<br />
    <asp:Label ID="Label1" runat="server" Text="Esta es la página de Inicio de los usuarios. Bienvenido a la Aplicación Web GesTienda" Font-Size="Medium"></asp:Label>
</asp:Content>
