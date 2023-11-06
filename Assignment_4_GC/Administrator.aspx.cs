using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_GC
{
    public partial class Administrator : System.Web.UI.Page
    {
        //connection string
        string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\colin\\Desktop\\Assignment_4GC\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf;Integrated Security=True;Connect Timeout=30";
        KarateSchoolDataContext dbcon;


        //Method for refreshing the data on the page
        public void refreshPage()
        {
            dbcon = new KarateSchoolDataContext(connString);

            //query to display needed itmes in Members to the gridview
            var result = from x in dbcon.Members
                         select new
                         {
                             x.MemberFirstName,
                             x.MemberLastName,
                             x.MemberDateJoined,
                             x.MemberPhoneNumber
                         };

            //show result
            GridView1.DataSource = result;
            GridView1.DataBind();

            //query to display needed items in Instructors to the gridview
            var result2 = from x in dbcon.Instructors
                         select new
                         {
                             x.InstructorFirstName,
                             x.InstructorLastName,
                             
                         };

            //show result
            GridView2.DataSource = result2;
            GridView2.DataBind();



        }



        protected void Page_Load(object sender, EventArgs e)
        {
            //Gives the page data when loaded
            refreshPage();
        }

        //This just changes what the user sees based on if the user picks Member or Instructor
        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedIndex == 0)
            {
                DateJoinedTextBox.Visible = true;
                DateJoinedLabel.Visible = true;
                EmailLabel.Visible = true;
                EmailTextBox.Visible = true;
                DateRequiredField.Visible = true;
                EmailRequiredField.Visible = true;
            }
            else 
            {
                DateJoinedTextBox.Visible = false;
                DateJoinedLabel.Visible = false;
                EmailLabel.Visible = false;
                EmailTextBox.Visible = false;
                DateRequiredField.Visible = false;
                EmailRequiredField.Visible = false;
            }
        }

        //Adds the user to the data base
        protected void AddBtn_Click(object sender, EventArgs e)
        {
            //Records all the input into variables
            string userName = UserNameTextBox.Text.Trim();
            string password = PasswordTextBox.Text.Trim();
            string userType = RadioButtonList1.SelectedValue.ToString().Trim();
            string firstName = FirstNameTextBox.Text.Trim();
            string lastName = LastNameTextBox.Text.Trim();
            string phone = PhoneTextBox.Text.Trim();
            string email;
            DateTime dateJoined;

            

            try
            {
                //sql connection object 
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    //connects to the database
                    dbcon = new KarateSchoolDataContext(connString);

                    //query to insert the user in NetUser table
                    string insertQuery = "INSERT INTO NetUser(UserName, UserPassword, UserType)" +
                        " VALUES('" + userName + "', '" + password + "', '" + userType + "')";

                    // open connection
                    conn.Open();

                    //connect query
                    SqlCommand sqlcom = new SqlCommand(insertQuery, conn);


                    //execute query
                    sqlcom.ExecuteNonQuery();



                    //Query to match the UserName and Password with something from the NetUser tables (this is for getting the UserID variable to put in other tables)
                    var selectedUser = (from x in dbcon.NetUsers
                                        where x.UserName == UserNameTextBox.Text && x.UserPassword == PasswordTextBox.Text
                                        select x).First();


                    
                    //different query if the user is a member
                    if (userType == "Member")
                    {
                        //Records additional input into variables
                        email = EmailTextBox.Text.Trim();
                        dateJoined = DateTime.Parse(DateJoinedTextBox.Text);

                        //query to insert the user in  table
                        string insertQuery2 = "INSERT INTO Member(Member_UserID, MemberFirstName, MemberLastName, MemberDateJoined, MemberPhoneNumber, MemberEmail)" +
                            " VALUES(" + selectedUser.UserID + ",'" + firstName + "', '" + lastName + "', '" + dateJoined + "', '" + phone + "', '" + email + "')";

                        //connect query
                        SqlCommand sqlcom2 = new SqlCommand(insertQuery2, conn);


                        //execute query
                        sqlcom2.ExecuteNonQuery();

                    }
                    else
                    {
                        

                        //query to insert the user in  table instructor
                        string insertQuery2 = "INSERT INTO Instructor(InstructorID, InstructorFirstName, InstructorLastName, InstructorPhoneNumber)" +
                            " VALUES(" + selectedUser.UserID + ",'" + firstName + "', '" + lastName + "', '" + phone + "')";

                        //connect query
                        SqlCommand sqlcom2 = new SqlCommand(insertQuery2, conn);


                        //execute query
                        sqlcom2.ExecuteNonQuery();
                    }

                    //Makes the error label invisable to the user
                    ErrorLabel.Visible = false;

                    //close connection
                    conn.Close();
                }
            }
            catch (SqlException ex)
            {
                //makes the error label visible to let the user know what went wrong
                ErrorLabel.Visible = true;
                //display error message
                ErrorLabel.Text = ("Exception: " + ex.Message);
            }

            //Clear Every TextBox
            UserNameTextBox.Text = "";
            PasswordTextBox.Text = "";
            FirstNameTextBox.Text = "";
            LastNameTextBox.Text = "";
            PhoneTextBox.Text = "";
            EmailTextBox.Text = "";
            DateJoinedTextBox.Text = "";
            refreshPage();

        }
    }
}