using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace pathshala.Instructor
{
    public partial class VerifiedInstructor : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void id_btnVerification_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            try
            {
                c.con.Open();
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM tbl_VerifiedInstructor WHERE  VerifiedInstructorId='" + id_jobId.Value + "'", c.con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Session.Abandon();
                    Response.Redirect("sign_up.aspx");
                }
                else
                {
                    //ResultShowLogin.Visible = true;
                    //ResultShowLogin.Text = "Password Or Email is Incroct!";
                    //ResultShowLogin.ForeColor = System.Drawing.Color.Red;
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Jobs Id is Invalid !!')", true);
                    c.con.Close();
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('" + ex.Message + "')", true);
                //ResultShowLogin.Visible = true;
                //ResultShowLogin.Text = ex.Message;
                //ResultShowLogin.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}