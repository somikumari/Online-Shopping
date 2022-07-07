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
    public partial class Signup : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            SqlCommand cd = new SqlCommand("Select * from Signup where Username='" + TextBox2.Text + "'", cn);
            SqlDataAdapter da = new SqlDataAdapter(cd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                if (dt.Rows[0][1].ToString().Equals(TextBox3.Text) && dt.Rows[0][2].ToString().Equals(TextBox1.Text))
                {
                    //Response.Redirect("DataListExample.aspx");
                    Label5.Text = "SUCCESSFULL!!";
                }
                else
                {
                    Label5.Text = "WRONG PASSWORD ENTERED!!  RE-ENTER THE PASSWORD!!";
                }
            }
            Response.Redirect("DataListExample.aspx");
        }
    }
}