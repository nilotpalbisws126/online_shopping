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


public partial class view_Default : System.Web.UI.Page
{

      SqlConnection con = new SqlConnection("Data Source=.;Integrated Security=SSPI;Initial Catalog=online_shopping");
    SqlCommand cmd = new SqlCommand();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
        protected void use(object sender, DataListItemEventArgs e)
        {


            Label prn = (Label)e.Item.FindControl("product_nameLabel");
            ViewState["product_name"] = prn.Text;
            //TextBox qnty = (TextBox)e.Item.FindControl("qnty");
            //ViewState["qnty"] = qnty.Text;
            
            
            Label p_id = (Label)e.Item.FindControl("product_idLabel");
                ViewState["p_id"] = p_id.Text;
              
        
        }
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {


            if (Session["username"] != null)
            {
                SqlCommand cmd = new SqlCommand("spcart", con);
                cmd.CommandType = CommandType.StoredProcedure;
                // string p_id = ViewState["p_id"].ToString();
                string s1 = Request.QueryString["product_id"];

                //int i = int.Parse((string)ViewState["qnty"]);


                SqlParameter username = new SqlParameter("@UserName", Session["username"]);
                // Session.Add("unm", );

                SqlParameter product_id = new SqlParameter("@Prod_id", s1);
                //SqlParameter qnty = new SqlParameter("@qnty", i);


                cmd.Parameters.Add(product_id);
                cmd.Parameters.Add(username);
                //cmd.Parameters.Add(qnty);


                con.Open();
                int ReturnCode = (int)cmd.ExecuteScalar();
                if (ReturnCode == -1)
                {
                    Response.Write("Product not available");
                }
                else
                {
                    Response.Redirect("~/view/products.aspx");
                } 
               

            }
            else
            Response.Redirect("~/view/login.aspx");

        }




        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}