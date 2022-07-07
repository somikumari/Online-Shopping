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
    public partial class modifyproduct : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["abc"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            if (TextBox2.Text != " ")//modifying name of the product
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("update Product set name='" + TextBox2.Text + "' where id='" + TextBox1.Text + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            if (TextBox3.Text != " ")//modifying description of the product
            {
                cn.Open();
                SqlCommand cmd = new SqlCommand("update Product set about='" + TextBox3.Text + "' where id='" + TextBox1.Text + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            if (TextBox4.Text != " ")//modifying the price of the product
            {
                string ps = TextBox4.Text;
                int p = Convert.ToInt32(ps);
                cn.Open();
                SqlCommand cmd = new SqlCommand("update Product set price='" + p + "' where id='" + TextBox1.Text + "'", cn);
                cmd.ExecuteNonQuery();
                cn.Close();
            }
            if (FileUpload1.HasFile)//modifying the image of the product
            {
                string str = FileUpload1.FileName;
                //FileUpload1.SaveAs(Server.MapPath("\\image\\" + str));
                FileUpload1.SaveAs("C:\\Users\\somik\\Documents\\Visual Studio 2010\\Projects\\globalseRahat\\globalseRahat\\image\\+'" + str + "'");
                string Image = "image\\" + str.ToString();
                //string name = TextBox2.Text;


                cn.Open();
                SqlCommand cmd = new SqlCommand("update Product set pic='" + Image + "' where id='" + TextBox1.Text + "'", cn);

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

            Response.Redirect("AdminProduct.aspx");


        }

      
        
    }
}