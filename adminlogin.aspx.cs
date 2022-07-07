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
    public partial class admin : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      
        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(con);
            cn.Open();
            SqlCommand cmd = new SqlCommand("insert into admin values('" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox1.Text + "','" + TextBox4.Text + "')", cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("adminsingup.aspx");
        }

       
       
    }
}