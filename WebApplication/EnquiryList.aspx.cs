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
    public partial class EnquiryList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable ds = Common.GetData("usp_sel_tbl_tEnquiry");
            StringBuilder strHTML = new StringBuilder();

            EnquiryListGridView.DataSource = ds;
            EnquiryListGridView.DataBind();
        }

        protected void EnquiryListGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            DataTable ds = Common.GetData("usp_sel_tbl_tEnquiry");
            EnquiryListGridView.PageIndex = e.NewPageIndex;
            EnquiryListGridView.DataSource = ds;
            EnquiryListGridView.DataBind();
        }
    }
}