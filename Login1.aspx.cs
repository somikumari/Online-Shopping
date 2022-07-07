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
    public partial class Login1 : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlCommand cd=new SqlCommand("Select * from Signup where Username='"+TextBox2.Text+"'",cn);
            //SqlDataAdapter da = new SqlDataAdapter(cd);
            //DataTable dt = new DataTable();
            //da.Fill(dt);
            //if (dt.Rows.Count < 0)
            //{
                //if (dt.Rows[0][1].ToString() == TextBox3.Text)
                //{
                //    Response.Redirect("DataListExample.aspx");
                //}
                //else
                //{
                //    Label5.Text = "UnSuccessfull";
                //}

              
            //}
            //else
            //{
            //}

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection cn = new SqlConnection(con);

            cn.Open();
            SqlCommand cd1 = new SqlCommand("insert into Signup values('" + TextBox2.Text + "','" + TextBox3.Text + "','"+TextBox1.Text+"')", cn);
            cd1.ExecuteNonQuery();
            cn.Close();
               
            Response.Redirect("Signup.aspx");
        }
    }
}