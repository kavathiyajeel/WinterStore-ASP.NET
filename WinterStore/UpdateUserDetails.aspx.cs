using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class UpdateUserDetails : System.Web.UI.Page
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
            string query = "select * from Customers where CustomerID='" + Request.QueryString["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                txt_fname.Text = dr["CustomerFirstName"].ToString();
                txt_lname.Text = dr["CustomerLastName"].ToString();
                txt_email.Text = dr["CustomerEmail"].ToString();
                txt_add.Text = dr["CustomerAddress"].ToString();
                txt_city.Text = dr["CustomerCity"].ToString();
                txt_state.Text = dr["CustomerState"].ToString();
                txt_pincode.Text = dr["CustomerZip"].ToString();
                txt_phone.Text = dr["CustomerPhone"].ToString();
            

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "UPDATE Customers SET CustomerFirstName=@fname, CustomerLastName=@lname, CustomerEmail=@email, CustomerAddress=@add, CustomerCity=@city, CustomerState=@state, CustomerZip=@pincode, CustomerPhone=@phone where CustomerID=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
            cmd.Parameters.AddWithValue("@fname", txt_fname.Text.ToString());
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
            Response.Redirect("ViewUsers.aspx");
        }
    }

       
    
}