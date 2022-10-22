using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class MemberRegistration : System.Web.UI.Page
	{
        public int dueamountcalc = 0;
		protected void Page_Load(object sender, EventArgs e)
		{
            if(!IsPostBack)
            {
                
            }
		}
        


        [System.Web.Services.WebMethod]
        public static string SubmitData(string FirstName,string LastName,string PhoneNumber,string Email,string Address,string Gender,string BirhtDate,string StartDate,string EndDate,string PaymentMode,string DietPlan, string IsDietPlanShared,string IsCheckupDone,string MemberHeight,string MemberWeight, string PlanAmount, string DiscountAmount, string PaidAmount, string DueAmount, string ChequeNumber, string AccountNumber , string BankName, string MemberPassword)
        {
            string msg = "";
            try
            {
                int ActiveInactive = 1;
                if (PaymentMode == "2")
                {
                    string LoginQry = "usp_ins_tbl_Member" + " '" + FirstName + "','" + LastName + "','" + PhoneNumber + "','" + Email + "','" + Address + "','" + Gender + "','" + BirhtDate + "','" + StartDate + "','" + Convert.ToDateTime(EndDate).ToString("yyyy-MM-dd") + "','" + DietPlan + "','" + PaymentMode + "','" + ActiveInactive + "','" + IsDietPlanShared + "','" + IsCheckupDone + "','" + MemberHeight + "','" + MemberWeight + "'";
                    string InvoiceQry = "usp_ins_tbl_invoice" + " 0," + " '" + DietPlan + "','" + PaymentMode + "','" + PlanAmount + "','" + DiscountAmount + "','" + PaidAmount + "','" + DueAmount + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
                    string LoginTableQry = "usp_ins_tbl_Login" + " '" + MemberPassword + "'";
                    string ChequeQry = "usp_ins_tbl_ChequeDetails " + " '" + ChequeNumber + "','" + AccountNumber + "','" + BankName + "'";
                    Common.ExecuteQueryWithTransaction(LoginQry, InvoiceQry, ChequeQry,LoginTableQry);
                }
                else
                {
                    string LoginQry = "usp_ins_tbl_Member" + " '" + FirstName + "','" + LastName + "','" + PhoneNumber + "','" + Email + "','" + Address + "','" + Gender + "','" + BirhtDate + "','" + StartDate + "','" + Convert.ToDateTime(EndDate).ToString("yyyy-MM-dd") + "','" + DietPlan + "','" + PaymentMode + "','" + ActiveInactive + "','" + IsDietPlanShared + "','" + IsCheckupDone + "','" + MemberHeight + "','" + MemberWeight + "'";
                    string InvoiceQry = "usp_ins_tbl_invoice" + " 0," + " '" + DietPlan + "','" + PaymentMode + "','" + PlanAmount + "','" + DiscountAmount + "','" + PaidAmount + "','" + DueAmount + "','" + DateTime.Now.ToString("yyyy-MM-dd") + "'";
                    string LoginTableQry = "usp_ins_tbl_Login" + " '" + MemberPassword + "'";
                    Common.ExecuteQueryWithTransaction(LoginQry,InvoiceQry,"",LoginTableQry);
                }
                msg = "Member Added";
                
            }
            catch(Exception ex)
            {
                msg = ex.ToString();
            }
            return msg;
		}
     
        [System.Web.Services.WebMethod]
        public static string GetDietPlanValue(string DietPlanValue)
        {
            string LoginQry = "usp_sel_tbl_DietPlan " + Convert.ToInt32(DietPlanValue);
            string result = Common.GetResultString(LoginQry);
            return result;
        }

        [System.Web.Services.WebMethod]
        public static string GetEndDateValue(string StartDateValue,string DietPlanValue)
        {
            string EndDateValue = "";
            if (DietPlanValue == "1")
            {
                EndDateValue = Convert.ToDateTime(StartDateValue).ToShortDateString();
            }
            if (DietPlanValue == "2")
            {
                EndDateValue = Convert.ToDateTime(StartDateValue).AddDays(42).ToShortDateString();
            }

            else if (DietPlanValue == "3")
            {
                EndDateValue = Convert.ToDateTime(StartDateValue).AddMonths(3).ToShortDateString();
            }

            else if (DietPlanValue == "4")
            {
                EndDateValue = Convert.ToDateTime(StartDateValue).AddMonths(6).ToShortDateString();
            }

            else if (DietPlanValue == "5")
            {
                EndDateValue = Convert.ToDateTime(StartDateValue).AddMonths(12).ToShortDateString();
            }
            return EndDateValue;
        }


        [System.Web.Services.WebMethod]
        public static string SendPassword(string MemberPassword, string EmailAddress, string FirstName)
        {
            string strBody;
            string today = DateTime.Today.ToString("MM/dd/yyyy");
            try
            {
                
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(EmailAddress);
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["SMTPUserName"].ToString());
                mailMessage.Subject = "ABSFIT - Password";
                mailMessage.IsBodyHtml = true;
                strBody = "Hi " + FirstName + ",<br><br>";
                strBody = strBody + "Please find your password for login into ABSFIT<br><b>" + MemberPassword + "</b><br><br>";
                strBody = strBody + "From,<br>ABSFIT";
                mailMessage.Body = strBody;

                SmtpClient smtpClient = new SmtpClient();
                smtpClient.UseDefaultCredentials = false;
                if (ConfigurationManager.AppSettings["SMTPUserName"].ToString() != "")
                {
                    smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SMTPUserName"].ToString(), ConfigurationManager.AppSettings["SMTPPassword"].ToString());
                }
                smtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["SMTPSSL"]);
                smtpClient.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"]);
                smtpClient.Host = Convert.ToString(ConfigurationManager.AppSettings["SMTPServer"]);

                smtpClient.Send(mailMessage);
                return "E-mail sent!";
            }
            catch (Exception ex)
            {
                return "Could not send the e-mail - error: " + ex.Message;
            }
        }

    }
}