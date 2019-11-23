<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="Buscar.aspx.cs" Inherits="Vistas.Buscar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    </br></br></br></br></br>
    <form id="form1" runat="server" class="form-group">
   
      <div class="form-group mb-2 form-inline ">
          <div class="form-group mb-2">
         <asp:TextBox ID="TxtBuscarDNI" class="form-control" placeholder="Buscar por DNI o legajo" runat="server"></asp:TextBox>
     </div>
        <asp:Button ID="BtnBuscarDNI" runat="server" class="btn btn-primary mb-2" Text="Buscar" OnClick="BtnBuscarDNI_Click" />
               
          </div>
        
    
        <asp:Label ID="LblEstado" class="alert alert-danger" runat="server" Text=""></asp:Label>
     
    <div id="ocult" runat="server">
        
        <asp:Label ID="LblInfoNombre" runat="server" class="font-weight-bold" Text="Nombre: "></asp:Label><asp:Label ID="Lblnombre" runat="server"  class="form-text text-muted" Text=""></asp:Label> </br>
        <asp:Label ID="LblInfoApellido" runat="server" class="font-weight-bold" Text="Apellido: "></asp:Label><asp:Label ID="lblApellido" class="form-text text-muted" runat="server" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoDni" runat="server" class="font-weight-bold" Text="Dni: "></asp:Label><asp:Label ID="LblDni" runat="server" class="form-text text-muted" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoDireccion" runat="server" class="font-weight-bold" Text="Direccion: : "></asp:Label><asp:Label ID="LblDireccion" class="form-text text-muted" runat="server" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoMatricula" runat="server" class="font-weight-bold" Text="Matricula: "></asp:Label><asp:Label ID="LblMatricula" class="form-text text-muted" runat="server" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoTel" runat="server" class="font-weight-bold" Text="Telefono: "></asp:Label><asp:Label ID="LblTel" runat="server" class="form-text text-muted" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoTurno" runat="server" class="font-weight-bold" Text="Turno: "></asp:Label><asp:Label ID="LblTurno" runat="server" class="form-text text-muted" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoNac" runat="server" class="font-weight-bold" Text="Fecha de Nacimiento: "></asp:Label><asp:Label ID="LblNac" class="form-text text-muted"  runat="server" Text=""></asp:Label></br>
        <asp:Label ID="LblInfoIngr" runat="server" class="font-weight-bold" Text="Fecha de Ingreso: "></asp:Label><asp:Label ID="LblIngr" class="form-text text-muted" runat="server" Text=""></asp:Label></br>
        </div>

        
</form> 
</asp:Content>
