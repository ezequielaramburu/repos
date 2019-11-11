<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AgregarCurso.aspx.cs" Inherits="Vistas.AgregarCurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
        <br /><br /><br /><br />
        <div class="form-group">
            <asp:Label ID="LblNombre"  runat="server" Text="Nombre del curso: "></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtNombre" runat="server"></asp:TextBox><br />
            <asp:Label ID="LblAula" runat="server" Text="Aula: "></asp:Label><asp:TextBox ID="TxtAula" class="form-text text-muted" runat="server"></asp:TextBox><br />
            
        </div>
        <asp:Button ID="BtnAgregarCurso"  class="btn-primary" runat="server" Text="Agregar" OnClick="BtnAgregarCurso_Click" />
            <asp:Label ID="LblEstado" runat="server" ></asp:Label>
    </form>
 </asp:Content>