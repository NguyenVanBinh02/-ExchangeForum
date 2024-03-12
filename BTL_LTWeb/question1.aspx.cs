using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class question1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //string tennguoidung = "thanglai2k2@gmail.com";
                string user = "";
                //List<Account> nguoidung = (List<Account>)Application["ds_taikhoan"];
                //foreach (Account acc in nguoidung)
                //{
                //    if(tennguoidung == acc.email)
                //    {
                //        user = acc.name;
                //        break;
                //    }

                //}

                List<Account> taikhoan = (List<Account>)Application["ds_taikhoan"];


                string cauTL = Request.Form.Get("vietcautraloi");
                string themCauTL = "";
                if (cauTL != null )
                {
                    themCauTL += "<div class=\"change__question\">";
                    themCauTL += "<div class=\"change__question-img\">";
                    themCauTL += "<img src = \"./assets/img/tải xuống.png\" alt=\"\" class=\"change__question-img--link\">";
                    themCauTL += "</div>";
                    themCauTL += "<div class=\"change__question-top1\">";
                    themCauTL += "<span>";
                    themCauTL += "<h2 style = \"font-size:20px;color: black;\" > Người trả lời: "+ Session["name"]  + " </h2>";
                   // +" " + DateTime.Now
                    themCauTL += "<hr>";
                    themCauTL += "</span>";
                    themCauTL += "<span>";
                    themCauTL += "<p style =\"font-size:15px;color: black;\" >" + cauTL + "</p>";
                    themCauTL += "</span>";
                    themCauTL += "</div>";
                    themCauTL += "</div>";

                    List <Comment> them = (List<Comment>)Application["ds_cmt"];

                    Comment themmoi = new Comment(themCauTL);
                    them.Add(themmoi);
                    Application["ds_baiviet"] = them;


                    string html = "";
                    foreach (Comment cmt in them)
                    {
                        html += cmt.comment;
                    }

                    cautraloi.InnerHtml = html;
                }
            }
        }
    }
}