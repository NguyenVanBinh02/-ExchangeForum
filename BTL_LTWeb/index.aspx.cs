using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
                    List<PostContent> post = (List<PostContent>)Application["ds_baiviet"];
                    string html = "";
                    foreach (PostContent acc in post)
                    {
                        html += acc.post;
                    }
                  
                        thembaiviet.InnerHtml = html;

            if (Request.Form["search_name"] == "Tìm kiếm")
            {
                string name = Request.Form["input_name"].ToString();
                List<UserLogin> lg = (List<UserLogin>)Application["ds_login"];
                bool check;
                string themCauHoi = "";
                foreach (UserLogin n in lg)
                {
                    check = n.mail.ToLower().Trim().Contains(name.ToLower().Trim());
                    if (check)
                    {
                        themCauHoi += "<div class=\"grid__column-6 w-100\">";
                        themCauHoi += "<div class=\"change\" >";
                        themCauHoi += "<div class=\"change__question\">";
                        themCauHoi += "<div class=\"change__question-img\">";
                        themCauHoi += "<img src =\"./assets/img/tải xuống.png\" alt=\"\" class=\"change__question-img--link\">";
                        themCauHoi += "</div>";
                        themCauHoi += "<div class=\"change__question-top\">";
                        themCauHoi += "<a href = \"./question1.aspx\" ><b>" + n.mail + "</b></a>";
                        themCauHoi += "<span class=\"change__question-care\"> Đã hỏi bởi <b></b></span>";
                        themCauHoi += "</div>";
                        themCauHoi += "</div>";
                        themCauHoi += "<div class=\"change__reply\">";
                        themCauHoi += "<i class=\"fa-solid fa-book\"></i>";
                        themCauHoi += "<span class=\"change__reply-user\">Câu trả lời</span>";
                        themCauHoi += "</div>";
                        themCauHoi += "</div>";
                        themCauHoi += "</div>";
                    }
                }
                timkiem.InnerHtml = themCauHoi;
            }
        }
    }
}