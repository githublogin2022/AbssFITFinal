using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class AddInvoice : System.Web.UI.Page
	{
        public int dueamountcalc = 0;
        public static string DietPlanID;
        public static string PaymentMode_ID;
        public static string PrevPlanAmount;
        public static string PrevDiscountAmount;
        public static string PrevDueAmount;
        public static string CurrentDueAmount;
		protected void Page_Load(object sender, EventArgs e)
		{
            MemberId.Text = Session["MemberId"].ToString();
            DietPlanID = Session["DietPlanId"].ToString();
            PaymentMode_ID = Session["PaymentId"].ToString();
            PrevPlanAmount= Session["PrevPlanAmount"].ToString();
            PrevDiscountAmount = Session["PrevDiscountAmount"].ToString();
            PrevDueAmount = Session["PrevDueAmount"].ToString();
    }

		[System.Web.Services.WebMethod]
        public static string AddInvoiceData(string MemberId, string InvoiceDate, string PaidAmount)
        {
            string msg = "";
            try
            {
                CurrentDueAmount = (Convert.ToInt32(PrevDueAmount) - Convert.ToInt32(PaidAmount)).ToString();
                if (Convert.ToInt32(CurrentDueAmount) >= 0)
                {
                    string LoginQry = "usp_ins_tbl_Invoice" + " '" + MemberId + "','" + DietPlanID + "','" + PaymentMode_ID + "','" + PrevPlanAmount + "','" + PrevDiscountAmount + "','" + PaidAmount + "','" + CurrentDueAmount + "','" + InvoiceDate + "'";
                    Common.ExecuteQuery(LoginQry);
                    msg = "Member Added";
                }
                else
                {
                    msg = "401";
                }
            }
            catch(Exception ex)
            {
                msg = ex.ToString();
            }
            return msg;
		}

        protected void cancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("MemberDetails.aspx");
        }
    }
}