<%@ OutputCache Duration="1" VaryByParam="None" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="InicioAdmin.aspx.cs" Inherits="GesTienda.InicioAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
      <div class="contenidotitulo" style="text-align:center; margin-top:20px">Inicio de Administrador</div> <br />
<br />
    <asp:Label ID="Label1" runat="server" Text="Esta es la página de Inicio de los administradores. Bienvenido al Panel de Administración de la Aplicación Web GesTienda" Font-Size="Medium"></asp:Label>
</asp:Content>
