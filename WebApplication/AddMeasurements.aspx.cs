using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
	public partial class AddMeasurements : System.Web.UI.Page
	{
        public int dueamountcalc = 0;
		protected void Page_Load(object sender, EventArgs e)
		{
            MemberId.Text = Session["MemberId"].ToString();

        }

		[System.Web.Services.WebMethod]
        public static string AddMeasurement(string MemberId, string MeasurementDate, string Neck,string Arm,string Chest,string Abdomen,string Waist,string Hip,string Thigh,string Calf)
        {
            string msg = "";
            try
            {

                string LoginQry = "usp_ins_tbl_tMeasurement" + " '" + MemberId + "','" + MeasurementDate + "','" + Neck + "','" + Arm + "','" + Chest + "','" + Abdomen + "','" + Waist + "','" + Hip + "','" + Thigh + "','" + Calf + "'";
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