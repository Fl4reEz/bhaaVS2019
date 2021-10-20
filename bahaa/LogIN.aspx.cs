using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace bahaa
{
    public partial class LogIN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtn_Click(object sender, EventArgs e)
        {
            string s = string.Format("SELECT * FROM users WHERE Username='{0}' and Password='{1}'", txtusername.Text, txtpassword.Text);
            DataTable dt = Dbase.SelectFromTable(s);
            if (dt.Rows.Count == 0) loginmsg.Text = "The Username or the Password is wrong , try again";
            else
            {
                UserClass POG = new UserClass(dt);
                Session["user"] = POG;
                Response.Redirect("Welcome.aspx");
                
            }
            
        }
    }
}