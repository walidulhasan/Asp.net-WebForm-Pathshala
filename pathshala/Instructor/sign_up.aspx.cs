using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pathshala.Instructor
{
    public partial class sign_up : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                System.Threading.Thread.Sleep(2000);
                if (id_fullname.Value == "" || id_email.Value == "" || id_Password.Value == "")
                {
                    
                    //ResultShow.Visible = true;
                    //ResultShow.Text = "Username and Password fields are empty";
                    //ResultShow.ForeColor = System.Drawing.Color.YellowGreen;
                }
                else if (id_Password.Value == id_ConfirmPassword.Value)
                {
                    c.con.Open();
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO tbl_SingUpInstructor VALUES ('" + id_fullname.Value + "','" + id_email.Value + "','" + id_Password.Value + "')", c.con);
                    if (cmd.ExecuteNonQuery() > 0)
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Your Account has been Successfully Created')", true);
                        //Session["msg"] = "Your Account has been Successfully Created";
                        Response.Redirect("sign_in.aspx");
                    }
                    c.con.Close();

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('User Name/Email/Password can't be Empty')", true);
                    //ResultShow.Visible = true;
                    //ResultShow.Text = "Password does not match, Please Re-enter";
                    //ResultShow.ForeColor = System.Drawing.Color.Red;
                    //clear();
                    //id_Password.Focus();
                }
            }
            catch (Exception)
            {
                //ResultShow.Visible = true;
                //ResultShow.Text = ex.Message;
            }
        }
    }
}