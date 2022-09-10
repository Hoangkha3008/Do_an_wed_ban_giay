<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Chitiet2.aspx.cs" Inherits="Chitiet2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .content{
            height:1210px;
            width:1200px;
            margin-left:230px;
        }
        .mua{
            height:30px;
            width:200px;
            border:1px solid #0a0000;
            border-radius:10px;
            background:#0a0000;
        }
        .mua a{
            padding-top:15px;
            padding-left:40px;
            margin-top:50px;
            color:white;
        }
        .mua a:hover{
            color:red;
        }
        .cuahang{
            margin-top:50px;
            border-top:1px solid #808080;
            /*margin-left:30px;*/
            width:1100px
        }
        .hethong h2{
            padding-left:450px;
        }
        .map{
            float:left;
            width:65%;
        }
        .map img{
            width:700px;
            height:500px;
        }
        .diachi{
            width:33%;
            float:left;
        }
        .stike{
            float:left;
            width:10%;
            padding:15px 18px;
        }
        .stike img{
            width:30px;
        }
        .diachi1{
            float:left;
            width:70%;
        }
        .diachi1 a{
            color:#808080;
            line-height:17px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="content">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table style="width:100%;">
                    <tr>
                        <td rowspan="7">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Images") %>' Width="450px" Height="450px" />
                        </td>
                        <td>
                            Tên sản phẩm :<asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Giá :<asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>'></asp:Label>đ
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Thương Hiệu :<asp:Label ID="Label5" runat="server" Text='<%# Eval("THUONGHIEU") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Giới Tính :<asp:Label ID="Label6" runat="server" Text='<%# Eval("GIOITINH") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Màu sắc :<asp:Label ID="Label3" runat="server" Text='<%# Eval("MAUSAC") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Chất Liệu :<asp:Label ID="Label4" runat="server" Text='<%# Eval("CHATLIEU") %>' Width="500px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><div class="mua"><a href='Giohang2.aspx?ID=<%#Eval("MASP") %>'>Thêm vào giỏ hàng</a></div></td>
                    </tr>                 
                </table>
            </ItemTemplate>
        </asp:DataList>
        <div class="cuahang">
            <div class="hethong"><h2>Hệ Thống Cửa Hàng</h2></div>
            <div class="map">
                <img src="images/Map.PNG" />
            </div>
            <div class="diachi">
                <div class="stike">
                    <img src="images/diachi.png" />
                </div>
                <div class="diachi1">
                    <h4>CH FUN -Tân Kỳ Tân Quý</h4>
                    <a>ĐỊA CHỈ : 216 Tân Kỳ Tân Quý ,P.Sơn Kỳ ,Quận Tân Phú ,TPHCM</a><br />
                    <a>SĐT :0975828077</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

