<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="changePass.aspx.cs" Inherits="BTL_LTWeb.changePass" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">


        <!-- phần container nội dung diễn đàn -->
        <div class="body">
            <div class="authentic__form-wrap">
                <form action="changePass.aspx" runat="server" method="post"> 
                    <div class="authentic__form-header">
                        <h2 class="authentic__form-heading">Đổi mật khẩu</h2>
                    </div>
                    <div class="authentic__form-body">
                      
                            <table class="auto" style="width:80%; margin: auto;"> 
                                <tr>
                                    <td><label for="">Mật khẩu:</label></td>
                                    <td><input type="password" placeholder="Nhập mật khẩu" value="" id="mk" name="mk"></td>
                                </tr>
                                <tr>
                                    <td><label for="">Nhập mật khẩu mới:</label></td>
                                    <td><input type="password" placeholder="Nhập mật khẩu mới" value="" id="remk" name="remk"></td>
                                </tr>
                                <tr>
                                    <td><label for="">Nhập lại mật khẩu:</label></td>
                                    <td><input type="password" placeholder="Nhập lại mật khẩu" value="" id="newmk" name="newmk"></td>
                                </tr>
                              
                            </table>
                        
                        <div class="show_password">
                            <input type="checkbox" id="show" class="show" onchange="showpassChange()">
                            <label for="">Hiển thị mật khẩu</label>
                        </div>
                    </div>
                    <div class="authentic__form-footer">
                        <input type="submit" value="Đổi mật khẩu" id="btn_Doimk" name="btn_Doimk">
                    </div>
                </form>
                <div id="error" runat="server"> </div>
            </div>
        </div>
    <script src="./assets/css-js/move.js"></script>
</asp:Content>
