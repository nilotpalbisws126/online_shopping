using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class registration_change_pass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

       

        if ((Request.QueryString["uid"]== null && User.Identity.Name =="") || (Session["username"]==null) )
        {
            Response.Redirect("~/login.aspx");
        }
        if (!IsPostBack)
        {
            if (Request.QueryString["uid"] != null)
            {
                if (!IsPasswordResetLinkValid())
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "Password Reset link has expired or is invalid";
                }
                row1.Visible = false;
            }
            else if (User.Identity.Name != "")
            {
                row1.Visible = true;
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if ((Request.QueryString["uid"] != null && ChangeUserPassword()) ||
       (User.Identity.Name != "" && ChangeUserPasswordUsingCurrentPassword()))
        {
            Label1.Text = "Password Changed Successfully!";
        }
        else
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            if (row1.Visible)
            {
                Label1.Text = "Invalid Current Password!";
            }
            else
            {
                Label1.Text = "Password Reset link has expired or is invalid";
            }
        }
    }



    private bool ChangeUserPassword()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        },
        new SqlParameter()
        {
            ParameterName = "@Password",
            Value = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1")
        }
    };

        return ExecuteSP("spChangePassword", paramList);
    }

    private bool ChangeUserPasswordUsingCurrentPassword()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@UserName",
            Value = User.Identity.Name
        },
        new SqlParameter()
        {
            ParameterName = "@CurrentPassword",
            Value = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox1.Text, "SHA1")
        },
        new SqlParameter()
        {
            ParameterName = "@NewPassword",
            Value = FormsAuthentication.HashPasswordForStoringInConfigFile(TextBox2.Text, "SHA1")
        }
    };

        return ExecuteSP("spChangePasswordUsingCurrentPassword", paramList);
    }

    private bool ExecuteSP(string SPName, List<SqlParameter> SPParameters)
    {
        SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");

        {
            SqlCommand cmd = new SqlCommand(SPName, con);
            cmd.CommandType = CommandType.StoredProcedure;

            foreach (SqlParameter parameter in SPParameters)
            {
                cmd.Parameters.Add(parameter);
            }

            con.Open();
            return Convert.ToBoolean(cmd.ExecuteScalar());
        }
    }


    private bool IsPasswordResetLinkValid()
    {
        List<SqlParameter> paramList = new List<SqlParameter>()
    {
        new SqlParameter()
        {
            ParameterName = "@GUID",
            Value = Request.QueryString["uid"]
        }
    };

        return ExecuteSP("spIsPasswordResetLinkValid", paramList);
    }




}