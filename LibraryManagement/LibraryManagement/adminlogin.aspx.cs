using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace LibraryManagement
{
    public partial class adminlogin : System.Web.UI.Page
    {
        private string connection = ConfigurationManager.ConnectionStrings["library_management"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection sqlConection = new SqlConnection(connection);
                if (sqlConection.State == ConnectionState.Closed)
                {
                    sqlConection.Open();
                }

                string select = "SELECT * FROM admin_login WHERE username='" + username_text_box.Text.Trim() +
                    "' AND password='" + password_text_box.Text.Trim() + "';";

                SqlCommand cmd = new SqlCommand(select, sqlConection);

                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<script>alert('Login Successful!');</script>");
                        Session["username"] = reader.GetValue(0).ToString();
                        Session["fullname"] = reader.GetValue(2).ToString();
                        Session["role"] = "admin";
                    }

                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials');</script>");

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }
    }
}