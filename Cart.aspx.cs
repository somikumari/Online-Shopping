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
    public partial class Cart : System.Web.UI.Page
    {

        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SqlConnection cn = new SqlConnection(con);


                SqlCommand cmd = new SqlCommand("select  a.q as Quantity,p.* from Product p join AddToCart a on a.id=p.id", cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                ListView1.DataSource = dt;
                ListView1.DataBind();

                //SqlCommand cmd1 = new SqlCommand("SELECT COUNT(a.id) as Quantity FROM Product p join AddToCart a on p.id=a.id  group by a.id", cn);
                //SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                //DataTable dt1 = new DataTable();
                //da1.Fill(dt1);
                //quantity.DataSource = dt1;
                //quantity.DataBind();
            }
        }

        protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            if (e.CommandName == "decrease")
            {
                string id = e.CommandArgument.ToString();
                cn.Open();
                SqlCommand cmd1 = new SqlCommand("Select * from AddToCart where id='" + id + "'", cn);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
                if (Convert.ToInt32(dt1.Rows[0][1]) > 1) /* Here this function will convert value into Int and then check*/
                {
                    string qt = dt1.Rows[0][1].ToString();
                    int quan = Convert.ToInt32(qt) - 1;
                    SqlCommand cmd2 = new SqlCommand("update AddToCart set q='" + quan + "' where id='" + id + "'", cn);
                    cmd2.ExecuteNonQuery();
                }
                else
                {
                    SqlCommand cmd4 = new SqlCommand("delete from AddToCart where id ='" + id + "'", cn);
                    cmd4.ExecuteNonQuery();
                }
                cn.Close();
                Response.Redirect("Cart.aspx");


            }


            
        }

     
      
       
    }
}