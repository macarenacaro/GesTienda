<%@ OutputCache Duration="1" VaryByParam="None" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ProductosVer.aspx.cs" Inherits="GesTienda.ProductosVer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
          <div class="contenidotitulo" style="text-align:center">Productos</div><br />

    <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="lblMensajes" runat="server" Text=""></asp:Label>

</asp:Content>
