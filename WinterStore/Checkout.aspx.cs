using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class Checkout : System.Web.UI.Page
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
                txt_name.Text = dr["CustomerFirstName"].ToString();
                txt_add.Text = dr["CustomerAddress"].ToString();
                txt_city.Text = dr["CustomerCity"].ToString();
                txt_state.Text = dr["CustomerState"].ToString();
                txt_pincode.Text = dr["CustomerZip"].ToString();
            }
            con.Close();
            txt_amount.Text = Request.QueryString["amount"].ToString();
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string payment = "";
            if(Pmethod.SelectedValue == "Cash on Delivery")
            {
                payment = "pending";
            }
            else
            {
                payment = "Done";
            }
            string transactionid = GenerateCode();
            string orderid = "ORDX" + Generate();
            string query = "insert into Orders(OrderID,OrderDate,OrderTotal,OrderCustomerID,OrderItemID,OrderShippingAddress,OrderShippingCity,OrderShippingState,OrderShippingZip,OrderPaymentMethod,OrderPaymentStatus,OrderTransactionID,OrderStatus) values (@oid,@odate,@ototal,@ocid,@oitid,@oadd,@ocity,@ostate,@opincode,@opmethod,@opstatus,@otid,@ostatus)";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@oid",orderid);
            cmd.Parameters.AddWithValue("@odate", DateTime.Now.ToShortDateString());
            cmd.Parameters.AddWithValue("@ototal",  Request.QueryString["amount"].ToString());
            cmd.Parameters.AddWithValue("@ocid", Session["id"].ToString());
            cmd.Parameters.AddWithValue("@oitid", Request.QueryString["id"].ToString());
            cmd.Parameters.AddWithValue("@oadd", txt_add.Text);
            cmd.Parameters.AddWithValue("@ocity", txt_city.Text);
            cmd.Parameters.AddWithValue("@ostate", txt_state.Text);
            cmd.Parameters.AddWithValue("@opincode", txt_pincode.Text);
            cmd.Parameters.AddWithValue("@opmethod", Pmethod.SelectedValue);
            cmd.Parameters.AddWithValue("@opstatus", payment);
            cmd.Parameters.AddWithValue("@otid",transactionid);
            cmd.Parameters.AddWithValue("@ostatus","Placed");
            cmd.ExecuteNonQuery();
            con.Close();
            
                Session["msg"] = "Order successfully placed with Order ID :" + orderid;
                Response.Redirect("OrderComplete.aspx");

            
           



        }

        private string Generate()
        {
            const string characters = "0123456789";
            var code = new char[4];
            var random = new Random();

            for (int i = 0; i < 4; i++)
            {
                code[i] = characters[random.Next(characters.Length)];
            }

            return new string(code);
        }

        public string GenerateCode()
        {
            const string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
            var code = new char[10];
            var random = new Random();

            for (int i = 0; i < 10; i++)
            {
                code[i] = characters[random.Next(characters.Length)];
            }

            return new string(code);
        }

    }
}