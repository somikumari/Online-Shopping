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
    public partial class adminsingup : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string id = TextBox3.Text;
           
            SqlConnection cn = new SqlConnection(con);
            SqlCommand cd = new SqlCommand("Select * from admin where email='" + TextBox3.Text + "'", cn);
            SqlDataAdapter da = new SqlDataAdapter(cd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0][2].ToString() == TextBox1.Text)
                {
                    Label5.Text = "Successfull!!";
                    Response.Redirect("AdminProduct.aspx?id="+ id);
                }
                else
                {
                    Label5.Text = "WRONG PASSWORD ENTERED!!  RE-ENTER THE PASSWORD!!";
                }
          
            }
         
        }
    }
}