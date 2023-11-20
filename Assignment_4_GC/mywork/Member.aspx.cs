using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease;

namespace Assignment_4_GC
{
    public partial class Member : System.Web.UI.Page
    {
        //connection string
        string connString = ConfigurationManager.ConnectionStrings["KarateSchoolConnectionString"].ConnectionString;
        
        KarateSchoolDataContext dbcon;
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
            var selectedMemberID = dbcon.Members.FirstOrDefault(member => member.Member_UserID == userId);

            // This will grab the first and last name from a given instructor and set the label to the instructors name
            if (selectedMemberID != null)
            {
                string firstName = selectedMemberID.MemberFirstName;
                string lastName = selectedMemberID.MemberLastName;
                lblMemberName.Text = firstName + " " + lastName;
            }
        }

        // Fetches all the records and displays in the gridview
        public void GetRecords()
        {
            dbcon = new KarateSchoolDataContext(connString);

            // Query that will join together the other tables so that data can be used from each table
            var records = from section in dbcon.Sections
                          join instructor in dbcon.Instructors on section.Instructor_ID equals instructor.InstructorID
                          where section.Member.Member_UserID == userId
                          select new
                          {
                              section.SectionName,
                              instructor.InstructorFirstName,
                              instructor.InstructorLastName,
                              section.SectionStartDate,
                              section.SectionFee
                          };

            GridView1.DataSource = records;
            GridView1.DataBind();

            //Gets the total cost of all the members sections
            decimal totalCost = records.Sum(x => x.SectionFee);
            lblTotalCost.Text = totalCost.ToString("C");
        }
    }
}