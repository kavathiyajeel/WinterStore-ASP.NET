using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void kids_Click(object sender, EventArgs e)
        {
            Response.Redirect("Kids.aspx");

        }

        protected void Women_Click(object sender, EventArgs e)
        {
            Response.Redirect("Women.aspx");

        }

        protected void Men_Click(object sender, EventArgs e)
        {
            Response.Redirect("Men.aspx");
        }
    }
}