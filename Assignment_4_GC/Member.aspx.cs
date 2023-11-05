using System;
using System.Collections.Generic;
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
        //Collins conn
        //string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\colin\\Desktop\\Assignment_4GC\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf;Integrated Security=True;Connect Timeout=30";
        // Gavins conn
        string connString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\gavin\\OneDrive - North Dakota University System\\Desktop\\Repo\\213-Assignment_4\\Assignment_4_GC\\App_Data\\KarateSchool.mdf\";Integrated Security=True;Connect Timeout=30";
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
            var records = from member in dbcon.Members
                          join section in dbcon.Sections on member.Member_UserID equals section.Member_ID
                          join instructor in dbcon.Instructors on section.Instructor_ID equals instructor.InstructorID
                          where member.Member_UserID == userId
                          select new
                          {
                              member.MemberFirstName,
                              member.MemberLastName,
                              member.MemberDateJoined,
                              member.MemberPhoneNumber,
                              member.MemberEmail,
                              section.SectionName,
                              instructor.InstructorFirstName,
                              instructor.InstructorLastName,
                              section.SectionStartDate,
                              section.SectionFee
                          };

            GridView1.DataSource = records;
            GridView1.DataBind();
        }
    }
}