using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] == null)
            {
                Response.Write("<script>alert('You are not logged in !!')</script>");
                Response.Redirect("Login.aspx");
            }
            else
            {
                if (Session["username"].ToString() != "Admin")
                {
                    Response.Write("<script>alert('You can't access admin pages !!')</script>");
                    Response.Redirect("Login.aspx");

                }
                else
                {
                    username.Text = Session["username"].ToString();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}