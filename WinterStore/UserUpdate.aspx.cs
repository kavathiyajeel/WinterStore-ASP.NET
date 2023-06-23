using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class UserUpdate : System.Web.UI.Page
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
            tb_fname.Text = Session["fname"].ToString();
            txt_lname.Text = Session["lname"].ToString();
            txt_email.Text = Session["email"].ToString();
            txt_add.Text = Session["add"].ToString();
            txt_city.Text = Session["city"].ToString();
            txt_state.Text = Session["state"].ToString();
            txt_pincode.Text = Session["pincode"].ToString();
            txt_phone.Text = Session["phone"].ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "UPDATE Customers SET CustomerFirstName=@fname, CustomerLastName=@lname, CustomerEmail=@email, CustomerAddress=@add, CustomerCity=@city, CustomerState=@state, CustomerZip=@pincode, CustomerPhone=@phone where CustomerID=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Session["ID"].ToString());
            cmd.Parameters.AddWithValue("@fname", tb_fname.Text.ToString());
            cmd.Parameters.AddWithValue("@lname", txt_lname.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@add", txt_add.Text);
            cmd.Parameters.AddWithValue("@city", txt_city.Text);
            cmd.Parameters.AddWithValue("@state", txt_state.Text);
            cmd.Parameters.AddWithValue("@pincode", txt_pincode.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            //            Response.Write("<script>alert('Updated ')</script>");
            Response.Redirect("MyProfile.aspx");

        }
    }
}