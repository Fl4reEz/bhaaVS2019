using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bahaa
{
    public partial class Sheeesh_Pics : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "1")
                Image1.ImageUrl = "~/pics/Sheesh1.jpg";
            if (DropDownList1.SelectedItem.Text == "2")
                Image1.ImageUrl = "~/pics/Sheesh2.jpg";
            if (DropDownList1.SelectedItem.Text == "3")
                Image1.ImageUrl = "~/pics/Sheesh3.jpg";
            Image1.Visible = true;
            Image1.ImageUrl = "~/Pics/" + DropDownList1.SelectedItem.Text + ".jpg";

        }
    }
}