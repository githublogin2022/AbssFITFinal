using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class ChangePassword : System.Web.UI.Page
	{

		protected void Page_Load(object sender, EventArgs e)
		{
            
        }

		[System.Web.Services.WebMethod]
        public static string ChangeUserPassword(string MemberId, string NewPassword)
        {
            string msg = "";
            try
            {
                    string LoginQry = "usp_upd_tbl_login" + " '" + MemberId + "','" + NewPassword + "'";
                    Common.ExecuteQuery(LoginQry);
                    msg = "Password Change";
            }
            catch(Exception ex)
            {
                msg = ex.ToString();
            }
            return msg;
		}

        [System.Web.Services.WebMethod]
        public static string GetUserName(string MemberId)
        {
            string msg = "";
            try
            {
                string LoginQry = "select FirstName + ' ' + LastName as FullName from tMember where Member_ID =  " + MemberId ;
                string result = Common.GetResultString(LoginQry);
                if(String.IsNullOrEmpty(result))
                {
                    msg = "NoMember";
                }
                else
                {
                    msg = result;
                }
            }
            catch (Exception ex)
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