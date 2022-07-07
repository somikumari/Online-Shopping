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
    public partial class Events : System.Web.UI.Page
    {
        string con = ConfigurationManager.ConnectionStrings["test1"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button2.Text == "Button")
            {
                Button2.Text = "Button1 is Clicked";
            }
            else
            {
                Button2.Text = "Button";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Button")
            {
                Button1.Text = "Button2 is Clicked";
            }
            else
            {
                Button1.Text = "Button";
            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(con);
            TextBox1.Text = DropDownList1.SelectedItem.ToString();


            SqlCommand cmd = new SqlCommand("select * from Country where Countries='" + DropDownList1.SelectedItem + "'", cn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            // DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "Countries";
            DropDownList1.DataValueField = "c_id";
            DropDownList1.DataBind();
            GridView1.DataSource = null;
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (CheckBox1.Checked)
            {

                TextBox2.Text = "Checked and look at the grid below";
                SqlConnection cn = new SqlConnection(con);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "c2";
                cmd.Connection = cn;
                cn.Open();
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                GridView2.DataSource = cmd.ExecuteReader(); 
                GridView2.DataBind();
                cn.Close(); 
            }
            else
            {
                TextBox2.Text = "Unchecked but still look at the grid below";
                GridView2.DataSource = null;
                GridView2.DataSourceID = null;
            }
        }
    }
}