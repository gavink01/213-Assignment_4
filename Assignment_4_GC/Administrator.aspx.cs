using System;
using System.Collections.Generic;
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

            //query to display all the itmes in Models to the gridview
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

            //query to display all the itmes in Models to the gridview
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
            refreshPage();
        }


    }
}