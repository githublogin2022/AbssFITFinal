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
    public partial class BirthdayMemberList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ds = Common.GetData("Select FirstName + ' ' + LastName As FullName, PhoneNumber from tMember");
            StringBuilder strHTML = new StringBuilder();



            CheckBoxList1.DataTextField = "FullName";
            CheckBoxList1.DataValueField = "PhoneNumber";
            CheckBoxList1.DataSource = ds;
            CheckBoxList1.DataBind();
        }

        [System.Web.Services.WebMethod]
        public static string SubmitData(string Message)
        {
            string msg = "";
            
            return msg;
        }


    }
}