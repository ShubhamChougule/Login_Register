<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Login_Register.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Login" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

            <br />
            <br />
            <asp:Label ID="userEmail" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066CC">Enter your Email  :</asp:Label>
&nbsp;
            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="userName1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066CC">Enter your Password :</asp:Label>
&nbsp;
            <asp:TextBox ID="passwordtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#3399FF" NavigateUrl="~/registerPage.aspx">Dont Have Account ? Registed Here !</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="error" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="loginBtn" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button1_Click" Text="Login" />
        </div>
    </form>
</body>
</html>
