<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="question.aspx.cs" Inherits="BTL_LTWeb.question" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">
   <!--Tối thiểu 52 ký tự bắt đầu bằng chữ cái hoa, kết thúc bằng số -->
   <script>
       
           
   </script> 
        <!-- phần container nội dung diễn đàn -->
        <div class="container">
            <div class="grid">
                <form action="question.aspx" runat="server" method="post" >
                    <div>
                        <h2 class="blue">TẠO CÂU HỎI</h2>
                    </div>
            
                    <div>
                        <fieldset aria-hidden="true">
                            <legend>
                                <span class="question__content">​
                                    Nhập câu hỏi
                                </span>
                            </legend>
                            <div class="question__input">
                                <label for="">Tiêu đề</label>
                                <input   type="text" id="nhaptieude" name="nhaptieude" >
                            </div>
                            <div class="question__input">
                                <label for="">Nội dung câu hỏi</label>
                                <input  type="text" id="noidungcauhoi" name="noidungcauhoi">
                            </div>

                            <div class="question__file">
                                <input type="file" id="file" value="file" >
                            </div>
                            
                        </fieldset>
                    </div>
            
            
                    <div>
                        <center>
                            <div class="question__submit" >
                                <div id="canhbao" name="canhbao" runat="server"></div>
                                <input type="submit" id="submit" value="Gửi câu hỏi" name="submit">
                                <input type="reset" id="reset" value="Làm mới">
                            </div>
                        </center>
                    </div>
                </form>
            </div>
        </div>
</asp:Content>

