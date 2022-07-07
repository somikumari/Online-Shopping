using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Online_Shopping
{
    public partial class details : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            if (!Page.IsPostBack)//displaying the number of items in the cart already
            {
                //here we have coded to display Cart count
                SqlCommand cmd1 = new SqlCommand("select distinct(id) from AddToCart", cn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                lbl_cart.Text = dt1.Rows.Count.ToString();
                Button2.Text = "Page Loaded";

                String pid = Request.QueryString["a"];//to catch the request sent in DataListExample
                SqlCommand cmd = new SqlCommand("select * from Product where id='" + pid + "'", cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
            //else
            //{
            //    Button2.Text = "Page PostBack";
            //}
        }

        //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        //{
        //    SqlConnection cn = new SqlConnection(con);
        //    if (e.CommandName == "cart")
        //    {
        //        cn.Open();//connection is opened
        //        String aid = e.CommandArgument.ToString();
        //        SqlCommand cmd2 = new SqlCommand("select * from AddToCart where id='" + aid + "'", cn);
        //        SqlDataAdapter da = new SqlDataAdapter(cmd2);
        //        DataTable dt1 = new DataTable();
        //        da.Fill(dt1);

        //        if (dt1.Rows.Count > 0)
        //        {
        //            string qt = dt1.Rows[0][1].ToString();

        //            int quan = Convert.ToInt16(qt) + 1;
        //            SqlCommand cmdUpdt = new SqlCommand("update AddToCart set q='" + quan + "'where id ='" + aid + "' ", cn);
        //            cmdUpdt.ExecuteNonQuery();
        //        }
        //        else
        //        {
        //            SqlCommand cmd = new SqlCommand("insert into AddToCart(id,q) values('" + aid + "',1) ", cn);
        //            cmd.ExecuteNonQuery();//This is to execute the above command
        //        }


        //        //here we have coded to display Cart count
        //        SqlCommand cmd1 = new SqlCommand("select distinct(id) from AddToCart", cn);//for calculating rows with same id only once
        //        SqlDataAdapter da2 = new SqlDataAdapter(cmd1);
        //        DataTable dt2 = new DataTable();
        //        da2.Fill(dt2);
        //        lbl_cart.Text = dt2.Rows.Count.ToString();//lbl_cart is Label used
        //        cn.Close();//connection is closed
        //    }
        //}

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
         
            SqlConnection cn = new SqlConnection(con);
           
                cn.Open();//connection is opened
                string aid = ((Label)e.Item.FindControl("Label5")).Text;
                //String aid = e.CommandArgument.ToString();
                SqlCommand cmd2 = new SqlCommand("select * from AddToCart where id='" + aid + "'", cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd2);
                DataTable dt1 = new DataTable();
                da.Fill(dt1);

                if (dt1.Rows.Count > 0)
                {
                    string qt = dt1.Rows[0][1].ToString();

                    int quan = Convert.ToInt16(qt) + 1;
                    SqlCommand cmdUpdt = new SqlCommand("update AddToCart set q='" + quan + "'where id ='" + aid + "' ", cn);
                    cmdUpdt.ExecuteNonQuery();
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("insert into AddToCart(id,q) values('" + aid + "',1) ", cn);
                    cmd.ExecuteNonQuery();//This is to execute the above command
                }


                //here we have coded to display Cart count
                SqlCommand cmd1 = new SqlCommand("select distinct(id) from AddToCart", cn);//for calculating rows with same id only once
                SqlDataAdapter da2 = new SqlDataAdapter(cmd1);
                DataTable dt2 = new DataTable();
                da2.Fill(dt2);
                lbl_cart.Text = dt2.Rows.Count.ToString();//lbl_cart is Label used
                cn.Close();//connection is closed


                

        }
    }
}