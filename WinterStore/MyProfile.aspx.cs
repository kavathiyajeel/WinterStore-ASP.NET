using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class MyProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            con.Open();
            string query = "select * from Customers where CustomerID='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_fname.Text = dr["CustomerFirstName"].ToString();
                lbl_lname.Text = dr["CustomerLastName"].ToString();
                lbl_email.Text = dr["CustomerEmail"].ToString();
                lbl_add.Text = dr["CustomerAddress"].ToString();
                lbl_city.Text = dr["CustomerCity"].ToString();
                lbl_state.Text = dr["CustomerState"].ToString();
                lbl_pincode.Text = dr["CustomerZip"].ToString();
                lbl_phone.Text = dr["CustomerPhone"].ToString();
                // Storing in session
                Session["ID"] = dr["CustomerID"].ToString();
                Session["fname"] = dr["CustomerFirstName"].ToString();
                Session["lname"] = dr["CustomerLastName"].ToString();
                Session["email"] = dr["CustomerEmail"].ToString();
                Session["add"] = dr["CustomerAddress"].ToString();
                Session["city"] = dr["CustomerCity"].ToString();
                Session["state"] = dr["CustomerState"].ToString();
                Session["pincode"] = dr["CustomerZip"].ToString();
                Session["phone"] = dr["CustomerPhone"].ToString();

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserUpdate.aspx");
        }
    }
}