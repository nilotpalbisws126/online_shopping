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
using System.Drawing;
using System.IO;


public partial class view_confirmbuy : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();
    
    protected void Page_Load(object sender, EventArgs e)
    {


        if (check(Session["username"].ToString()))
        {


            //Response.Redirect("~/view/confirmbuy.aspx");

        }
        else
        {
            Response.Redirect("~/view/cart.aspx");
            //Label11.Text = "Sorry we cannot deliver product to your location";

        }

       
    }

    protected void use(object sender, DataGridItemEventArgs e)
    {


        Label grt = (Label)e.Item.FindControl("Label1");
        ViewState["Label1"] = grt.Text;
        

    }
 
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {

        SqlCommand cmd = new SqlCommand("spbuy", con);
        cmd.CommandType = CommandType.StoredProcedure;
        
        SqlParameter username = new SqlParameter("@customer_id", Session["username"]);
        // Session.Add("unm", );

        SqlParameter grndtot = new SqlParameter("@grndtot", Session["grndtot"]);
        
       
        


      

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
            SqlParameter paramUsername = new SqlParameter("@UserName", username);


            cmd.Parameters.Add(paramUsername);


            con.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            return ReturnCode == 1;
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}