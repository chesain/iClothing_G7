using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace Group7__iCLOTHINGApp
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Group7_iCLOTHING"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM UserPassword WHERE userAccountName='" + txtuser.Text + "' and userEncryptedPassword='" + txtpass.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                con.Close();
                Response.Redirect("/User/Default.aspx");
            }
            else
            {
                con.Close();
                Response.Redirect("WebForm1.aspx");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           Response.Redirect("WebForm2.aspx");

        }
    }
}