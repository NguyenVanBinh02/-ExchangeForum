using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_LTWeb
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string name = Request.Form.Get("name");
                string email = Request.Form.Get("email");
                string number = Request.Form.Get("number");
                string password = Request.Form.Get("password");
                string repassword = Request.Form.Get("repassword");

                List<Account> Acc = (List<Account>)Application["ds_taikhoan"];
                bool check = true;
                if (name != "" && email != "" && number != "" && password != "" && repassword != "")
                {
                    foreach (Account acc in Acc)
                    {
                        if (email == acc.email)
                        {
                            btn_error.InnerHtml = "Tài khoản đã được sử dụng";
                            check = false;
                        }
                    }

                    if (check)
                    {
                        btn_error.InnerHtml = "Đăng ký thành công!";
                        Account newAcc = new Account(name, email, number, password, repassword);
                        Acc.Add(newAcc);
                        Application["ds_taikhoan"] = Acc;


                    }
                }
            }
        }
    }
}