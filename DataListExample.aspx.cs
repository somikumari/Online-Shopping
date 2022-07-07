using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace Online_Shopping
{
    public partial class DataListExample : System.Web.UI.Page
    {
        // SqlConnection cn = new SqlConnection("Data Source=DESKTOP-8ALQS0N;Initial Catalog=test2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
        {
            string id = ((Label)e.Item.FindControl("Label2")).Text;
            Response.Redirect("details.aspx?a=" + id);
        }

        //protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        //{
        //    //switch (e.CommandName)
        //    //{
        //    //    case "viewdetail":
        //    //        Response.Redirect("details.aspx?a=" + e.CommandArgument.ToString());
        //    //        break;
        //    //}

        //    if (e.CommandName == "viewdetail")
        //    {
        //        Response.Redirect("details.aspx?a=" + e.CommandArgument.ToString());
        //    }

        //}

        //protected void DataList1_ItemCommand(object sender, ListViewCommandEventArgs e)
        //{

        //}
    }
}