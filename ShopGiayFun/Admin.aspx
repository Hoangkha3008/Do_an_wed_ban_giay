<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="css/DangNhap.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="signup">
        <h1 style="padding-left:230px">ADMIN</h1>
        <label for="taikhoan" class="signup-label">Tài khoản</label>
        <asp:TextBox ID="taikhoan" runat="server" CssClass="signup-input"></asp:TextBox>
        <label for="password" class="signup-label">Password</label>
        <asp:TextBox ID="password" runat="server" CssClass="signup-input" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" Class="signup-dangnhap" OnClick="Button1_Click" />
        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
