using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_GC
{
    public partial class Login : System.Web.UI.Page
    {
        
        //connection string
        string connString = ConfigurationManager.ConnectionStrings["KarateSchoolConnectionString"].ConnectionString;
        KarateSchoolDataContext dbcon;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            //access the dbml
            dbcon = new KarateSchoolDataContext(connString);

            try
            {
                //Query to match the UserName and Password with something from the NetUser tables
                var selectedUser = (from x in dbcon.NetUsers
                                    where x.UserName == Login1.UserName && x.UserPassword == Login1.Password
                                    select x).First();

                //If password and username dont match, then show an error
                if (selectedUser == null)
                {
                    //Show the error to the user
                    ErrorLabel.Text = "Invalid UserName or Password";
                }
                else
                {
                    //Takes the userType from the selectedUser and the userID from the selected user and set them to variables
                    string userType = selectedUser.UserType.ToString().ToLower();
                    UserDetails.userID = selectedUser.UserID;

                    //Adds the user ID, so we can grab data from the database after the webpage changes
                    Session.Add("UserID", UserDetails.userID);

                    //Athenticates user
                    FormsAuthentication.RedirectFromLoginPage(Login1.UserName, true);

                    //This determines which webpage the user will be taken to
                    switch (userType)
                    {
                        case "administrator":
                            Response.Redirect("~/mywork/Administrator.aspx");
                            break;
                        case "member":
                            Response.Redirect("~/mywork/Member.aspx");
                            break;
                        case "instructor":
                            Response.Redirect("~/mywork/Instructor.aspx");
                            break;

                    }
                }
            }
            catch (Exception ex)
            {
                //Show the error to the user
                ErrorLabel.Text = ("Exception: " + ex.Message);
            }
        }
    }
}