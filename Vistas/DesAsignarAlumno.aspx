<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="DesAsignarAlumno.aspx.cs" Inherits="Vistas.DesAsignarAlumno" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form id="form1" runat="server" >
             <div class="form-group">
                 <br /><br /><br />
                    <asp:Label ID="Label1" runat="server" Text="Seguro de desasginar curso?"></asp:Label>
                    <asp:Button ID="Button1" class="btn-Primary" runat="server" Text="Sacar" OnClick="Button1_Click1" /><br />
                 
             </div>
    </form>

</asp:Content>
