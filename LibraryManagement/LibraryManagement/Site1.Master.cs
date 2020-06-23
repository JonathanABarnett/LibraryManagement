﻿using System;

namespace LibraryManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string sessionRole = Session["role"] as string;

                if (string.IsNullOrEmpty(sessionRole))
                {
                    LinkButton1.Visible = true; // user login button
                    LinkButton2.Visible = true; //

                    LinkButton3.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton6.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                } 
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // user login button
                    LinkButton2.Visible = false; //

                    LinkButton3.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Hello " + Session["username"].ToString();
                    LinkButton6.Visible = true;
                    LinkButton11.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // user login button
                    LinkButton2.Visible = false; //

                    LinkButton3.Visible = true;
                    LinkButton7.Visible = true;
                    LinkButton7.Text = "Hello Admin";
                    LinkButton6.Visible = false;
                    LinkButton11.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookcheckout.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Logout Successful!');</script>");
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // user login button
            LinkButton2.Visible = true; //

            LinkButton3.Visible = false;
            LinkButton7.Visible = false;
            LinkButton6.Visible = true;
            LinkButton11.Visible = false;
            LinkButton5.Visible = false;
            LinkButton8.Visible = false;
            LinkButton9.Visible = false;
        }
    }
}