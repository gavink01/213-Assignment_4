using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment_4_GC
{
    public partial class Instructor : System.Web.UI.Page
    {
        //connection string
        string connString = ConfigurationManager.ConnectionStrings["KarateSchoolConnectionString"].ConnectionString;
        KarateSchoolDataContext dbcon;

        //Grabs the userId from the session
        int userId = UserDetails.userID;
        protected void Page_Load(object sender, EventArgs e)
        {
            GetName();
            GetRecords();
        }

        // This method will execute the code needed to change the label text
        public void GetName()
        {
            dbcon = new KarateSchoolDataContext(connString);

            // Query that will grab the InstructorID based on the userID
            var selectedInstructorID = dbcon.Instructors.FirstOrDefault(instructor => instructor.InstructorID == userId);

            // This will grab the first and last name from a given instructor and set the label to the instructors name
            if (selectedInstructorID != null)
            {
                string firstName = selectedInstructorID.InstructorFirstName;
                string lastName = selectedInstructorID.InstructorLastName;
                lblInstructorName.Text = firstName + " " + lastName;
            }
            
        }

        // Fetches all the records and displays in the gridview
        public void GetRecords()
        {
            dbcon = new KarateSchoolDataContext(connString);

            // Query that will join together the other tables so that data can be used from each table
            var records = from instructor in dbcon.Instructors
                          join section in dbcon.Sections on instructor.InstructorID equals section.Instructor_ID
                          join member in dbcon.Members on section.Member_ID equals member.Member_UserID
                          where instructor.InstructorID == userId
                          select new
                          {
                              section.SectionName, 
                              member.MemberFirstName,
                              member.MemberLastName,
                          };

            GridView1.DataSource = records;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
