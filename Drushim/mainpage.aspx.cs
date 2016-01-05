using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;


namespace Drushim
{
    public partial class mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void send_mail(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient smtpServer = new SmtpClient("smtp.gmail.com");
                String mailtext = "שלום " + UserName.Text + "\n" +
                    "תודה על הרשמתך!" + "\n" +
                    "אנו עושים מאמצים רבים להשיק את האתר במהירות ובאיכות" + "\n" +
                    "נעדכן אותך ברגע שהאתר יעלה לאוויר" + "\n" + "\n" +
                    "תודה," + "\n" +
                    "IEMjobs";


                //String  to = subs.Text;
                mail.From = new MailAddress("donotreplyIEMjobs@gmail.com");
                mail.To.Add("simabelker@gmail.com");
                mail.Subject = "הרשמתך התקבלה במערכת IEMjobs";
                mail.Body = mailtext;

                smtpServer.Port = 587;
                smtpServer.Credentials = new System.Net.NetworkCredential("donotreplyIEMjobs@gmail.com", "IEMjobsadmin");
                smtpServer.EnableSsl = true;
                smtpServer.Send(mail);

                Button clickedButton = (Button)sender;
                UserName.Text = "";
                email_Add.Text = "";
            }

            catch (Exception ex)
            {
                Button clickedButton = (Button)sender;
                sub_message.ForeColor = System.Drawing.Color.Red; ;
                sub_message.Text = "אירעה שגיאה, אנא נסה מאוחר יותר";
                
            }
        }
    }
}