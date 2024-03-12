<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="question1.aspx.cs" Inherits="BTL_LTWeb.question1" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <form action="question1.aspx" runat="server" method="post">

                <!-- Banner -->
        <!-- phần container nội dung diễn đàn -->
        <div class="container" style="padding-top: 10px ;">
            <div class="grid">
                <div class="banner1">
                    <div class="banner11"> <br>
                        <h2 style="color: rgb(54 72 158); margin-bottom: -1px; padding-bottom: 10px;">Trang chủ > Hỏi đáp </h2>
                    </div>
                </div>
                <div class="change1">
                    <div class="change__question">
                        <div class="change__question-img">
                            <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link">
                        </div>
                        <div class="change__question-top">
                            <span>
                                <h2 style="font-size:20px;color: black;">Người đưa tin</h2>
                                <hr>
                            </span>
                            <span>
                                <h3 style="font-size:20px;color: black;">Cho mình hỏi cách xử lý file trong PHP cả nhà?</h3>
                            </span>
                        </div>
                    </div>
    
                </div>
            </div>

            <div class="grid">
                <div class="change1">
                    <div style="color: brown;font-size: 15px; margin-left:20px;">
                        <h3>Câu trả lời</h3><br>
                    </div>
                    <div class="change__question">
                            <div class="change__question-img">
                                <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link">
                            </div>
                            <div class="change__question-top1">
                                <span>
                                    <h2 style="font-size:20px;color: black;">Người trả lời</h2>
                                    <hr>
                                </span>
                                <span>
                                    <p style="font-size:15px;color: black;">1. Mở file
                                        Để mở một file ta dùng cú pháp sau: open($path, $option). Trong đó $path là đường dẫn
                                        đến file cần mở, $option là quyền cho phép thao tác trên file.
                                        
                                    </p>
                                </span>
                            </div>
                            
                        </div>
                    <div id="cautraloi" runat="server" ></div>
    
                </div>
            </div>

            <div class="grid">
                <div class="change1">
    
                    <div class="change__question" style="padding-bottom: 32px;">
                        <div class="change__question-img">
                            <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link">
                        </div>
                        <div class="change__question-top1">
                            <span>
                                <h2 style="font-size:20px;color: black;">Câu trả lời của bạn</h2>
                                <hr>
                            </span>
                            <input type="text" class="change__question-title" name="vietcautraloi" id="vietcautraloi">
                            <input type="submit" class="changer__question-send" value="Gửi">
                        </div>
                    </div>
    
                </div>
            </div>
        </div>
        </form>
</asp:Content>
