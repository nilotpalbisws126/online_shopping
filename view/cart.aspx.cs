using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;

public partial class view_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username"] != null)
        {
            
        }

        else
        {
            Response.Redirect("~/login.aspx");
        }
    }
    protected void Page_Prerender(object sender, EventArgs e)
    {
        if (GridView1.DataKeyNames==null)
        {
            Response.Write("No items are there in the cart");
        }
    }

    protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
    {
       
    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
       //master.formView1 = GridView1.DataBind();
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       
                 
    }


    private bool check(string username)
    {
        // ConfigurationManager class is in System.Configuration namespace
        //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        // SqlConnection is in System.Data.SqlClient namespace
        //using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spcheck", con);
            cmd.CommandType = CommandType.StoredProcedure;

            // FormsAuthentication is in System.Web.Security
           // string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
            // SqlParameter is in System.Data namespace
            SqlParameter paramUsername = new SqlParameter("@UserName",username);
          

            cmd.Parameters.Add(paramUsername);
          

            con.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            return ReturnCode == 1;
        }
    }


    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {

        if (check(Session["username"].ToString()))
        {

           
            Response.Redirect("~/view/confirmbuy.aspx");
          
        }
        else
        {
           // Response.Redirect("~/view/cart.aspx");
            Label11.Text = "Sorry we cannot deliver product to your location";

        }


    }
}