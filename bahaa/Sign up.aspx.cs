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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i <= 31; i++)
                DayDDL.Items.Add(i.ToString());
            for (int i = 1900; i <= 2021; i++)
                YearDDL.Items.Add(i.ToString());
        }

        protected void DayDDL_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DayDDL_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            OleDbConnection connection = new OleDbConnection();
            connection.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/DB.accdb");
            connection.Open();
            OleDbCommand command = new OleDbCommand();
            string date = YearDDL.SelectedValue + "-" + MonthDDL.SelectedValue + "-" + DayDDL.SelectedValue;
            string empty = "non";
            string s = "insert into users(:FName,:LName,:Username,:Gender,:Email,:birth,:Country,:Passwword,Pic:) values(";
            s += "'" + FName.Text + "',";
            s += "'" + LName.Text + "',";
            s += "'" + Username.Text + "',";
            s += "'" + GenderList.SelectedValue + "',";
            s += "'" + Email.Text + "',";
            s += "'" + Password.Text + "',";
            s += "#" + date + "#,";
            s += "(" + Region.SelectedValue + "),";
            s += "'" + empty + "'";
            command.CommandText = s;
            command.Connection = connection;

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}