using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class ContactUs : System.Web.UI.Page
	{
        public int dueamountcalc = 0;
		protected void Page_Load(object sender, EventArgs e)
		{
            //MemberId.Text = Session["MemberId"].ToString();

        }

		[System.Web.Services.WebMethod]
        public static string AddEnquiry(string FirstName, string LastName, string Email,string PhoneNumber,string Address,string AlternativeNumber,string EnquiryDate, string Description)
        {
            string msg = "";
            try
            {

                string LoginQry = "usp_ins_tbl_tEnquiry" + " '" + FirstName + "','" + LastName + "','" + Email + "','" + PhoneNumber + "','" + Address + "','" + AlternativeNumber + "','" + EnquiryDate + "','" + Description + "'";
                Common.ExecuteQuery(LoginQry);
                msg = "Member Added";
            }
            catch(Exception ex)
            {
                msg = ex.ToString();
            }
            return msg;
		}
    }
}