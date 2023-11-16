using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_GC
{
    public partial class Administrator : System.Web.UI.Page
    {
        // Gavins conn
        //string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\gavin\\OneDrive - North Dakota University System\\Desktop\\Repo\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf\";Integrated Security=True;Connect Timeout=30";

        //connection string
        //Colin's conn
        string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\colin\\Desktop\\Assignment_4GC\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf;Integrated Security=True;Connect Timeout=30";
        KarateSchoolDataContext dbcon;


        //Method for refreshing the data on the page
        public void refreshPage()
        {
            //connection to the dbml
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


        public void refreshDeleteDropDown()
        {
            
            if(DeleteRadioButtonList.SelectedValue == "Member")
            {
                // LINQ, this gets the Names for the drop down list
                var result = from x in dbcon.Members select new { Name = x.MemberFirstName + " " + x.MemberLastName, x.Member_UserID };

                //add the data to the drop down list and to the drop down list's data field
                DeleteDropDownList.DataTextField = "Name";
                DeleteDropDownList.DataValueField = "Member_UserID";

                //show the results in the drop down list
                DeleteDropDownList.DataSource = result;
                DeleteDropDownList.DataBind();
            }
            else
            {
                // LINQ, this gets the Names for the drop down list
                var result = from x in dbcon.Instructors select new { Name = x.InstructorFirstName + " " + x.InstructorLastName, x.InstructorID };

                //add the data to the drop down list and to the drop down list's data field
                DeleteDropDownList.DataTextField = "Name";
                DeleteDropDownList.DataValueField = "InstructorID";

                //show the results in the drop down list
                DeleteDropDownList.DataSource = result;
                DeleteDropDownList.DataBind();
            }
                
            
        }

        public void refreshAssignDropDowns()
        {
            // LINQ, this gets the Names for the drop down list
            var result = from x in dbcon.Members select new { Name = x.MemberFirstName + " " + x.MemberLastName, x.Member_UserID };

            //add the data to the drop down list and to the drop down list's data field
            MemberAssignDropDownList.DataTextField = "Name";
            MemberAssignDropDownList.DataValueField = "Member_UserID";

            //show the results in the drop down list
            MemberAssignDropDownList.DataSource = result;
            MemberAssignDropDownList.DataBind();

            // LINQ, this gets the Names for the drop down list
            var result2 = from x in dbcon.Instructors select new { Name = x.InstructorFirstName + " " + x.InstructorLastName, x.InstructorID };

            //add the data to the drop down list and to the drop down list's data field
            InstructorAssignDropDownList.DataTextField = "Name";
            InstructorAssignDropDownList.DataValueField = "InstructorID";

            //show the results in the drop down list
            InstructorAssignDropDownList.DataSource = result2;
            InstructorAssignDropDownList.DataBind();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            //Gives the page data when loaded
            refreshPage();

            if (!IsPostBack)
            {
                refreshDeleteDropDown();
                refreshAssignDropDowns();
            }

            //hide the error buttons
            SuccessLabel.Visible = false;
            ErrorLabel.Visible = false;
            
            
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

                    //refreshes data in dropdown
                    refreshDeleteDropDown();
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

        protected void DeleteRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            refreshDeleteDropDown();
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            
            try
            {
                


                //sql connection object
                using (SqlConnection conn = new SqlConnection(connString))
                {

                    //query for deleting from NetUser
                    string deleteQuery = "DELETE from NetUser WHERE UserID=" + DeleteDropDownList.SelectedValue + "";

                    //second query for deleting any users in Section tabel
                    string deleteQuery2; 

                    //third delete query for Member or Instructor tabels
                    string deleteQuery3;

                    



                    if (DeleteRadioButtonList.SelectedValue == "Member")
                    {
                        //delete user from Section tabel
                        deleteQuery2 = "DELETE from Section WHERE Member_ID=" + DeleteDropDownList.SelectedValue + "";

                        //delete user from Member tabel
                        deleteQuery3 = "DELETE from Member WHERE Member_UserID=" + DeleteDropDownList.SelectedValue + "";


                    }
                    else
                    {
                        //delete user from Section tabel
                        deleteQuery2 = "DELETE from Section WHERE Instructor_ID=" + DeleteDropDownList.SelectedValue + "";

                        //delete user from Instructor tabel
                        deleteQuery3 = "DELETE from Instructor WHERE InstructorID=" + DeleteDropDownList.SelectedValue + "";
                    }


                    try
                    {
                        //open connection
                        conn.Open();

                        //connect query
                        SqlCommand sqlcom = new SqlCommand(deleteQuery, conn);
                        SqlCommand sqlcom2 = new SqlCommand(deleteQuery2, conn);
                        SqlCommand sqlcom3 = new SqlCommand(deleteQuery3, conn);

                        //Show success lable and display "Success"
                        SuccessLabel.Visible = true;
                        SuccessLabel.Text = "Success";


                        //execute the query
                        //Has to be in this order so the FK does not have conflicts
                        sqlcom2.ExecuteNonQuery();
                        sqlcom3.ExecuteNonQuery();
                        sqlcom.ExecuteNonQuery();

                        
                       


                    }
                    catch (SqlException ex)
                    {
                        SuccessLabel.Visible = true;
                        //display error message
                        SuccessLabel.Text = (ex.Message);
                    }

                    //close connection
                    conn.Close();


                }

            }
            catch (Exception ex)
            {
                SuccessLabel.Visible = true;
                //display error message
                SuccessLabel.Text = ("Exception: " + ex.Message);
            }

            //EELABEL.Text = DeleteDropDownList.SelectedItem + "   "   + DeleteDropDownList.SelectedValue;

            
            
            //refresh the data
            refreshPage();
            refreshDeleteDropDown();
            
        }

        protected void DeleteDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void AssignBtn_Click(object sender, EventArgs e)
        {
            string sectionName = SectionNameTextBox.Text.Trim();
            DateTime sectionDate = DateTime.Parse(SectionDateTextBox.Text);
            string memberID = MemberAssignDropDownList.SelectedValue.ToString();
            string instructorID = InstructorAssignDropDownList.SelectedValue.ToString();
            string sectionFee = SectionFeeTextBox.Text.Trim();

            


            try
            {
                //sql connection object 
                using (SqlConnection conn = new SqlConnection(connString))
                {
                    //connects to the database
                    dbcon = new KarateSchoolDataContext(connString);

                    //query to insert the user in NetUser table
                    string insertQuery = "INSERT INTO Section(SectionName, SectionStartDate, Member_ID, Instructor_ID, SectionFee)" +
                        " VALUES('" + sectionName + "', '" + sectionDate + "', " + memberID + ", " + instructorID + ", " + sectionFee + ")";

                    // open connection
                    conn.Open();

                    //connect query
                    SqlCommand sqlcom = new SqlCommand(insertQuery, conn);


                    //execute query
                    sqlcom.ExecuteNonQuery();

                    AssignErrorLabel.Text = "";
                }
            }
            catch (SqlException ex)
            {
                AssignErrorLabel.Text = ("Exception: " + ex.Message);
            }
        }
    }
    
}