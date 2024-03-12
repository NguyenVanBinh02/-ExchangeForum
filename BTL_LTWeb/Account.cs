using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BTL_LTWeb
{
    public class Account
    {
        public string name;
        public string email;
        //public string date;
        public string number;
        public string password;
        public string repassword;

        public Account(string name, string email, string number,string password, string repassword)
        {
            this.name = name;
            this.email = email;
            this.number = number;
            this.password = password;
            this.repassword = repassword;
        }
    }
}