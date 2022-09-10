<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TrangAdmin.aspx.cs" Inherits="TrangAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="admin">
        <table style="width: 50%;" >
            <tr>
                <td colspan="2" class="head"><h2>Quản Lý Sản Phẩm</h2></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Mã sản phẩm :</td>
                <td>
                    <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Tên sản phẩm :</td>
                <td>
                    <asp:TextBox ID="txttensp" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Thương Hiệu</td>
                <td>
                    <asp:TextBox ID="txtthuonghieu" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Màu sắc :</td>
                <td>
                    <asp:TextBox ID="txtmausac" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Chất Liệu :</td>
                <td>
                    <asp:TextBox ID="txtchatlieu" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Giới Tính :</td>
                <td>
                    <asp:RadioButtonList ID="rdGioitinh" runat="server">
                        <asp:ListItem>Nam</asp:ListItem>
                        <asp:ListItem>Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Đơn Giá :</td>
                <td>
                    <asp:TextBox ID="txtdongia" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">Hình ảnh :</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style1">&nbsp;</td>
                <td>
                    <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
                    <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
                    <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div class="dulieu">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="MASP" HeaderText="Mã Sản  Phẩm " />
                    <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm" />
                    <asp:ImageField DataImageUrlField="Images" HeaderText="Hình ảnh" ControlStyle-Width="100px">
                    </asp:ImageField>
                    <asp:BoundField DataField="THUONGHIEU" HeaderText="Thương Hiệu" />
                    <asp:BoundField DataField="MAUSAC" HeaderText="Màu Sắc" />
                    <asp:BoundField DataField="CHATLIEU" HeaderText="Chất Liệu" />
                    <asp:BoundField DataField="GIOITINH" HeaderText="Giới Tính" />
                    <asp:BoundField DataField="DONGIA" HeaderText="Đơn Giá" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle  ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
            </asp:GridView>
        </div>
    </div>
    </form>
</body>
</html>
