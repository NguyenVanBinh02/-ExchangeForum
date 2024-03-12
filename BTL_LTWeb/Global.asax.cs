using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BTL_LTWeb
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["ds_taikhoan"] = new List<Account>();

            List<Account> Acc = (List<Account>)Application["ds_taikhoan"];
            Acc.Add(new Account("Admin", "admin@gmail.com", "0386573528", "88888888", "88888888"));
            Acc.Add(new Account("Bình taptap", "Binh1 ", "0386573528", "88888888", "88888888"));
            Acc.Add(new Account("Cho Binh", "Binh", "0386573528", "88888888", "88888888"));



            Application["ds_baiviet"] = new List<PostContent>();
                
            List<PostContent> post = (List<PostContent>)Application["ds_baiviet"];

            Application["ds_cmt"] = new List<Comment>();

             List<Comment> cmt = (List<Comment>)Application["ds_cmt"];
;
            Application["ds_login"] = new List<UserLogin>();

               List<UserLogin> lg = (List<UserLogin>)Application["ds_login"];
            lg.Add(new UserLogin("Cho mình hỏi cách xử lý file trong PHP cả nhà?"));
            lg.Add(new UserLogin("Các thuật toán duyệt cây nhị phân?"));
            lg.Add(new UserLogin("DS đề tiếp theo?"));
            lg.Add(new UserLogin("Bài tập đưa ra tổng giá trị?"));


            Application["luotTruyCap"] = 0;
            Application["SoBaiViet"] = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Session["login"] = 3;


            Application["luotTruyCap"] = (int.Parse(Application["luotTruyCap"].ToString()) + 1).ToString();
            Application["SoBaiViet"] = (int.Parse(Application["SoBaiViet"].ToString() + 1).ToString());
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}