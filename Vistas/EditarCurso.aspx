<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarCurso.aspx.cs" Inherits="Vistas.EditarCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblCurso" runat="server" Text="Curso: "></asp:Label><asp:TextBox ID="TxtCurso" runat="server"></asp:TextBox><br />
            <asp:Label ID="LblAula" runat="server" Text="Aula: "></asp:Label><asp:TextBox ID="TxtAula" runat="server"></asp:TextBox><br />
        </div>
        <asp:Button ID="BtnEditarCurso" runat="server" Text="Button" OnClick="BtnEditarCurso_Click" /><asp:Label ID="LblEstado" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
