using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class ProductDetails : System.Web.UI.Page
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
            string query = "select * from products where pid='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {

                Image1.ImageUrl = dr["pimage"].ToString();
                pname.Text = dr["pname"].ToString();
                pbrand.Text = dr["pbrand"].ToString();
                pdesc.Text = dr["pdesc"].ToString();
                mrp.Text = dr["pmrp"].ToString();
                price.Text = dr["pprice"].ToString();
                La.Text = dr["pid"].ToString();
            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double Pprice = double.Parse(price.Text) * double.Parse(DropDownList1.SelectedValue);
            con.Open();
            string query = "Insert into Cart (CartCustomerID,CartProductID,CartQuantity,CartPrice,CartDateAdded,CartDateModified) values (@cid,@pid,@quantity,@price,@date,@datem)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@cid", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@pid", La.Text);
            cmd.Parameters.AddWithValue("@quantity", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@price", Pprice);
            cmd.Parameters.AddWithValue("@date", DateTime.Today.ToShortDateString());
            cmd.Parameters.AddWithValue("@datem", DateTime.Today.ToShortDateString());
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("MyCart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            double Pprice = double.Parse(price.Text) * double.Parse(DropDownList1.SelectedValue);
            string oid = Generate().ToString();
            con.Open();
            string query = "Insert into OrderItems (OrderItemID,OrderItemProductID,OrderItemQUantity,OrderItemPrice) values (@oid,@pid,@quantity,@price)";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@oid",oid );
            cmd.Parameters.AddWithValue("@pid", La.Text);
            cmd.Parameters.AddWithValue("@quantity", DropDownList1.SelectedValue);
            cmd.Parameters.AddWithValue("@price", Pprice);
            cmd.ExecuteNonQuery();
            con.Close();
            string url = "Checkout.aspx?id=" + oid + "&amount=" + Pprice.ToString();
            Response.Redirect(url);
        }

        private string Generate()
        {
            const string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var code = new char[5];
            var random = new Random();
            for (int i = 0; i < 5; i++)
            {
                code[i] = characters[random.Next(characters.Length)];
            }
            return new string(code);
        }
    }
}