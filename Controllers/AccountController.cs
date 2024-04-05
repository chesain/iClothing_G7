using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Group7__iCLOTHINGApp.Models;
using System.Data.SqlClient;


namespace Group7__iCLOTHINGApp.Controllers
{
    public class AccountController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        // GET: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        void connectionString()
        {
            con.ConnectionString = "data source=Cleresa; database=Group7_iCLOTHING; integrated security=SSPI;";  // For data source ensure to fill our your local host server name
        }
        public ActionResult Verify(Account acc)
        {
            connectionString();
            con.Open();
            con.Close();
            com.Connection = con;
            com.CommandText = "SELECT * FROM UserPassword WHERE userAccountName'" +acc.Name+"' and userEncryptedPassword='"+acc.Password+"'";
            dr = com.ExecuteReader();
            if(dr.Read())
            {
                con.Close();
                return View("Create");
            }
            else
            {
                con.Close();
                return View();
            }   
            
            
        }
    }
}