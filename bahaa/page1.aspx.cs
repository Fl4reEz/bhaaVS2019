using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bahaa
{
    public partial class page1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int x, y, sum, res = 0;

            x = int.Parse(TextBox1.Text);
            y = int.Parse(TextBox2.Text);

            string ch = RBLcalc.SelectedItem.Text;
           
            if (ch == "-")
                res=x - y;
            if (ch == "+")
                res = x + y;
            if (ch == "*")
                res = x * y;
            if (ch == "/")
                res = x / y;

            Label2.Text = res.ToString();



        }
    }
}