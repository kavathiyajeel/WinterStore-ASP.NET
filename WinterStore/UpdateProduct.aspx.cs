using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class UpdateProduct : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["dbconnect"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Int32.Parse(Request.QueryString["id"]);
            LoadData(id);

        }
        private void LoadData(int id)
        {
            con.Open();
            string query = "select * from Products where isActive=0 and pid='" + id + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Pname.Text = dr["pname"].ToString();
                Pdescription.Text = dr["pdesc"].ToString();
                Pprice.Text = dr["pprice"].ToString();
                Pbrand.Text = dr["pbrand"].ToString();
                Pmrp.Text = dr["pmrp"].ToString();
                Idealfor.SelectedValue = dr["pidealfor"].ToString();
                Pcategory.SelectedValue = dr["pcategory"].ToString();
                isActive.Text = dr["isActive"].ToString();

            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "UPDATE Products set pname=@pname,pbrand=@pbrand,pdesc=@pdesc,pcategory=@pcategory,pmrp=@pmrp,pprice=@pprice,pidealfor=@pidealfor,pimage=@pimage,isActive=@isactive where id = '" + Int32.Parse(Request.QueryString["id"]) + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@pname", Pname.Text);
            cmd.Parameters.AddWithValue("@pbrand", Pname.Text);
            cmd.Parameters.AddWithValue("@pdesc", Pname.Text);
            cmd.Parameters.AddWithValue("@pcategory", Pname.Text);
            cmd.Parameters.AddWithValue("@pmrp", Pname.Text);
            cmd.Parameters.AddWithValue("@pprice", Pname.Text);
            cmd.Parameters.AddWithValue("@pidealfor", Pname.Text);
            cmd.Parameters.AddWithValue("@image", Pname.Text);
            cmd.Parameters.AddWithValue("@isactive", Pname.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("ViewAllProducts.aspx");

        }
    }
}