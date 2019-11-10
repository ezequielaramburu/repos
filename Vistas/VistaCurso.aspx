<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VistaCurso.aspx.cs" Inherits="Vistas.VistaCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridViewCursos" runat="server">
                 <Columns>
                <asp:TemplateField HeaderStyle-ForeColor="Black">
                    <ItemTemplate>
                        <asp:Button ID="BtnEditar" PostBackUrl='<%# Page.ResolveUrl("EditarCurso.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Curso" )%>' runat="server" Text="Editar" />
                        <asp:Button ID="BtnEliminar" PostBackUrl='<%# Page.ResolveUrl("EliminarCurso.aspx?id=") + DataBinder.Eval(Container.DataItem, "Id_Curso" )%>' runat="server" Text="Eliminar" />
                    </ItemTemplate>
                </asp:TemplateField>                
            </Columns> 
            </asp:GridView>
        </div>
    </form>
</body>
</html>
