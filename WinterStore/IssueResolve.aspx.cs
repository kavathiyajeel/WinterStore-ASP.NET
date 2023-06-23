using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class IssueResolve : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
       
            string id = Request.QueryString["id"].ToString();
            string query = "Update Issue SET status=@istatus,DateIssueResolved=@idate where IssueId = @id";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@idate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@istatus", "Resolved");
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Feedbacks.aspx");
        }
    }
}