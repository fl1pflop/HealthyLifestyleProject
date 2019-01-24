using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;


namespace $safeprojectname$
{
    public partial class HEALTHY_DESERTS_RECEIPES : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {


        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage msg = new MailMessage();
                string name = Name.Text;
                msg.From = new MailAddress("nataliavlasova9@gmail.com");
                msg.To.Add("nataliavlasova9@gmail.com");
                msg.Subject = Subject.Text;
                msg.Body = "Message from " + name + ": " + Message.Text;

                SmtpClient sc = new SmtpClient("smtp.gmail.com");
                sc.Port = 25;
                sc.Credentials =
                new NetworkCredential("nataliavlasova9@gmail.com", "####");
                sc.EnableSsl = true;
                sc.Send(msg);
                Response.Write("Mail Sent");

            }

            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }


    }
}
