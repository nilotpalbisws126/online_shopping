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

public partial class admin_admin_panel : System.Web.UI.Page

{

    SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admuser"] != null)
        {

            Label2.Text = Session["admuser"].ToString();

        }

        else
        {
            Response.Redirect("~/admin/Admin_login.aspx");
        }
    }
    public void clr()
    {
        TextBox2.Text = "";
        TextBox7.Text = "";
        TextBox6.Text = "";
        TextBox4.Text = "";
        TextBox8.Text = "";
    }
    private void ClearControls()
    {
       TextBox2.Text = string.Empty;

       TextBox7.Text = string.Empty;

       TextBox6.Text = string.Empty;

       TextBox4.Text = string.Empty;
       TextBox8.Text = string.Empty;
      

        TextBox4.Focus();

    }


    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        //if (FileUpload1.HasFile)
        //{
        //    string str = FileUpload1.FileName;
        //    FileUpload1.PostedFile.SaveAs(Server.MapPath(".") + "//images//" + str);
        //    string path = "~//images//" + str.ToString();
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("insert into products values('"+TextBox2+"','"+TextBox6+"','"+TextBox4+"','"+path+"','"+ TextBox7 + "' ) " , con);
        //    cmd.ExecuteNonQuery();
        //    con.Close();
        //    Label1.Text = "successfull";
        //}
        //else
        //{
        //    Label1.Text = "please upload image";
        //}



        string imgpath = "~/view/images/" + FileUpload1.FileName.ToString();
       string imgpath1 = string.Format("images/{0}.jpg", TextBox6.Text);
        if (FileUpload1.PostedFile.FileName != "")
        {
            imgpath = string.Format("~/view/images/{0}.jpg", TextBox6.Text);
            imgpath1 = string.Format("images/{0}.jpg", TextBox6.Text);
        }
        
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into products values('" + TextBox2.Text + "','" + TextBox6.Text + "','" + TextBox4.Text + "','" + imgpath1 + "','" + TextBox7.Text + "','" + TextBox9.Text + "')";
        cmd.ExecuteNonQuery();
        con.Close();
        clr();
        Label1.Text="Subbmitted Successfully";
        //Image1.ImageUrl = imgpath;
        if (FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        cmd.Connection = con;
        con.Open();

        cmd.CommandText = "delete from products where product_id ='" + TextBox8.Text + "' ";
        clr();
        cmd.ExecuteNonQuery();
        con.Close();
    }

    protected void TextBox8_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        string imgpath = "~/view/images/" + FileUpload1.FileName.ToString();
        string imgpath1 = string.Format("images/{0}.jpg", TextBox6.Text);
        if (FileUpload1.PostedFile.FileName != "")
        {
            imgpath = string.Format("~/view/images/{0}.jpg", TextBox6.Text);
            imgpath1 = string.Format("images/{0}.jpg", TextBox6.Text);
        }
        cmd.Connection = con;
        con.Open();

        cmd.CommandText = "update products set price='" + TextBox7.Text + "',product_name='" + TextBox6.Text + "',avail='" + TextBox4.Text + "',img='" + imgpath1 + "',descrip='" + TextBox9.Text + "' where product_id= '" + TextBox2.Text + "' ";
        clr();
        cmd.ExecuteNonQuery();
        con.Close();
        Label1.Text = "Subbmitted Successfully";
        //Image1.ImageUrl = imgpath;
        if (FileUpload1.PostedFile.FileName != "")
        {
            FileUpload1.PostedFile.SaveAs(Server.MapPath(imgpath));
        }
    }
    protected void TextBox9_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox9_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["admuser"] = null;
        Response.Redirect("Admin_login.aspx");
    }
}