<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EliminarCurso.aspx.cs" Inherits="Vistas.EliminarCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
         <asp:Label ID="Label1" runat="server" Text="Esta seguro que desea eliminar el Curso?"></asp:Label>
        </div>
        <asp:Button ID="BtnEliminarAlumno" runat="server" Text="Button" OnClick="BtnEliminarAlumno_Click" />
    </form>
</body>
</html>
