
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void formSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select * from Customers where CustomerEmail ='" + txt_email.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();

            if (txt_email.Text == "admin@gmail.com" && txt_password.Text == "password")
            {
                Session["username"] = "Admin";

                Response.Redirect("Admin.aspx");
            }
            else if (dr["CustomerPassword"].ToString() == txt_password.Text)
            {
                Application["userid"] = dr["CustomerID"].ToString();
                Session["username"] = dr["CustomerFirstName"].ToString();
                Session["id"] = dr["CustomerID"].ToString();

                con.Close();

                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Credentials')</script>");

            }
        }
    }
}