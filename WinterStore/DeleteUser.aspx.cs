using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class DeleteUser : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            string query = "UPDATE Customers SET CustomerIsActive=@active where CustomerID=@id";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", Request.QueryString["id"].ToString());
            cmd.Parameters.AddWithValue("@active",1);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewUsers.aspx");
        }
    }
}