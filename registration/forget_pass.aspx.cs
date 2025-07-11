using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class registration_forget_pass : System.Web.UI.Page
{


    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        {
            SqlCommand cmd = new SqlCommand("spResetPassword", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter paramUsername = new SqlParameter("@UserName", TextBox1.Text);

            cmd.Parameters.Add(paramUsername);

            con.Open();
            SqlDataReader rdr = cmd.ExecuteReader();
            while (rdr.Read())
            {
                if (Convert.ToBoolean(rdr["ReturnCode"]))
                {
                    SendPasswordResetEmail(rdr["Email"].ToString(), TextBox1.Text, rdr["UniqueId"].ToString());
                    Label1.Text = "An email with instructions to reset your password is sent to your registered email";
                }
                else
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Username not found!";
                }
            }
        }


    }
    private void SendPasswordResetEmail(string ToEmail, string UserName, string UniqueId)
    {
        // MailMessage class is present is System.Net.Mail namespace
        MailMessage mailMessage = new MailMessage("biswasgang@gmail.com", ToEmail);


        // StringBuilder class is present in System.Text namespace
        StringBuilder sbEmailBody = new StringBuilder();
        sbEmailBody.Append("Dear " + UserName + ",<br/><br/>");
        sbEmailBody.Append("Please click on the following link to reset your password");
        sbEmailBody.Append("<br/>"); sbEmailBody.Append("http://localhost:49637/online_shopping/registration/change_pass.aspx?uid=" + UniqueId);
        sbEmailBody.Append("<br/><br/>");
        sbEmailBody.Append("<b>Tradeattire.com</b>");

        mailMessage.IsBodyHtml = true;

        mailMessage.Body = sbEmailBody.ToString();
        mailMessage.Subject = "Reset Your Password";
        SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);

        smtpClient.Credentials = new System.Net.NetworkCredential()
        {
            UserName = "biswasgang@gmail.com",
            Password = ""
        };

        smtpClient.EnableSsl = true;
        smtpClient.Send(mailMessage);
    }
}