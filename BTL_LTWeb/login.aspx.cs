using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string dnEmail = Request.Form.Get("dangnhapemail");
                string dnPassword = Request.Form.Get("dangnhappassword");
                int dem = 0;
                if (dnEmail != "" && dnPassword != "")
                {
                    List<Account> Acc = (List<Account>)Application["ds_taikhoan"];

                    foreach (Account acc in Acc)
                    {
                        if (dnEmail == acc.email)
                        {
                            dem = 1;
                            if (dnPassword == acc.password)
                            {
                                List<UserLogin> User = (List<UserLogin>)Application["ds_login"];

                                UserLogin user = new UserLogin(dnEmail);
                                User.Add(user);
                                Application["ds_login"] = User;

                                Session["email"] = dnEmail;
                                Session["name"] = acc.name;
                                Response.Redirect("index.aspx");

                                break;
                            }
                            else
                            {
                                if (Session["dem"] == null)
                                {
                                    Session["dem"] = 1;
                                }
                                else
                                {
                                    Session["dem"] = (int)Session["dem"] + 1;
                                }
                                if ((int)Session["dem"] >= 5)
                                {
                                    //Response.Redirect("thongbaoloi.html");
                                }
                                else
                                {
                                   //  errorL.InnerHtml = "Sai mật khẩu lần thứ: " + Session["dem"];
                                }

                            }
                        }
                    }
                    if (dem == 0)
                    {
                        errorL.InnerHtml = "Không tồn tại tài khoản";
                    }
                }

            }
        }

    }
}