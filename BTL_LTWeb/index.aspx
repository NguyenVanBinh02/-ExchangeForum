<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile ="~/Layout.Master" CodeBehind="index.aspx.cs" Inherits="BTL_LTWeb.index" %>

<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <form id="form1" runat="server" method="post">

            <div class="banner" style="background-color: rgb(54 72 158); ">
                <div class="banner__img">
                    <img src="./assets/img/banner.jpg" alt="" class="banner__img-link" />
                </div>
                
                <div class="banner__content">
                    <span class="content__top">
                        FITHOU | Diễn đàn trao đổi lập trình
                    </span>

                    <div class="content__mid">
                        <span class="content__mid-arr">Trang cá nhân</span>
                        <span class="content__mid-arr">Đặt câu hỏi</span>
                    </div>

                    <div class="content__bottom flex">
                        <div class="content__bottom-search">
                            <i class="fa-solid fa-magnifying-glass content__bottom-icon"></i>
                            <input type="text" class="content__bottom-word" placeholder="Tìm kiếm câu hỏi..." name="input_namer" id="input_namer" />
                        </div>
                          <input type="submit" class="content__bottom-btn-search" value="Tìm kiếm" name="search_name" id="search_name"/>
                    </div>
                </div>
            </div>
        <!-- phần container nội dung diễn đàn -->
        <div class="container">
            <div class="grid ">
                <div class="grid__row mb-20">
                    <div class="grid__column-9 mt-20">
                        <div class="container__topic">

                            <span class="container__topic-chose">Tất cả topic</span>
            
                            <i class="fa-solid fa-sort-down"></i>
                        </div>
                    </div>

                    <div class="grid__column-3 mt-20">
                        <span class="container__question">Tạo câu hỏi</span>
                    </div>
                </div>

                <div class="grid__row reponsive" id="timkiem" runat="server">
                    <div class="grid__column-6 w-100">
                        <div class="change">
                            <div class="change__question">
                                <div class="change__question-img">
                                    <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link" />
                                </div>
                                <div class="change__question-top">
                                    <a href="./question1.aspx"><b>Cho mình hỏi cách xử lý file trong PHP cả nhà?</b></a>
                                    <span class="change__question-care">Đã hỏi bởi <b>Người đưa tin</b></span>
                                </div>
                            </div>
                            <div class="change__reply">
                                <i class="fa-solid fa-book"></i>
                                <span class="change__reply-user">Câu trả lời</span>
                            </div>
                        </div>
                    </div>
                    <div class="grid__column-6 w-100">
                        <div class="change">
                            <div class="change__question">
                                <div class="change__question-img">
                                    <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link" />
                                </div>
                                <div class="change__question-top">
                                    <a href="./question1.aspx"><b>Các thuật toán duyệt cây nhị phân?</b></a>
                                    <span class="change__question-care">Đã hỏi bởi <b>Người đưa tin</b></span>
                                </div>
                            </div>
                            <div class="change__reply">
                                <i class="fa-solid fa-book"></i>
                                <span class="change__reply-user">Câu trả lời</span>
                            </div>
                        </div>
                    </div>
                    <div class="grid__column-6 w-100">
                        <div class="change">
                            <div class="change__question">
                                <div class="change__question-img">
                                    <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link" />
                                </div>
                                <div class="change__question-top">
                                    <a href="./question1.aspx" ><b>DS đề tiếp theo?</b></a>
                                    <span class="change__question-care">Đã hỏi bởi <b>Người đưa tin</b></span>
                                </div>
                            </div>
                            <div class="change__reply">
                                <i class="fa-solid fa-book"></i>
                                <span class="change__reply-user">Câu trả lời</span>
                            </div>
                        </div>
                    </div>
                    <div class="grid__column-6 w-100">
                        <div class="change">
                            <div class="change__question">
                                <div class="change__question-img">
                                    <img src="./assets/img/tải xuống.png" alt="" class="change__question-img--link" />
                                </div>
                                <div class="change__question-top">
                                    <a href="./question1.aspx" ><b>Bài tập đưa ra tổng giá trị?</b></a>
                                    <span class="change__question-care">Đã hỏi bởi <b>Người đưa tin</b></span>
                                </div>
                            </div>
                            <div class="change__reply">
                                <i class="fa-solid fa-book"></i>
                                <span class="change__reply-user">Câu trả lời</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="grid__row" id="thembaiviet" runat="server">
                </div>
            </div>
        </div>

        </form>
</asp:Content>
