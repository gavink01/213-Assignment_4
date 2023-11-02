﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_GC
{
    public partial class Login : System.Web.UI.Page
    {
        KarateSchoolDataContext dbcon;

        //HOW WILL THE CONNECTION STRING WORK ON MULTIPLE COMPUTERS?

        //connection string
        string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\colin\\Desktop\\Assignment_4GC\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //access the dbml
            KarateSchoolDataContext dbconNetUser = new KarateSchoolDataContext(connString);

                

            //Query to match the UserName and Password with something from the NetUser tables
            var selectedUser = (from NetUser1 in dbconNetUser.NetUsers
                                where NetUser1.UserName == UserNameTextBox.Text && NetUser1.UserPassword == PasswordTextBox.Text
                                select new { NetUser1.UserType, NetUser1.UserID }).SingleOrDefault();

            //If password and username sont match, then show an error
            if (selectedUser == null)
            {
                //Show the error to the user
                Label6.Text = "Invalid UserName or Password";
            }
            else
            {
                //Takes the userType from the selectedUser and the userID from the selected user and set them to variables
                string userType = selectedUser.UserType.ToString().ToLower();
                string userID = selectedUser.UserID.ToString();

                //Adds the user ID to the value 0, so we can grab data from the database after the webpage changes
                Session.Add(userID, 0);

                //This determines which webpage the user will be taken to
                switch (userType)
                { 
                    case "administrator":
                        Response.Redirect("Administrator.aspx");
                        break;
                    case "member":
                        Response.Redirect("Member.aspx");
                        break;
                    case "instructor":
                        Response.Redirect("Instructor.aspx");
                        break;

                }
                    


            }
                




             
        }
    }
}