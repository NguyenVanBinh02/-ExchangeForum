                                                                       using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class Layout : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string clientIp = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ??
                   Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim();
            string html = "";
            string cauhoi = "";

            if ((string)Session["email"] != null && (string)Session["email"] == "admin@gmail.com")
            {
                cauhoi +=  "<a href =\"./question.aspx\" class=\"navbar__item-link\"> TẠO CÂU HỎI </a>";

                html +="<span class=\"nav__user-name\">EMAIL: </span>";
                html += "<span class=\"nav__user-email\" id=\"tenemail\" name=\"tenemail\"> " +Session["email"] + "</span>";
                html += "<div class=\"user__profile\">";
                html += "<ul class=\"user__profile-list\">";
                html += "<li class=\"user__profile-item\">";
                html += "<a href = \"quanlytaikhoan.aspx\" class=\"user__profile-link\">Quản lý tài khoản</a>";    
                html += "</li><li class=\"user__profile-item\">";
                html += " <a href = \"dangxuat.aspx\" class=\"user__profile-link\"> Đăng xuất </a>";
                html += " </li>";
                html += " </ul>";
                taocauhoi.InnerHtml = cauhoi;
                account.InnerHtml = html;
            }
            else if ((string)Session["email"] != null)
            {
                cauhoi += "<a href = \"./question.aspx\" class=\"navbar__item-link\"> TẠO CÂU HỎI </a>";

                html += "<span class=\"nav__user-name\">EMAIL: </span>";
                html += "<input type=\"text\" style=\"border:none; outline:none; color:#fff; background-color: var(--primary-color); \" class=\"nav__user-email\" id=\"tenemail\" name=\"tenemail\" value=\"" + Session["email"] + "\" >" ;
                html += "<div class=\"user__profile\">";
                html += "<ul class=\"user__profile-list\">";
                html += "<li class=\"user__profile-item\">";
                html += "<a href = \"changePass.aspx\" class=\"user__profile-link\">Đổi mật khẩu</a>";
                html += "   </li><li class=\"user__profile-item\">";
                html += " <a href = \"dangxuat.aspx\" class=\"user__profile-link\"> Đăng xuất </a>";
                html += " </li>";
                html += " </ul>";
                taocauhoi.InnerHtml = cauhoi;
                account.InnerHtml = html;
            }

          slTC.InnerText = Application["SoBaiViet"].ToString();

        }
    }
}