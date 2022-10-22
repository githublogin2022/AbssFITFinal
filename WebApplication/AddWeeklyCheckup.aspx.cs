using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class AddWeeklyCheckup : System.Web.UI.Page
	{
        public int dueamountcalc = 0;
		protected void Page_Load(object sender, EventArgs e)
		{
            MemberId.Text = Session["MemberId"].ToString();

        }

		[System.Web.Services.WebMethod]
        public static string AddWeeklyDetails(string MemberId, string CheckUpDate, string MemberWeight, string VF, string TSF, string TF, string MA, string BMI, string BMR, string SM)
        {
            string msg = "";
            try
            {

                string LoginQry = "usp_ins_tbl_tWeeklyCheckup" + " '" + MemberId + "','" + CheckUpDate + "','" + MemberWeight + "','" + VF + "','" + TSF + "','" + TF + "','" + MA + "','" + BMI + "','" + BMR + "','" + SM + "'";
                Common.ExecuteQuery(LoginQry);
                msg = "Member Added";
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