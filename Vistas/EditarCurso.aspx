<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EditarCurso.aspx.cs" Inherits="Vistas.EditarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
         <br /><br /><br /><br />
        <div class="form-group">
            <asp:Label ID="LblCurso" runat="server" Text="Curso: "></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtCurso" runat="server"></asp:TextBox><br />
            <asp:Label ID="LblAula" runat="server" Text="Aula: "></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtAula" runat="server"></asp:TextBox><br />
        </div>
        <asp:Button ID="BtnEditarCurso" runat="server" class="btn-primary" Text="Guardar" OnClick="BtnEditarCurso_Click" /><asp:Label ID="LblEstado" runat="server" Text=""></asp:Label>
    </form>
 </asp:Content>
