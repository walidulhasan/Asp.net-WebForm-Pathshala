using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace pathshala
{
    public partial class feedback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSendFeedback_Click(object sender, EventArgs e)
        {
            
            if (IsValid == mailPage.Visible)
            {

                try
                {
                    MailMessage mm = new MailMessage("tambazz@gmail.com", id_email.Text);
                    if (FileUpload1.HasFile)
                    {
                        Attachment attach = new Attachment(FileUpload1.PostedFile.InputStream, FileUpload1.PostedFile.FileName);

                        mm.Attachments.Add(attach);
                    }
                    mm.Subject = id_subject.Text;
                    mm.Body = id_about.Text;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    System.Net.NetworkCredential nc = new NetworkCredential("tambazz.com@gmail.com", "hrfdahacwaaakfoj");
                    smtp.Credentials = nc;
                    smtp.EnableSsl = true;
                    smtp.Send(mm);
                    result.Visible = true;
                    result.Value = "Email Send Successful";
                    id_about.Text = "";
                    id_email.Text = "";
                    id_subject.Text = "";
                    id_email.Focus();
                }
                catch (Exception ex)
                {
                    var a = ex.Message;
                    if (a.Length > 1)
                    {
                        result.Value = a;

                    }
                    else
                    {
                        result.Value = "Email Send Successful";
                        //Label1.ForeColor = System.Drawing.Color.ForestGreen;
                    }
                }
            }
        }
    }
}