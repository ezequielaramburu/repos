<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="EditarAlumno.aspx.cs" Inherits="Vistas.EditarAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
    $(function() {
        $('#TxtNac').datepicker({ dateFormat: 'dd/mm/yy' });
        $('#TxtIng').datepicker({ dateFormat: 'dd/mm/yy' });
    }
    );
    </script>

  </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <br /><br /><br /><br />
    <form id="form1" runat="server" class="form-group">
        <div class="form-group">
            <asp:Label ID="LblNombre"  runat="server" Text="Nombre: " Font-Bold="True"></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtNombre" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoNombre" runat="server" ControlToValidate="TxtNombre" ErrorMessage="Debe ingresar el nombre del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblApellido"  runat="server" Text="Apellido: " Font-Bold="True"></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtApellido" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoApellido" runat="server" ControlToValidate="TxtApellido" ErrorMessage="Debe ingresar el apellido del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="Lbldni" runat="server" Text="N° Documento: " Font-Bold="True"></asp:Label><asp:TextBox class="form-text text-muted" ID="TxtDni" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoDni" runat="server" ControlToValidate="TxtDni" ErrorMessage="Debe ingresar el DNI del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblDireccion" runat="server" Text="Direccion: " Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TxtDireccion" class="form-text text-muted" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoDomicilio" runat="server" ControlToValidate="TxtDireccion" ErrorMessage="Debe ingresar el domicilio del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblMatricula" runat="server" Text="Matricula: " Font-Bold="True"></asp:Label>
            <asp:TextBox ID="TxtMatricula" class="form-text text-muted" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RangeValidator ID="validaMatricula" runat="server" ControlToValidate="TxtMatricula" ErrorMessage="El rango válido es entre 1 y 1000" Font-Italic="True" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <asp:RequiredFieldValidator ID="requeridaMatricula" runat="server" ControlToValidate="TxtMatricula" ErrorMessage="Debe ingresar la matrícula del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblTel" runat="server" Text="Telefono: " Font-Bold="True"></asp:Label> 
            <asp:TextBox ID="TxtTel" class="form-text text-muted" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridotelefono" runat="server" ControlToValidate="TxtTel" ErrorMessage="Debe ingresar el teléfono del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblTurno" runat="server" Text="Turno: " Font-Bold="True"></asp:Label> 
            <asp:DropDownList class="form-text text-muted" ID="DdlTurno" runat="server" >
                <asp:ListItem>Mañana</asp:ListItem>
                <asp:ListItem>Tarde</asp:ListItem>
                <asp:ListItem>Noche</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="requeridoTurno" runat="server" ControlToValidate="DdlTurno" ErrorMessage="Debe indicar el turno al que asiste el alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="LblNac" runat="server" Text="Fecha de Nacimiento: " Font-Bold="True"></asp:Label> 
            <asp:TextBox ID="TxtNac" class="form-text text-muted" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoNacimiento" runat="server" ControlToValidate="TxtNac" ErrorMessage="Debe ingresar la fecha de nacimiento del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>

            <asp:Label ID="Lblingr" runat="server" Text="Fecha de ingreso: " Font-Bold="True"></asp:Label> 
            <asp:TextBox ID="TxtIng" class="form-text text-muted" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="requeridoFechaIngreso" runat="server" ControlToValidate="TxtIng" ErrorMessage="Debe ingresar la fecha de ingreso del alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            </br>
            
           
            
        </div>
        <p>
            <asp:Button ID="BtnEditarAlumno" runat="server" Text="Guardar" OnClick="BtnEditarAlumno_Click"  class="btn btn-primary" />
        </p>
    </form>
            <asp:Label ID="LblEstado" runat="server" ></asp:Label>

 </asp:Content>