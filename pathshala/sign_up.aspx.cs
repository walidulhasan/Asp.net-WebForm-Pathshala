using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;

namespace pathshala
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
                if (id_fullname.Value == "" || id_email.Value == "" || id_Password.Value == "")
                {
                    ResultShow.Visible = true;
                    ResultShow.Text = "Username and Password fields are empty";
                    ResultShow.ForeColor = System.Drawing.Color.YellowGreen;
                }
                else if (id_Password.Value == id_ConfirmPassword.Value)
                {
                    c.con.Open();
                    SqlCommand cmd = new SqlCommand(@"INSERT INTO tbl_SingUpStudent VALUES ('" + id_fullname.Value + "','" + id_email.Value + "','" + id_Password.Value + "')", c.con);
                    if (cmd.ExecuteNonQuery()>0)
                    {
                        //Session["msg"] = "Your Account has been Successfully Created";
                        Response.Redirect("sign_in.aspx");  
                    }
                    c.con.Close();
                    
                }
                else
                {
                    ResultShow.Visible = true;
                    ResultShow.Text = "Password does not match, Please Re-enter";
                    ResultShow.ForeColor = System.Drawing.Color.Red;
                    clear();
                    id_Password.Focus();
                }
            }
            catch (Exception ex)
            {
                ResultShow.Visible = true;
                ResultShow.Text = ex.Message;
            }
            
        }
        private void clear()
        {
            id_email.Value = "";
            id_fullname.Value = "";
            id_Password.Value = "";
        }
    }
}