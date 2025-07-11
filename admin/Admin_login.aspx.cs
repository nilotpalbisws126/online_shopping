using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Security;
public partial class admin_Admin_login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }


    private bool AuthenticateUser(string username, string password)
    {
        // ConfigurationManager class is in System.Configuration namespace
        //string CS = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
        // SqlConnection is in System.Data.SqlClient namespace
        //using (SqlConnection con = new SqlConnection(CS))
        {
            SqlCommand cmd = new SqlCommand("spAuthenticateadmin", con);
            cmd.CommandType = CommandType.StoredProcedure;

            // FormsAuthentication is in System.Web.Security
           // string EncryptedPassword = FormsAuthentication.HashPasswordForStoringInConfigFile(password, "SHA1");
            // SqlParameter is in System.Data namespace
            SqlParameter paramUsername = new SqlParameter("@UserName", username);
            SqlParameter paramPassword = new SqlParameter("@Password", password);

            cmd.Parameters.Add(paramUsername);
            cmd.Parameters.Add(paramPassword);

            con.Open();
            int ReturnCode = (int)cmd.ExecuteScalar();
            return ReturnCode == 1;
        }
    }





    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        if (AuthenticateUser(TextBox1.Text, TextBox2.Text))
        {
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
            Session["admuser"] = TextBox1.Text;
            Response.Redirect("~/admin/admin_panel.aspx");
        }
        else
        {
            Label1.Text = "Invalid User Name and/or Password";
        }
    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}