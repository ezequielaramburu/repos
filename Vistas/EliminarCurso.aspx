<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EliminarCurso.aspx.cs" Inherits="Vistas.EliminarCurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div>
         <asp:Label ID="Label1" runat="server" Text="Esta seguro que desea eliminar el Curso?"></asp:Label>
        </div>
        <asp:Button ID="BtnEliminarCurso" runat="server" class="btn-primary" Text="Eliminar" OnClick="BtnEliminarCurso_Click" />
    </form>
</asp:Content>
