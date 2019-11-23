<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EliminarAlumno.aspx.cs" Inherits="Vistas.EliminarAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="Esta seguro que desea eliminar el Alumno?"></asp:Label>
        </div><br />
        <asp:Button ID="BtnEliminarAlumno" runat="server" Text="Eliminar" CssClass="btn-primary" OnClick="BtnEliminarAlumno_Click" />
    </form>
</asp:Content>
