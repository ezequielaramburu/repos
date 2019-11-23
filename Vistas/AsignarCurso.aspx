<%@ Page Language="C#" MasterPageFile="~/PaginaMaestra.Master" AutoEventWireup="true" CodeBehind="AsignarCurso.aspx.cs" Inherits="Vistas.AsignarCurso" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script>
        $(function () {
            $('#TxtNac').datepicker({ dateFormat: 'dd/mm/yy' });
            $('#TxtIng').datepicker({ dateFormat: 'dd/mm/yy' });
        }
        );
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <form id="form1" runat="server" class="form-group">
        <div class="form-group">

            <asp:Label ID="LblCurso" runat="server" Text="Curso: " Font-Bold="True"></asp:Label>
            <asp:DropDownList class="form-text text-muted" ID="DdlCurso"  runat="server">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="requeridoCurso" runat="server" ControlToValidate="DdlCurso" ErrorMessage="Debe indicar el curso al que asiste el alumno" Font-Italic="True" ForeColor="#CC0000"></asp:RequiredFieldValidator>

        </div>
        <p>
            
            <asp:Button ID="BtnAgregarCurso" runat="server" Text="Agregar curso" OnClick="BtnAsignarCurso_Click" class="btn-primary" />
        </p>
        <div>
            <asp:GridView CssClass="table table-hover table-striped" GridLines="None" ID="GridViewCursos" runat="server">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                    <asp:BoundField DataField="Aula" HeaderText="Aula" SortExpression="Aula" />
                 <asp:TemplateField >
                    <ItemTemplate>
                                              
                        <asp:Button ID="BtnEliminar" class="btn btn-danger" PostBackUrl='<%# Page.ResolveUrl("DesAsignarAlumno.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Curso" )%>' runat="server" Text="Eliminar" />
                                              
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns> 
            </asp:GridView>
        </div>
    </form>
    <asp:Label ID="LblEstado" runat="server"></asp:Label>

</asp:Content>
