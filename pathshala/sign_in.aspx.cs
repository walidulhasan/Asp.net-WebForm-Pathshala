using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading;
using ASPSnippets.GoogleAPI;
using System.Web.Script.Serialization;
using System.Configuration;
using System.Net;
using System.IO;

namespace pathshala
{
    public partial class sign_in : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            GoogleConnect.ClientId = "920868211719-d3b6n8203i98ukevgmcha5f4qnpdti6c.apps.googleusercontent.com";
            GoogleConnect.ClientSecret = "myprojectlogin-317905";
            GoogleConnect.RedirectUri = Request.Url.AbsoluteUri.Split('?')[0];

            //if (!string.IsNullOrEmpty(Request.QueryString["code"]))
            //{
            //    string code = Request.QueryString["code"];
            //    string json = GoogleConnect.Fetch("me", code);
            //    //GoogleProfile profile = new JavaScriptSerializer().Deserialize<GoogleProfile>(json);
            //    ////Label3.Text = profile.Id;
            //    ////Label4.Text = profile.DisplayName;
            //    ////Label5.Text = profile.Emails.Find(email => email.Type == "account").Value;


            //    ////Image1.ImageUrl = profile.Image.Url;
            //    ////ImageButton1.Visible = false;
            //}
            //if (Request.QueryString["error"] == "access_denied")
            //{
            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('Access denied.')", true);
            //}
        }
       

        protected void btnSingIn_Click(object sender, EventArgs e)
        {
            try
            {
                c.con.Open();
                SqlCommand cmd = new SqlCommand(@"SELECT * FROM tbl_SingUpStudent WHERE emailAddress='" + id_email.Value + "' and [password]='" + id_password.Value + "'", c.con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read() == true)
                {
                    Thread.Sleep(2000);
                    Session.Abandon();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    ResultShowLogin.Visible = true;
                    ResultShowLogin.Text = "Password Or Email is Incroct!";
                    ResultShowLogin.ForeColor = System.Drawing.Color.Red;
                    c.con.Close();
                }
            }
            catch (Exception ex)
            {

                ResultShowLogin.Visible = true;
                ResultShowLogin.Text = ex.Message;
                ResultShowLogin.ForeColor = System.Drawing.Color.Red;
            }

        }
        //public class GoogleProfile
        //{
        //    public string Id { get; set; }
        //    public string DisplayName { get; set; }
        //    public Image Image { get; set; }
        //    public List<Email> Emails { get; set; }
        //    public string Gender { get; set; }
        //    public string ObjectType { get; set; }
        //}

        //public class Email
        //{
        //    public string Value { get; set; }
        //    public string Type { get; set; }
        //}

        //public class Image
        //{
        //    public string Url { get; set; }
        //}

        protected void btnGoogleSingin_ServerClick(object sender, EventArgs e)
        {
            GoogleConnect.Authorize("profile", "email");
        }
        
    }
}