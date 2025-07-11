using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
using System.Configuration;

public partial class view_site : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();
         protected void Page_Load(object sender, EventArgs e)
    {
        //Label1.Visible = false;
        if (Session["username"] != null)
        {
            HyperLink1.Visible = false;
            Label1.Text = Session["username"].ToString();

        }
        else
        {
            LinkButton1.Visible = false;
            Label2.Visible = false;
            HyperLink1.Visible = true;
            Label1.Visible = false;
        }

        //cmd.Connection = con;
        //con.Open();
        //cmd.CommandText = "select count(customer_id) from cart";

        //cmd.ExecuteNonQuery();
        //Label2.Text = cmd.CommandText;


    }
    
         protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
         {
             Session["search"] = TextBox1.Text;
             Response.Redirect("~/view/search.aspx");
         }
         protected void LinkButton1_Click(object sender, EventArgs e)
         {
             Session["username"] = null;
             LinkButton1.Visible = false;
             Label2.Visible = false;
             HyperLink1.Visible = true;
             Label1.Visible = false;

         }
}
