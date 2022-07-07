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
    public partial class addproduct : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            String aid = Request.QueryString["aid"];

            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("\\image\\" + str));
                //FileUpload1.SaveAs("C:\\Users\\somik\\Documents\\Visual Studio 2010\\Projects\\globalseRahat\\globalseRahat\\image\\+'" + str + "'");
                string Image = "image\\" + str.ToString();
                //string name = TextBox2.Text;


                cn.Open();
                SqlCommand cmd = new SqlCommand("insert into Product values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Image + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+aid+"')", cn);

                cmd.ExecuteNonQuery();
                cn.Close();

                Label1.Text = "Image Uploaded";
                Label1.ForeColor = System.Drawing.Color.ForestGreen;

            }
            else
            {
                Label1.Text = "Please Upload your Image";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            Response.Redirect("AdminProduct.aspx?id="+aid);
           
        }

    
    }
}