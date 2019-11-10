<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCurso.aspx.cs" Inherits="Vistas.AgregarCurso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblNombre" runat="server" Text=""></asp:Label><asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox><br />
            <asp:Label ID="LblAula" runat="server" Text=""></asp:Label><asp:TextBox ID="TxtAula" runat="server"></asp:TextBox><br />
            <asp:Button ID="BtnAgregarCurso" runat="server" Text="Agregar" OnClick="BtnAgregarCurso_Click" />
            <asp:Label ID="LblEstado" runat="server" ></asp:Label>
        </div>
    </form>
</body>
</html>
