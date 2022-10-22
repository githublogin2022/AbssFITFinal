using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class Login : System.Web.UI.Page
	{
        public static bool IsAdmin;
        public static int LoginID;
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		[System.Web.Services.WebMethod]
		public static string LoginIN(string UserName, string Password)
		{
			string msg;
			string LoginQry = "usp_sel_tbl_MemberLogin" + " '" + Convert.ToInt32(UserName) + "','" + Password + "'";
           
            string result = Common.GetResultString(LoginQry);

            if (result == "1")
            {
               
                IsAdmin = Convert.ToBoolean(Common.GetResultString("select IsAdmin from tLogin Where Member_ID = " + Convert.ToInt32(UserName)));
                HttpContext.Current.Session["IsAdmin"] = IsAdmin;
                if(IsAdmin)
                {
                    msg = "Dashboard.aspx";
                }
                else
                {
                    msg = "MemberDetails.aspx?MemberId=" + UserName;
                }
            }
            else
                msg = "Login Failed";
			return msg;
		}
	}
}