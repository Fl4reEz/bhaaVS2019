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
    public partial class ShowUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null) Response.Redirect("WrongPage.aspx");
           // UserClass mom = (UserClass)Session["user"];
            //if (mom.Rank == "Boomer") Response.Redirect("WrongPageBoomer.aspx");




            DataTable hotFl4re = Dbase.SelectFromTable("SELECT * FROM users");
            GridView1.DataSource = hotFl4re;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Remove")
            {
                string s = string.Format("delete from users where Username='{0}'", e.CommandArgument);
                Dbase.ChangeTable(s);
            }
        }
    }
}