using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class question : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                string tdCauHoi = Request.Form.Get("nhaptieude");
                string tdNoiDung = Request.Form.Get("noidungcauhoi");
                string email = Request.Form.Get("tenemail");
                string themCauHoi="";
                string themND="";
                string themND2="";
                string themND3="";
                bool kiemtra = false;
                bool kiemtra2 = false;
                if (tdCauHoi == tdNoiDung)
                {
                    themND3 = "<span style=\" font-size:1.6rem;\"> Câu hỏi không được trùng với nội dung </span>";
                    kiemtra2 = true;
                }


                List<UserLogin> lg = (List<UserLogin>)Application["ds_login"];
                foreach(UserLogin bv in lg)
                {
                    if(tdCauHoi == bv.mail)
                    {
                        themND = "<span style=\" font-size:1.6rem;\"> Câu hỏi này đã tồn tại </span>";
                        kiemtra = true;
                        break;
                    }
                    
                }

                themND2 = "<span style=\" font-size:1.6rem;\"> Thêm thành công </span>";


                canhbao.InnerHtml = themND;

                List<Account> DSTK = (List<Account>)Application["ds_taikhoan"];
                if (tdCauHoi != null && tdNoiDung != null)
                {
                    themCauHoi += "<div class=\"grid__column-6\">";
                    themCauHoi += "<div class=\"change\" >";
                    themCauHoi += "<div class=\"change__question\">";
                    themCauHoi += "<div class=\"change__question-img\">";
                    themCauHoi += "<img src =\"./assets/img/tải xuống.png\" alt=\"\" class=\"change__question-img--link\">";
                    themCauHoi += "</div>";
                    themCauHoi += "<div class=\"change__question-top\">";
                    themCauHoi += "<a href = \"./question1.aspx\" ><b>" + tdCauHoi + "</b></a>";
                    themCauHoi += "<span class=\"change__question-care\"> Đã hỏi bởi <b>"+ Session["name"] + "</b></span>";
                    themCauHoi += "</div>";
                    themCauHoi += "</div>";
                    themCauHoi += "<div class=\"change__reply\">";
                    themCauHoi += "<i class=\"fa-solid fa-book\"></i>";
                    themCauHoi += "<span class=\"change__reply-user\">Câu trả lời</span>";
                    themCauHoi += "</div>";
                    themCauHoi += "</div>";
                    themCauHoi += "</div>";

                    if(kiemtra == true)
                    {
                        canhbao.InnerHtml = themND;
                    }
                    else
                    if(kiemtra2 == true)
                    {
                        canhbao.InnerHtml = themND3;

                    }
                    else
                    {
                        canhbao.InnerHtml = themND2;

                        List<PostContent> post = (List<PostContent>)Application["ds_baiviet"];

                    PostContent newPost = new PostContent(themCauHoi);
                    post.Add(newPost);
                    Application["ds_baiviet"] = post;

                        List<UserLogin> thembv = (List<UserLogin>)Application["ds_login"];

                        UserLogin newTin = new UserLogin(tdCauHoi);

                        thembv.Add(newTin);
                        Application["ds_login"] = thembv;
                    }

                }
            }
        }
    }
}