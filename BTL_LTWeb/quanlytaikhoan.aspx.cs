using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class quanlytaikhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<Account> danhsach = (List<Account>)Application["ds_taikhoan"];

            if (IsPostBack)
            {
                if (Request.Form["luu"] == "Lưu")
                {
                    int trung = 0;
                    foreach (Account acc in danhsach)
                    {
                        if (acc.name == Request.Form["name"])
                        {
                            trung = 1;
                        }
                    }
                    if (trung == 0)
                    {
                        string name = Request.Form.Get("name");
                        string email = Request.Form.Get("email");
                        string number = Request.Form.Get("number");
                        string password = Request.Form.Get("password");
                        string repassword = Request.Form.Get("repassword");

                        List<Account> Acc = (List<Account>)Application["ds_taikhoan"];
                        Account newAcc = new Account(name, email, number, password, repassword);
                        Acc.Add(newAcc);
                        Application["ds_taikhoan"] = Acc;
                    }
                    else
                    {
                        string alert = "";
                        alert += "<script>alert('Tài khoản đã tồn tại!');</script>";
                        Response.Write(alert);
                    }
                }

            }

            int dem = 0;
            List<Account> DemAcc = (List<Account>)Application["ds_taikhoan"];
            foreach(Account sl in DemAcc)
            {
                dem++;
            }

            string chuoi = "";
            chuoi += "<table class=\"table\" border=\"1\" style=\"width:90%; text-align: center\">";
            chuoi += "<caption><font color=\"#5db157\" style=\"font-size: 2rem;\"> THÔNG TIN CÁ NHÂN NGƯỜI DÙNG</font></caption>";
            //chuoi += "<caption><font color=\"#5db157\" style=\"font-size: 2rem;\">"+dem+" TÀI KHOẢN</font></caption>";
            chuoi += "<thead>";
            chuoi += "<tr>";
            chuoi += "<th> STT </th>";
            chuoi += "<th> Họ và tên </th>";
            chuoi += "<th> Email </th>";
            chuoi += "<th> Số điện thoại </th>";
            chuoi += "<th colspan=\"2\">Tác vụ</th>";
            chuoi += "</tr>";
            chuoi += "</thead>";



            //lặp
            int i = 1;
            foreach (Account acc in danhsach)
            {
                chuoi += "<tbody>";
                chuoi += "<tr>";
                chuoi += "<td>" + (i++) + "</td >";
                chuoi += "<td>" + acc.name + "</td >";
                chuoi += "<td>" + acc.email + "</td >";
                chuoi += "<td>" + acc.number + "</td >";
                chuoi += "<td><a href='quanlytaikhoan.aspx?name=" + acc.name + "&email=" + acc.email + "&number=" + acc.number + "' style=\"text-decoration:none; padding: 3px 5px; color: #fff; background-color:#12c7e7;\">Sửa</a></td>";
                chuoi += "<td><input type=\"submit\" value=\"Xóa\" style=\"padding: 3px 5px; color: #fff; background-color:red; border:1px solid #e74c3c\"></td>";
                chuoi += "</tr>";
                chuoi += "</tbody>";
            }
            chuoi += "</table>";

            if (Request.QueryString["name"] != "")
            {
                name.Value = Request.QueryString["name"];
                email.Value = Request.QueryString["email"];
                number.Value = Request.QueryString["number"];


            }

            bang.InnerHtml = chuoi;

        }
    }
}