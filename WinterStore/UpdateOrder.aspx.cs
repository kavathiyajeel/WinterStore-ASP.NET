using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class UpdateOrder : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string type = Request.QueryString["status"].ToString();
            string oid = Request.QueryString["id"].ToString();
            string query = "Update Orders SET OrderStatus=@ostatus,OrderModifiedDate=@odate where OrderID = @oid";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@oid", oid);
            cmd.Parameters.AddWithValue("@odate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ostatus", type);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Orders.aspx");
        }
    }
}