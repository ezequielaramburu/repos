<%@ Page Language="C#"   MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="VistaAlumno.aspx.cs" Inherits="Vistas.VistaAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />
    <form id="form1" runat="server" class="form-group">
        <div>
            <asp:Label ID="LblAlumnos" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1"  CssClass="table table-hover table-striped" GridLines="None"  runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:Button ID="BtnEditar" class="btn btn-warning" PostBackUrl='<%# Page.ResolveUrl("EditarAlumno.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Alumno" )%>' runat="server" Text="Editar" />
                                              
                    </ItemTemplate>
                </asp:TemplateField> 

                <asp:TemplateField HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                                              
                        <asp:Button ID="BtnEliminar" class="btn btn-danger" PostBackUrl='<%# Page.ResolveUrl("EliminarAlumno.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Alumno" )%>' runat="server" Text="Eliminar" />
                                              
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                         <asp:Button ID="Button1"  class="btn btn-success" PostBackUrl='<%# Page.ResolveUrl("AsignarCurso.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Alumno" )%>' runat="server" Text="Curso" />

                          </ItemTemplate>
                </asp:TemplateField>

            </Columns>  
            </asp:GridView><br />
            <asp:Button ID="BtnAgregarAlumno" runat="server" Text="Agregar Alumno" class="btn btn-primary" OnClick="BtnAgregarAlumno_Click" />
        </div>
    </form>

</asp:Content>