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
    public partial class Default : System.Web.UI.Page
    {
        Connection c = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Unnamed_ServerClick(object sender, EventArgs e)
        {
            string fi = "";
            string vi = "";
            string up = "";
            try
            {

                if (id_CoverImage2.PostedFile.ContentLength > 0 && id_CoverImage2.HasFile)
                {
                    if (id_CoverImage2.PostedFile.ContentLength > 2 * 1024 * 1024)
                    {
                        pn_Result.Visible = true;
                        pn_Result.GroupingText = "File size exceeds 2mb limit.";
                        pn_Result.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    string ext = Path.GetExtension(id_CoverImage2.PostedFile.FileName);
                    if (ext == ".jpg" || ext == ".png" || ext == ".PNG" || ext == ".gif")
                    {
                        fi = Guid.NewGuid() + Path.GetExtension(id_CoverImage2.PostedFile.FileName);
                        string path = Server.MapPath("~/Uploads/") + fi;
                        id_CoverImage2.PostedFile.SaveAs(path);

                    }
                    else
                    {
                        pn_Result.Visible = true;
                        pn_Result.GroupingText = "Only jpg, gif or png file allowed";
                        pn_Result.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                }
                else
                {
                    pn_Result.Visible = true;
                    pn_Result.GroupingText = "Please upload a picture";
                    pn_Result.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                if (id_PromotionalVideo.PostedFile.ContentLength > 0 && id_PromotionalVideo.HasFile)
                {
                    if (id_PromotionalVideo.PostedFile.ContentLength > 334217728)
                    {
                        pn_Result.Visible = true;
                        pn_Result.GroupingText = "File size exceeds 300mb limit";
                        pn_Result.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    vi = Guid.NewGuid() + Path.GetExtension(id_PromotionalVideo.PostedFile.FileName);
                    string path = Server.MapPath("~/Uploads/") + vi;
                    id_PromotionalVideo.PostedFile.SaveAs(path);
                }
                else
                {
                    pn_Result.Visible = true;
                    pn_Result.GroupingText = "Please upload Promotional Video";
                    pn_Result.ForeColor = System.Drawing.Color.Red;
                    return;
                }

                if (id_FileUp.PostedFile.ContentLength > 0 && id_FileUp.HasFile)
                {
                    if (id_FileUp.PostedFile.ContentLength > 334217728)
                    {
                        pn_Result.Visible = true;
                        pn_Result.GroupingText = "File size exceeds 2mb limit";
                        pn_Result.ForeColor = System.Drawing.Color.Red;
                        return;
                    }
                    up = Guid.NewGuid() + Path.GetExtension(id_FileUp.PostedFile.FileName);
                    string path = Server.MapPath("~/Uploads/") + up;
                    id_FileUp.PostedFile.SaveAs(path);
                }
                else
                {
                    pn_Result.Visible = true;
                    pn_Result.GroupingText = "Please upload Your Course File";
                    pn_Result.ForeColor = System.Drawing.Color.Red;
                    return;
                }
                c.con.Open();
                SqlCommand cmd = new SqlCommand(@"INSERT INTO tbl_courseInformation VALUES ('" + id_contentTitle.Value + "','" + id_course_description.Value + "','" + id_lenguage.Value + "','" + id_category.Value + "','" + id_subCategory.Value + "','" + id_Currency.Text + "','" + id_Money.Value + "','" + fi + "','"+ vi +"','" + id_courseContent.Value + "','"+up+"','" + id_Sort.Value + "','" + id_part_description.Value + "','" + id_Volume.Value + "','" + id_Duration.Value + "')", c.con);
                cmd.ExecuteNonQuery();
                c.con.Close();
                clear();
                pn_Result.Visible = true;
                pn_Result.GroupingText = "Data Save Successful!!";
                pn_Result.ForeColor = System.Drawing.Color.DarkGreen;

            }
            catch (Exception ex)
            {
                pn_Result.Visible = true;
                pn_Result.GroupingText = ex.Message;
                pn_Result.ForeColor = System.Drawing.Color.Red;
            }

        }
        private void clear()
        {
            id_contentTitle.Value = "";
            id_course_description.Value = "";
            id_lenguage.Value = "";
            id_subCategory.Value = "";
            id_subCategory.Value = "";
            id_Currency.Text = "";
            id_Money.Value = "";
            id_CoverImage2 = null;
            id_PromotionalVideo = null;
            id_courseContent.Value = "";
            id_FileUp = null;
            id_Sort.Value = "";
            id_part_description.Value = "";
            id_Volume.Value = "";
            id_Duration.Value = "";
        }
    }
}