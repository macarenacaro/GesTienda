<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
     <div class="contenidotitulo" style="text-align:center">Mantenimiento Productos</div><br />
  
    
    <div class="table" style="display:flex; flex-direction:row; width:100%">
    <asp:GridView runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="500px" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged" ID="grdProductos">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" HeaderText="Precio" SortExpression="PrePro" DataFormatString="{0:n2}" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
       <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
     </asp:GridView>

        <div style="margin-left:30px;">
        <asp:Label runat="server" Text="Id. Producto" ID="lblIdProducto" Font-Bold="True" Font-Size="Medium" style="margin-right:15px"></asp:Label>
        <asp:TextBox runat="server" ID="txtIdProducto" AssociatedControlID="IdProducto" Enabled="False"></asp:TextBox><br /><br />
        
        <asp:Label runat="server" Text="Descripción" ID="lblDesPro" Font-Bold="True" Font-Size="Medium" style="margin-right:15px" ></asp:Label>
        <asp:TextBox runat="server" ID="txtDesPro" AssociatedControlID="DesPro" Enabled="False"></asp:TextBox><br /><br />
        
        <asp:Label runat="server" Text="Precio" ID="lblPrePro" Font-Bold="True" Font-Size="Medium" style="margin-right:15px"></asp:Label>
        <asp:TextBox runat="server" ID="txtPrePro" AssociatedControlID="PrePro" Enabled="False">0</asp:TextBox><br /><br />

         <asp:Label runat="server" Text="Unidad" ID="lblIdUnidad" Font-Bold="True" Font-Size="Medium" style="margin-right:15px"></asp:Label>
        <asp:DropDownList runat="server" ID="ddlIdUnidad" AssociatedControlID="IdUnidad" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList> <br /><br />

         <asp:Label runat="server" Text="Tipo Producto" ID="lblIdTipo" Font-Bold="True" Font-Size="Medium" style="margin-right:15px"></asp:Label>
        <asp:DropDownList runat="server" ID="ddlIdTipo" AssociatedControlID="IdTipo" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList> <br /><br />
        
            <asp:Button runat="server" Text="Nuevo" ID="btnNuevo" Visible="true" OnClick="btnNuevo_Click" />
            <asp:Button runat="server" Text="Editar" ID="btnEditar" Visible="False"  />
            <asp:Button runat="server" Text="Eliminar" ID="btnEliminar" Visible="False"  />
            <asp:Button runat="server" Text="Insertar" ID="btnInsertar" Visible="False" OnClick="btnInsertar_Click"  />
            <asp:Button runat="server" Text="Modificar" ID="btnModificar" Visible="False"  />
            <asp:Button runat="server" Text="Borrar" ID="btnBorrar" Visible="False"  />
            <asp:Button runat="server" Text="Cancelar" ID="btnCancelar" Visible="False" OnClick="btnCancelar_Click"  />


        </div>

    </div>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource runat="server" ID="SqlDataSource3" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
    
    <asp:Label ID="lblMensajes" runat="server" Text=""></asp:Label><br />
    <asp:Label ID="lblResultado" runat="server" Text=""></asp:Label><br />

</asp:Content>
