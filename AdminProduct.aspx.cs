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
    public partial class AdminProduct : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);

            if (!Page.IsPostBack)
            {

                String aid = Request.QueryString["id"];//to catch the request sent in adminsignup
                SqlCommand cmd = new SqlCommand("select * from Product where aid='" + aid + "'", cn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }

        }

        protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            String aid = Request.QueryString["id"];
            SqlConnection cn = new SqlConnection(con);
            string pid = e.CommandArgument.ToString();
           
            cn.Open();

            if (e.CommandName == "remove")
            {
              
                SqlCommand cmd1 = new SqlCommand("delete from Product where id='" + pid + "'", cn);
                cmd1.ExecuteNonQuery();
               
                
                
            }
            if (e.CommandName == "modify")
            {
                Response.Redirect("modifyproduct.aspx");
            }
            cn.Close();
            Response.Redirect("AdminProduct.aspx?id="+aid);

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            String aid = Request.QueryString["id"];
            Response.Redirect("addproduct.aspx?aid="+aid);

        }

       

      
    }
}