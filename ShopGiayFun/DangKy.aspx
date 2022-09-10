<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DangKy.aspx.cs" Inherits="DangKy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../css/DangKy.css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="forgot">
                <h1 class="forgot-heading">Đăng Ký Tài Khoản</h1>

                <label for="taikhoan" class="forgot-label">Tài khoản</label>
              <asp:TextBox ID="taikhoan" runat="server" CssClass="forgot-input"></asp:TextBox>

                <label for="password" class="forgot-label">Password</label>
              <asp:TextBox ID="password" runat="server" TextMode="Password" CssClass="forgot-input"></asp:TextBox>

              <asp:Label ID="Label3" runat="server" Text="Xác nhận mật khẩu" CssClass="forgot-label"></asp:Label>
              <asp:TextBox ID="password2" runat="server" CssClass="forgot-input" TextMode="Password"></asp:TextBox>

              <asp:Label ID="Label1" runat="server" Text="Họ tên" CssClass="forgot-label"></asp:Label>
              <asp:TextBox ID="hoten" runat="server" CssClass="forgot-input"></asp:TextBox>

              <asp:Label ID="Label2" runat="server" Text="Ngày sinh" CssClass="forgot-label"></asp:Label>
              <asp:TextBox ID="ngaysinh" runat="server" CssClass="forgot-input"></asp:TextBox>

              <asp:Label ID="Label4" runat="server" Text="Giới Tính" CssClass="forgot-label"></asp:Label>
              <asp:TextBox ID="gioitinh" runat="server" CssClass="forgot-input"></asp:TextBox>

              <label for="sdt" class="forgot-label">Số điện thoại</label>
              <asp:TextBox ID="sdt" runat="server" CssClass="forgot-input"></asp:TextBox>

                <label for="diachi" class="forgot-label">Địa chỉ</label>
              <asp:TextBox ID="diachi" runat="server" CssClass="forgot-input" ></asp:TextBox>

              <asp:Button ID="Button1" runat="server" Text="Đăng Ký"  CssClass="signup-dangky" OnClick="Button1_Click"/>
                <p class="signup-account">
                        <span>Đã có tài khoản?</span>
                        <a href="#" class="signup">Sign Up</a>
                </p>
            </div>
                 <div>
                        <asp:RequiredFieldValidator ID="reTenDN" ControlToValidate="taikhoan" ErrorMessage="Phải nhập tên đăng nhập" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="reHoten" ControlToValidate="hoten" ErrorMessage="Phải nhập Họ và tên" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="reMatKhau" ControlToValidate="password" ErrorMessage="Phải nhập mật khẩu" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="reDiaChi" ControlToValidate="diachi" ErrorMessage="Phải nhập địa chỉ" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:RequiredFieldValidator ID="reSDT" ControlToValidate="sdt" ErrorMessage="Phải nhập số điện thoại" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="regSDT" runat="server" ErrorMessage="SĐT nhập sai" ControlToValidate="sdt" ForeColor="Green" ValidationExpression="^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$" ></asp:RegularExpressionValidator>                       
                        <asp:CompareValidator ID="comSDT" runat="server" ControlToValidate="sdt" ErrorMessage="SDT Phải là số" Operator="DataTypeCheck" Type="Integer" ForeColor="Blue"></asp:CompareValidator>
                        <asp:CompareValidator ID="comMatKhau" runat="server" ErrorMessage="Mật khẩu không khớp" ControlToValidate="password2" Operator="Equal" ControlToCompare="password" ForeColor="Blue"></asp:CompareValidator>
                        <asp:CompareValidator ID="comNgaySinh" runat="server" ErrorMessage="Ngày sinh phải đúng: dd/mm/yyyy" ControlToValidate="ngaysinh" Operator="DataTypeCheck" Type="Date" ForeColor="Blue"></asp:CompareValidator>
                    </div>
            <div>
            </div>
    </form>
</body>
</html>
