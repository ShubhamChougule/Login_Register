<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="Login_Register.registerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Label ID="Label1" runat="server" Text="Register" Font-Bold="True" Font-Size="XX-Large"></asp:Label>

            <br />
            <br />
            <asp:Label ID="userName" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066CC">Enter your Name :</asp:Label>
&nbsp;
            <asp:TextBox ID="nametxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="userEmail" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066CC">Enter your Email  :</asp:Label>
&nbsp;
            <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="userName1" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="#0066CC">Enter your Password :</asp:Label>
&nbsp;
            <asp:TextBox ID="passwordtxt" runat="server" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#0099FF" NavigateUrl="~/loginPage.aspx">Already Have an Account ? Login here !</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="error" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="registerBtn" runat="server" Font-Bold="True" Font-Size="Small" OnClick="Button1_Click" Text="Register" />

        </div>
    </form>
</body>
</html>
