using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class ContactUs : System.Web.UI.Page
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
                txt_fname.Text = dr["CustomerFirstName"].ToString();
                txt_email.Text = dr["CustomerEmail"].ToString();
                txt_phone.Text = dr["CustomerPhone"].ToString();
            }
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string date = DateTime.Now.ToShortDateString();
            con.Open();
            string query = " INSERT INTO Issue (UserName, Email, Message, Mobile, DateIssueRegistered) VALUES (@uname, @email, @msg, @phone, @reg)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@uname", txt_fname.Text);
            cmd.Parameters.AddWithValue("@email", txt_email.Text);
            cmd.Parameters.AddWithValue("@msg", txt_msg.Text);
            cmd.Parameters.AddWithValue("@phone", txt_phone.Text);
            cmd.Parameters.AddWithValue("@reg", date);
            cmd.ExecuteNonQuery();
            con.Close();
            string message = "Your Issue have been saved Registered.";
            string script = "window.onload = function(){ alert('";
            script += message;
            script += "')};";
            ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
            Clear();
        }

        private void Clear()
        {
            txt_msg.Text = "";
        }
    }
}