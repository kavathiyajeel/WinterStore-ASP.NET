using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class AddProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ClearAll()
        {
            Pname.Text = "";
            Pbrand.Text = "";
            Pdescription.Text = "";
            Pmrp.Text = "";
            Pprice.Text = "";
            Idealfor.Text = "";


        }
        protected void add_Click1(object sender, EventArgs e)
        {
            string query = "insert into Products(pname,pbrand,pdesc,pcategory,pmrp,pprice,pidealfor,pimage) values (@pname,@pbrand,@pdesc,@pcategory,@pmrp,@pprice,@pidealfor,@pimage)";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@pname", Pname.Text);
            cmd.Parameters.AddWithValue("@pbrand", Pbrand.Text);
            cmd.Parameters.AddWithValue("@pdesc", Pdescription.Text);
            cmd.Parameters.AddWithValue("@pcategory", Pcategory.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@pmrp", Pmrp.Text);
            cmd.Parameters.AddWithValue("@pprice", Pprice.Text);
            cmd.Parameters.AddWithValue("@pidealfor", Idealfor.SelectedValue.ToString());
            cmd.Parameters.AddWithValue("@image", "Hoddie.jpg");
            cmd.ExecuteNonQuery();
            con.Close();
            ClearAll();
        }
    }
}