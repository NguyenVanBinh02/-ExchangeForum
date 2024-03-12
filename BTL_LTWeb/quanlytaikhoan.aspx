<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master"  CodeBehind="quanlytaikhoan.aspx.cs" Inherits="BTL_LTWeb.quanlytaikhoan" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
    <form id="form1" runat="server">
         <!------------- BODY ------------->
        <div class="body">
            <div class="grid wide">
                <div class="row">
                    <div class="l-3 col">
                        <ul class = "info">
                            <li style="color: var(--primary-color);">
                                <i class="fa-solid fa-note-sticky"></i>
                                <a style="color: var(--primary-color)" href="hosocanhan.html">Quản lý tài khoản</a>
                            </li>
                            <li>
                                <i class="fa-solid fa-arrow-right-from-bracket"></i>
                                <a href="dangxuat.aspx">Đăng xuất</a>
                            </li>
                        </ul>

                        <div class="box">
                            <div class="box-wrap">
                                <label for="">Họ tên:</label>
                                <input type="text" id="name" name="name" runat="server"><br>
                            </div>
                            <div class="box-wrap">
                                <label for="">Email:</label>
                                <input type="text" id="email" name="email" runat="server"><br>
                            </div>
                            <div class="box-wrap">
                                <label for="">Điện thoại:</label>
                                <input type="text" id="number" name="number" runat="server">
                            </div>

                            <input type="submit" name="luu" id="luu" value="Lưu">
                            <input type="submit" name="sua" id="sua" value="Sửa">
                            
                        </div>
                    </div>
                    <div class="l-9 col">
                        <div id="bang" name="bang" runat="server">
                              
                        </div>

                   
                    </div>
                </div>
            </div>
        </div>

    </form>
</asp:Content>
