<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homePage.aspx.cs" Inherits="Login_Register.homePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Welcome to home page" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

            <br />
            <br />
            <asp:Label ID="userName" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#FF3300"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button1_Click" Text="Logout !!" />

        </div>
    </form>
</body>
</html>
