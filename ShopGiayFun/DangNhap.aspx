<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangNhap.aspx.cs" Inherits="DangNhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="stylesheet" type="text/css" href="../css/DangNhap.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="signup">
        <h1 class="signup-heading">Signup</h1>
            <button class="signup-social">
                <i class="fa fa-google signup-social-icon"></i>
                    <span class="signup-social-text">Sign up with Google</span>
            </button>
        <div class="signup-or">
            <span>OR</span>
        </div>
        <label for="taikhoan" class="signup-label">Tài khoản</label>
        <asp:TextBox ID="taikhoan" runat="server" CssClass="signup-input"></asp:TextBox>
        <label for="password" class="signup-label">Password</label>
        <asp:TextBox ID="password" runat="server" CssClass="signup-input" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Đăng Nhập" Class="signup-dangnhap" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Đăng Ký" class="signup-dangky" OnClick="Button2_Click"  />
        <p class="signup-forgot">
                <span>Quên mật khẩu?</span>
                <a href="#" class="signup-pasword">Forgot password</a>
        </p>
        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
