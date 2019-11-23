<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AlumnoDni.aspx.cs" Inherits="Vistas.AlumnoDni" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Label ID="LblNombre" runat="server" Text="Nombre: "></asp:Label><asp:Label ID="nombre" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LblApellido" runat="server" Text="Apellido: "></asp:Label><asp:Label ID="apellido" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LblDni" runat="server" Text="DNI: "></asp:Label><asp:Label ID="Dni" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="LblEstado" runat="server" Text=""></asp:Label>
</asp:Content>
