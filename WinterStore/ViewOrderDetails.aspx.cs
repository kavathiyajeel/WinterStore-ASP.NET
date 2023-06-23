using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WinterStore
{
    public partial class ViewOrderDetails : System.Web.UI.Page
    {
        private string custid, itemid,pid;
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
            fillOrderData();
        }

        private void fillOrderData()
        {
            con.Open();
            string query = "select * from Orders where OrderID='" + Request.QueryString["id"] + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_oid.Text = dr["OrderID"].ToString();
                lbl_odate.Text = dr["OrderDate"].ToString();
                lbl_address.Text = dr["OrderShippingAddress"].ToString()+", "+ dr["OrderShippingCity"].ToString() + ", " + dr["OrderShippingState"].ToString() + ", " + dr["OrderShippingZip"].ToString();
               lbl_pmethod.Text = dr["OrderPaymentMethod"].ToString();
               lbl_amount.Text = dr["OrderTotal"].ToString();
                custid = dr["OrderCustomerID"].ToString();
                itemid = dr["OrderItemID"].ToString();
                lbl_tid.Text = dr["OrderTransactionID"].ToString();
               lbl_ostatus.Text = dr["OrderStatus"].ToString();
                lbl_pstatus.Text = dr["OrderPaymentStatus"].ToString();
            }
            con.Close();
            fillCustomerData();
            fillOrderItemData();

        }

        private void fillOrderItemData()
        {
            con.Open();
            string query = "select * from OrderItems where OrderItemID='" + itemid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                pid = dr["OrderItemProductID"].ToString();
            }
            con.Close();
            fillProductData();
        }

        private void fillProductData()
        {
            con.Open();
            string query = "select * from Products where pid='" + pid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_pname.Text = dr["pname"].ToString();
                pimage.ImageUrl = dr["pimage"].ToString();
            }
            con.Close();
        }

        private void fillCustomerData()
        {
            con.Open();
            string query = "select * from Customers where CustomerID='" + custid+"'";
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                lbl_name.Text = dr["CustomerFirstName"].ToString()+" "+ dr["CustomerLastName"].ToString();
            }
            con.Close();

        }
    }
}