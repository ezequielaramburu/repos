<%@ Page Title="" Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="VistaCurso.aspx.cs" Inherits="Vistas.VistaCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server" class="form-group">
       
        <div class="form-group">
            <br /><br /><br /><br />
            <asp:GridView ID="GridViewCursos" CssClass="table table-hover table-striped" GridLines="None" runat="server">
                 <Columns>
                <asp:TemplateField HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:Button ID="BtnEditar" class="btn btn-warning" PostBackUrl='<%# Page.ResolveUrl("EditarCurso.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Curso" )%>' runat="server" Text="Editar" />
                        <asp:Button ID="BtnEliminar" class="btn btn-danger" PostBackUrl='<%# Page.ResolveUrl("EliminarCurso.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Curso" )%>' runat="server" Text="Eliminar" />
                    </ItemTemplate>
                </asp:TemplateField>                
            </Columns> 
            </asp:GridView>
            <asp:Button ID="BtnAgregarCurso" class="btn btn-primary" runat="server" Text="Agregar Curso" OnClick="BtnAgregarCurso_Click" />
        </div>
        
    </form>
</asp:Content>

    
    

