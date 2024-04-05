using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group7__iCLOTHINGApp.User
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["Group7_iCLOTHING"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM AdminPassword WHERE adminID='" + adminuser.Text + "' and userEncryptedPassword='" + adminpass.Text + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                con.Close();
                Response.Redirect("/User/Default.aspx");
            }
            else
            {
                con.Close();
                Response.Redirect("WebForm2.aspx");
            }
        }
    }
}