using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public static string ActiveCount;
        public static string InactiveCount;
        public static string ExpiryLastWeekCount;
        public static string EnquiryCount;
        public static string BirthDayCount;
        protected void Page_Load(object sender, EventArgs e)
        {
            ActiveCount = Common.GetResultString("select Count(Member_Id) from tMember where Active_Inactive_cd = 1");
            InactiveCount = Common.GetResultString("select Count(Member_Id) from tMember where Active_Inactive_cd = 0");
            EnquiryCount = Common.GetResultString("select Count(*) from tEnquiry"); 
            ExpiryLastWeekCount = Common.GetResultString("select Count(Member_Id) from tMember where ExpirePlanDate between DateAdd(DD,-7,GETDATE() ) and GETDATE()");
            BirthDayCount = Common.GetResultString("select Count(Member_Id) from tMember where BirthDate = GETDATE()");
            DataTable ds = Common.GetData("usp_sel_tbl_AllMember");
            StringBuilder strHTML = new StringBuilder();
        }



        [System.Web.Services.WebMethod]
        public static string PickupConfirm(string ID, string Email, string Name)
        {
            string strBody;
            string today = DateTime.Today.ToString("MM/dd/yyyy");
            string query = "Update tbl_Order set IsPicked = 1, DateofPicked = " + today + " where OrderID = " + Convert.ToInt32(ID);
            Common.ExecuteQuery(query);
            try
            {

                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(Email);
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["SMTPUserName"].ToString());
                mailMessage.Subject = "Order Picked up Successfully...";
                mailMessage.IsBodyHtml = true;
                strBody = "Hi " + Name + ",<br>";
                strBody = strBody + "Your Order has been picked up Successfully and will be deliver before " + Convert.ToDateTime(today).AddDays(3).ToShortDateString();
                mailMessage.Body = strBody;

                SmtpClient smtpClient = new SmtpClient();
                if (ConfigurationManager.AppSettings["SMTPUserName"].ToString() != "")
                {
                    smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SMTPUserName"].ToString(), ConfigurationManager.AppSettings["SMTPPassword"].ToString());
                }
                smtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["SMTPSSL"]);
                smtpClient.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"]);
                smtpClient.Host = Convert.ToString(ConfigurationManager.AppSettings["SMTPServer"]);
                smtpClient.Send(mailMessage);
                return "Pickup E-mail sent!";
            }
            catch (Exception ex)
            {
                return "Could not send the e-mail - error: " + ex.Message;
            }
        }


        [System.Web.Services.WebMethod]
        public static string Ordercompleted(string ID, string Email, string Name)
        {
            string strBody;
            string today = DateTime.Today.ToString("MM/dd/yyyy");
            string query = "Update tbl_Order set IsCompleted = 1, DateofCompletion = " + today + " where OrderID = " + Convert.ToInt32(ID);
            Common.ExecuteQuery(query);
            try
            {

                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(Email);
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["SMTPUserName"].ToString());
                mailMessage.Subject = "Order Delivered Successful";
                mailMessage.IsBodyHtml = true;
                strBody = "Hi " + Name + ",<br>";
                strBody = strBody + "We have delivered your order successfully. Please revert us back with your feedback";
                mailMessage.Body = strBody;

                SmtpClient smtpClient = new SmtpClient();
                if (ConfigurationManager.AppSettings["SMTPUserName"].ToString() != "")
                {
                    smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SMTPUserName"].ToString(), ConfigurationManager.AppSettings["SMTPPassword"].ToString());
                }
                smtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["SMTPSSL"]);
                smtpClient.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"]);
                smtpClient.Host = Convert.ToString(ConfigurationManager.AppSettings["SMTPServer"]);
                smtpClient.Send(mailMessage);
                return "Order Delivered E-mail sent!";
            }
            catch (Exception ex)
            {
                return "Could not send the e-mail - error: " + ex.Message;
            }
        }
    }
}