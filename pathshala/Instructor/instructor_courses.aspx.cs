using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace pathshala.Instructor
{
    public partial class instructor_courses : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //private void crouseCatagory()
        //{
        //    SqlCommand cmd = new SqlCommand("SELECT DISTINCT category FROM tbl_courseInformation", c.con);
        //    c.con.Open();
        //    comboBox.DataSource = cmd.ExecuteReader();
        //    comboBox.DataBind();
        //    c.con.Close();
        //}

        //private void crouseIdLoad()
        //{
        //    SqlCommand cmd1 = new SqlCommand("SELECT courseId FROM tbl_courseInformation", c.con);
        //    c.con.Open();
        //    comboBox1.DataSource = cmd1.ExecuteReader();
        //    comboBox1.DataBind();
        //    c.con.Close();
        //}

        protected void btnDiscount_Click(object sender, EventArgs e)
        {
            //DateTime sdDate = DateTime.ParseExact(StartDate.Text, "d-M-yyyy", null);
            //DateTime eDate = DateTime.ParseExact(EndDate.Text, "d-M-yyyy", null);
            DateTime sdDate = Convert.ToDateTime(StartDate.Text);
            //String sdDate1 = String.Format("{0:MM/dd/yyyy}", sdDate);
            DateTime eDate = Convert.ToDateTime(EndDate.Text);
            //String eDate1 = String.Format("{0:MM/dd/yyyy}", eDate);
            Thread.Sleep(3000);
            c.con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO tbl_Discount VALUES('" + comboBox1.Text + "','" + comboBox.Text + "','" + id_DiscountPercentage.Value + "','" + sdDate + "','" + eDate + "')", c.con);
            cmd.ExecuteNonQuery();
            c.con.Close();
            ClearDiscount();
        }
        private void ClearDiscount()
        {
            comboBox1.Text = "";
            comboBox.Text = "";
            id_DiscountPercentage.Value = "";
            StartDate.Text = "";
            EndDate.Text = "";
        }
        
    }
}