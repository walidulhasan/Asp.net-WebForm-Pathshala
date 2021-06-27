using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pathshala.Instructor
{
    public partial class sign_in : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSingIn_Click(object sender, EventArgs e)
        {
            try
            {
                c.con.Open();
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM tbl_SingUpInstructor WHERE emailAddress='" + id_email.Value + "' and [password]='" + id_password.Value + "'", c.con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Thread.Sleep(4000);
                    Session.Abandon();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    //ResultShowLogin.Visible = true;
                    //ResultShowLogin.Text = "Password Or Email is Incroct!";
                    //ResultShowLogin.ForeColor = System.Drawing.Color.Red;
                    c.con.Close();
                }
            }
            catch (Exception)
            {

                //ResultShowLogin.Visible = true;
                //ResultShowLogin.Text = ex.Message;
                //ResultShowLogin.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}