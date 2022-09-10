<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Giohang2.aspx.cs" Inherits="Giohang2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .giohang{
            margin-left:200px;
        }
        .dathang{
            background:red;
            border:1px solid black;
            border-radius:5px;
            width:100px;
        }
        .dathang a{
            color:black;
            padding-left:10px;
        }
        .dathang a:hover{
            color:white;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="giohang">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false">
            <Columns>
                <asp:BoundField DataField="MASP" HeaderText="Mã Sản Phẩm" />
                <asp:BoundField DataField="TENSP" HeaderText="Tên Sản Phẩm" />
                <asp:ImageField DataImageUrlField="Images" HeaderText="Hình ảnh" ControlStyle-Width="100px">
                </asp:ImageField>
                <asp:BoundField DataField="MAUSAC" HeaderText="Màu Sắc" />
                <asp:BoundField DataField="GIOITINH" HeaderText="Giới Tính" />
                <asp:BoundField DataField="DONGIA" HeaderText="Đơn giá" />
                <asp:TemplateField HeaderText="Số lượng">
                            <EditItemTemplate>
                                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                 <asp:TextBox ID="tbQuantify" runat="server" Text='<%#Eval("Number")%>'></asp:TextBox>
                            </ItemTemplate>
                            </asp:TemplateField>
                <asp:TemplateField HeaderText="Chức Năng">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="select">Update</asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CommandName="delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="true" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle  ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="White" />
        </asp:GridView>
        <font color="blue" size="4" style="text-align:center" style=" margin-left:300px;">Tổng thành tiền:</font>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" style="text-align:right"></asp:Label>đ<br />
        <div class="dathang"><a href="#">Thanh Toán</a></div>
    </div>
</asp:Content>

