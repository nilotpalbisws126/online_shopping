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
public partial class Registration : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();



    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();

    }
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox6_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox7_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {
        
    }
    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        if (Page.IsValid)
        {
            // Read the connection string from web.config.
            // ConfigurationManager class is in System.Configuration namespace
            //string CS = ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString;
            //// SqlConnection is in System.Data.SqlClient namespace
            //using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("spRegisterUser", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter username = new SqlParameter("@UserName", TextBox1.Text);
                // FormsAuthentication calss is in System.Web.Security namespace
                string encryptedPassword = FormsAuthentication.
                    HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1");
                SqlParameter password = new SqlParameter("@Password", encryptedPassword);
                SqlParameter email = new SqlParameter("@Email", TextBox6.Text);
                SqlParameter f_name = new SqlParameter("@f_name", TextBox4.Text);
                SqlParameter l_name = new SqlParameter("@l_name", TextBox5.Text);
                SqlParameter gender = new SqlParameter("@gender", DropDownList1.Text);
                SqlParameter address1 = new SqlParameter("@address1", TextBox8.Text);
                SqlParameter address2 = new SqlParameter("@address2", TextBox9.Text);
                SqlParameter mobno = new SqlParameter("@mobno", TextBox7.Text);
                SqlParameter zipcode = new SqlParameter("@zipcode", TextBox10.Text);

                cmd.Parameters.Add(username);
                cmd.Parameters.Add(password);
                cmd.Parameters.Add(email);
                cmd.Parameters.Add(f_name);
                cmd.Parameters.Add(l_name);
                cmd.Parameters.Add(gender);
                cmd.Parameters.Add(address1);
                cmd.Parameters.Add(address2);
                cmd.Parameters.Add(mobno);
                cmd.Parameters.Add(zipcode);

                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    Label1.Text = "User Name already in use";
                }
                else
                {
                    Response.Redirect("~/login.aspx");
                }
            }
        }
    }
}