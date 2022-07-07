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
    public partial class adminform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_Click(object sender, EventArgs e)
        {
            Response.Redirect("addproduct.aspx");
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("deleteproduct.aspx");
        }

        protected void modify_Click(object sender, EventArgs e)
        {
            Response.Redirect("modifyproduct.aspx");
        }
    }
}