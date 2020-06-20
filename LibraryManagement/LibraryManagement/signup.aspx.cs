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
    public partial class signup : System.Web.UI.Page
    {

        private string connection = ConfigurationManager.ConnectionStrings["library_management"].ConnectionString;



        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Member already exists with this username');</script>");
            }
            else
            {
                SignUpNewUser();
            }
        }

        bool checkMemberExists()
        {

            try
            {
                SqlConnection sqlConnection = new SqlConnection(connection);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string select = "SELECT * FROM member_master WHERE member_id = '" + username_text_box.Text.Trim() + "';";

                SqlCommand cmd = new SqlCommand(select, sqlConnection);

                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(cmd);

                DataTable table = new DataTable();
                sqlDataAdapter.Fill(table);

                if (table.Rows.Count > 0)
                {
                    return true;
                }

                sqlConnection.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }


        void SignUpNewUser()
        {
            try
            {
                SqlConnection sqlConnection = new SqlConnection(connection);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                string insert = "INSERT INTO member_master(full_name, dob, phone_number, email, state, city, " +
                    "zipcode, full_address, member_id, password, account_status) " +
                    "VALUES(@full_name,@dob,@phone_number,@email,@state,@city,@zipcode,@full_address,@member_id,@password,@account_status)";

                SqlCommand cmd = new SqlCommand(insert, sqlConnection);

                cmd.Parameters.AddWithValue("@full_name", full_name_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", dob_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_number", phone_number_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@email", email_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@state", state_dropdown.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", city_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@zipcode", zipcode_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@full_address", address_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@member_id", username_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password_text_box.Text.Trim());
                cmd.Parameters.AddWithValue("@account_status", "Pending");

                cmd.ExecuteNonQuery();

                sqlConnection.Close();

                Response.Write("<script>alert('Sign Up Successful!');</script>");

                Response.Redirect("userlogin.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

    }
}