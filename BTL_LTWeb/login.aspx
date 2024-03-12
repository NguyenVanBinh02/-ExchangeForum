<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="login.aspx.cs" Inherits="BTL_LTWeb.login" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">


      <form action="login.aspx" runat="server" method="post">
        <!-- phần container nội dung diễn đàn -->
        <div class="body">
            <div class="authentic__form-wrap">
                    <div class="authentic__form-header">
                        <h2 class="authentic__form-heading">ĐĂNG NHẬP</h2>
                        <p class="authentic__form--nextPage-login">
                            Bạn đã chưa có tài khoản? Hãy <a href="./dangky.html">Đăng ký</a>
                        </p>
                    </div>
                    <div class="authentic__form-body">
                      
                            <table class="auto" style="width:80%; margin: auto;"> 
                                <tr>
                                    <td><label for="">Email:</label></td>
                                    <td><input type="text" placeholder="Nhập email" value="" id="dangnhapemail" name="dangnhapemail"></td>
                                </tr>
                                <tr>
                                    <td><label for="">Mật khẩu:</label></td>
                                    <td><input type="password" placeholder="Nhập mật khẩu" value="" id="dangnhappassword" name="dangnhappassword"></td>
                                </tr>
                              
                            </table>
                        
                         <div class="show_password">
                            <input type="checkbox" id="showdn" class="show" onchange ="showpassdn()">
                            <label for="">Hiển thị mật khẩu</label> 
                        </div> 
                    </div>
                    <div class="authentic__form-footer">
                        <p runat="server" id="errorL" style=" color:red;font-size: 1.5rem; padding: 5px 0 8px 0;"></p>
                        <input type="submit" value="Đăng nhập" id="dangnhap" name="dangnhap">
                    </div>
            </div>
        </div>
                </form>
    <script src="./assets/css-js/move.js"></script>
</asp:Content>
