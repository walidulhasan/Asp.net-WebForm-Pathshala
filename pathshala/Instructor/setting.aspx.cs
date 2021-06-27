using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pathshala.Instructor
{
    public partial class setting : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void id_btnProfileSave_ServerClick(object sender, EventArgs e)
        {
            string fi = "";
            if (id_InstructorImage.PostedFile.ContentLength > 0 && id_InstructorImage.HasFile)
            {
                if (id_InstructorImage.PostedFile.ContentLength > 2 * 1024 * 1024)
                {
                    id_PnResult.Visible = true;
                    id_PnResult.GroupingText = "File size exceeds 2mb limit.";
                    id_PnResult.ForeColor = System.Drawing.Color.Red;
                    return;
                }
                string ext = Path.GetExtension(id_InstructorImage.PostedFile.FileName);
                if (ext == ".jpg" || ext == ".png" || ext == ".PNG" || ext == ".gif")
                {
                    fi = Guid.NewGuid() + Path.GetExtension(id_InstructorImage.PostedFile.FileName);
                    string path = Server.MapPath("~/InstructorImage/") + fi;
                    id_InstructorImage.PostedFile.SaveAs(path);

                }
                else
                {
                    id_PnResult.Visible = true;
                    id_PnResult.GroupingText = "Only jpg, gif or png file allowed";
                    id_PnResult.ForeColor = System.Drawing.Color.Red;
                    return;
                }
            }
            else
            {
                id_PnResult.Visible = true;
                id_PnResult.GroupingText = "Please upload a picture";
                id_PnResult.ForeColor = System.Drawing.Color.Red;
                return;
            }
            c.con.Open();
            SqlCommand cmd = new SqlCommand(@"INSERT INTO tbl_basicProfileInstructor VALUES ('" + id_ddlBasicProfileEmail.Text + "','" + fi + "','" + id_FirstName.Value + "','" + id_LastName.Value + "','" + id_headline.Value + "','" + id_about.Value + "','" + id_site.Value + "','" + id_facebook.Value + "','" + id_twitter.Value + "','" + id_linkedin.Value + "','" + id_youtube.Value + "')", c.con);
            cmd.ExecuteNonQuery();
            c.con.Close();
            id_PnResult.Visible = true;
            id_PnResult.GroupingText = "Data Save Successful!!";
            id_PnResult.ForeColor = System.Drawing.Color.DarkGreen;
            Clearall();
        }
        private void Clearall()
        {
            id_about.Value = "";
            id_FirstName.Value = "";
            id_LastName.Value = "";
            id_headline.Value = "";
            id_about.Value = "";
            id_site.Value = "";
            id_facebook.Value = "";
            id_twitter.Value = "";
            id_linkedin.Value = "";
            id_youtube.Value = "";
        }
    }
}