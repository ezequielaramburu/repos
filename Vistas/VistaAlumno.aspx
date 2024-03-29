﻿<%@ Page Language="C#"   MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="VistaAlumno.aspx.cs" Inherits="Vistas.VistaAlumno" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
 
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br /><br /><br /><br />
    <form id="form1" runat="server" class="form-group">
        <div >
            <asp:Label ID="LblAlumnos" runat="server" Text=""></asp:Label>
            <asp:GridView ID="GridView1"  CssClass="table table-hover " GridLines="None"  runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="Id_Alumno" HeaderText="Legajo" SortExpression="Id_Alumno" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="Direccion" HeaderText="Direccion" SortExpression="Direccion" />
                <asp:BoundField DataField="Matricula" HeaderText="Matricula" SortExpression="Matricula" />
                <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
                <asp:BoundField DataField="Turno" HeaderText="Turno" SortExpression="Turno" />
                <asp:BoundField DataField="Fecha_Nac" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Fecha de Nacimiento" SortExpression="Fecha_Nac" />
                <asp:BoundField DataField="Fecha_ingreso" DataFormatString="{0:dd-MM-yyyy}" HeaderText="Fecha de ingreso" SortExpression="Fecha_ingreso" />

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