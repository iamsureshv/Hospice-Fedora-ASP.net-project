using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Net.Mail;
using System.Data.SqlClient;

public partial class mailer : System.Web.UI.Page
{
    MailMessage mailmsg;
    SqlConnection con;
    SqlCommand cmd;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            txtToAddress.Text = Request.QueryString["id"];
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        try
        {
            String to = txtToAddress.Text;
            String from = txtFromAddress.Text;
            String cc = txtCCAddress.Text;
            String bcc = txtBCC.Text;
            String subject = txtSubject.Text;
            String body = txtMessage.Text;

            mailmsg = new MailMessage();
            mailmsg.From = new MailAddress(from);
            mailmsg.To.Add(new MailAddress(to));
            if ((cc != null) && (cc != string.Empty))
            {
                mailmsg.CC.Add(new MailAddress(cc));
            }
            if ((bcc != null) && (bcc != string.Empty))
            {
                mailmsg.Bcc.Add(new MailAddress(bcc));
            }
            mailmsg.Subject = subject;
            mailmsg.Body = body;
            if (fileAttachment.HasFile)
            {
                mailmsg.Attachments.Add(new Attachment(fileAttachment.PostedFile.FileName));
            }

            // Set the format of the mail message body as HTML
            mailmsg.IsBodyHtml = true;
            // Set the priority of the mail message to normal
            mailmsg.Priority = MailPriority.Normal;

            SmtpClient smtpclient = new SmtpClient();
            smtpclient.Host = ConfigurationManager.AppSettings["hostname"];
            smtpclient.Send(mailmsg);
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Your mail has been sent..";
        }
    }
}
