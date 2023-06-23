using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToShortDateString();
            con.Open();
            string query = " INSERT INTO Customers (CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPassword, CustomerAddress, CustomerCity, CustomerState, CustomerZip, CustomerPhone, CustomerDateAdded, CustomerIsActive) VALUES (@fname, @lname, @email, @pass, @address, @city, @state, @pincode, @phone, @date,0)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@fname", txt_fname.Text);
            cmd.Parameters.AddWithValue("@lname", txt_lname.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@pass", txt_cpassword.Text);
            cmd.Parameters.AddWithValue("@address", txt_add.Text);
            cmd.Parameters.AddWithValue("@city", txt_city.Text);
            cmd.Parameters.AddWithValue("@state", txt_state.Text);
            cmd.Parameters.AddWithValue("@pincode", txt_pincode.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@date", date);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Successfully registered')</script>");
            Response.Redirect("Login.aspx");
        }
    }
}