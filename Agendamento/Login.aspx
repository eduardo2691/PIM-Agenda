<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Agendamento.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Login"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email"></asp:Label>
            <br />
            <asp:TextBox ID="txbEmail" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
            <br />
            <asp:TextBox ID="txbSenha" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogar" runat="server" OnClick="btnLogar_Click" Text="Entrar" />
            <br />
            <asp:Label ID="lMsg" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
        </div>
    </form>
</body>
</html>
