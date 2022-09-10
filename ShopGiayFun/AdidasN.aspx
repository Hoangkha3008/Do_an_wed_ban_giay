<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AdidasN.aspx.cs" Inherits="AdidasN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .col-sm-44{
            margin-left:50px;
        }
        .box-right{
            margin-left:10px;
            width:100%;
            float:left;
        }
        .col-sm-44{
            float:left;
            padding-left:20px;
            padding-right:15px;
        }
        .nike1{
            height:auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="nike">
        <div class="container">
                <div class="col-sm-3">
                    <div class="item_block">
                        <div class="box-left">
                            <h3><i class="fa" aria-hidden="true"></i>Danh Mục Sản Phẩm</h3>
                            <div class="block-nav">
                                <nav class="catalog">
                                    <ul class="nav">
                                        <li class="border-bottom">
                                            <a href="#">Nam</a>
                                        </li>
                                        <li><a href="Nike.aspx">Giày Nike Nam</a></li>
                                        <li><a href="AdidasN.aspx">Giày Adidas Nam</a></li>
                                        <li><a href="#">Giày BiTis HunTer Nam</a></li>
                                        <li><a href="#">Giày Consverse Nam</a></li>
                                        <li class="border-bottom"><a href="#">Nữ</a></li>
                                        <li><a href="#">Giày Nike Nữ</a></li>
                                        <li><a href="#">Giày Adidas Nữ</a></li>
                                        <li><a href="BitisNu.aspx">Giày BiTis HunTer Nữ</a></li>
                                        <li><a href="#">Giày Consverse Nữ</a></li>
                                    </ul>
                                </nav>
                            </div>
                            <div class="box-product">
                                <h3><i class="fa" aria-hidden="true"></i>Sản Phẩm Nổi Bật</h3>
                                <div class="noibat">                                                            
                                </div>
                                <div class="hinh">
                                    <img src="images/custom-banner-left.jpg" width="100%" />
                                </div>
                            </div>           
                        </div>
                    </div>  
                </div>
                <div class="col-sm-44">
                    <div class="item_block">
                        <div class="box-right">
                            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal">
                                <ItemTemplate>
                                    
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Images") %>'  Width="250px" Height="250px"/>
                                    
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENSP") %>' Width="250px"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("DONGIA") %>'  Width="250px"></asp:Label><br />
                                    <a href='Chitiet.aspx?ID=<%#Eval("MASP") %>'>Chi tiết Sản Phẩm</a>
                                </ItemTemplate>
                            </asp:DataList>    
                        </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>

