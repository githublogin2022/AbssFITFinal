using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class MemberDetails : System.Web.UI.Page
    {
        int i = 0;
        public string MemberId;
        public static string DietPlan;
        public static string Address = "";
        public static string StartDate = "";
        public static string ExpiryDate = "";
        public static string EMailID;
        public static string DietPlanID;
        public static string PaymentMode_ID;
        public bool IsDietPlan;
        public bool IsWeeklyCheckup;
        public static string FullName;
        public static bool IsAdmin;
        public static string IsActive;
        public static string isLossOrGain = "Loss";
        public string editstartdate = "";

        protected void Page_Load(object sender, EventArgs e)
		{
            if (Request.QueryString["MemberId"] != null && Request.QueryString["MemberId"] != string.Empty)
                MemberId = Request.QueryString["MemberId"];
            if (!IsPostBack)
            {
                IsAdmin = Convert.ToBoolean(Session["IsAdmin"]);
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
                MeasurementGridView.DataSource = GetMeasurements();
                MeasurementGridView.DataBind();
                WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
                WeeklyCheckupGridView.DataBind();
                InvoiceGridView.DataSource = GetInvoiceDetails();
                InvoiceGridView.DataBind();
                BindMemberInformation();

            }
            MemberHead();
            IsWeeklyCheckup = Convert.ToBoolean(Common.GetResultString("select IsWeeklyCheckup from tMember where Member_Id =" + Convert.ToInt32(MemberId)));
            IsDietPlan = Convert.ToBoolean(Common.GetResultString("select IsDietPlan from tMember where Member_Id =" + Convert.ToInt32(MemberId)));
            DisableWeeklyCheckupButtons();
            DisableEmailTabForNonAdmin();
            DisableMeasurementsButtons();
            DisableAddInvoice();
            
            MemberList.Visible = IsAdmin;
            Dashboard.Visible = IsAdmin;
            Logout.Visible = !IsAdmin;
        }

        public DataTable GetInvoiceDetails()
        {
            DataTable GetInvoice = null;
            try
            {
                GetInvoice = Common.GetData("usp_sel_tbl_tInvoice " + Convert.ToInt32(MemberId));
            }
            catch (Exception ex)
            {

            }
            return GetInvoice;
        }
        public DataTable GetWeeklyCheckUp()
        {
            DataTable GetWeeklyCheckUp = null;
            try
            {
                GetWeeklyCheckUp = Common.GetData("usp_sel_tbl_tWeeklyCheckup " + Convert.ToInt32(MemberId));
            }
            catch (Exception ex)
            {

            }
            return GetWeeklyCheckUp;
        }
        public DataTable GetMeasurements()
        {
            DataTable GetMeasurements = null;
            try
            {
                GetMeasurements = Common.GetData("usp_sel_tbl_tMeasurement " + Convert.ToInt32(MemberId));
            }
            catch (Exception ex)
            {

            }
            return GetMeasurements;
        }
        protected void AddMeasurements(object sender, EventArgs e)
        {
            try
            {
                Session["MemberId"] = MemberId;
                Response.Redirect("AddMeasurements.aspx");
            }
            catch (Exception ex)
            {

            }
        }
        protected void AddWeeklyCheckup(object sender, EventArgs e)
        {
            try
            {
                Session["MemberId"] = MemberId;
                Response.Redirect("AddWeeklyCheckup.aspx");
            }
            catch (Exception ex)
            {

            }
        }

        protected void AddInvoice(object sender, EventArgs e)   
        {
            try
            {
                Session["PrevPlanAmount"] = InvoiceGridView.Rows[InvoiceGridView.Rows.Count - 1].Cells[2].Text;
                Session["PrevDiscountAmount"] = InvoiceGridView.Rows[InvoiceGridView.Rows.Count - 1].Cells[3].Text;
                Session["PrevDueAmount"] = InvoiceGridView.Rows[InvoiceGridView.Rows.Count - 1].Cells[5].Text;
                Session["MemberId"] = MemberId;
                Session["DietPlanId"] = DietPlanID;
                Session["PaymentId"] = PaymentMode_ID;
                Response.Redirect("AddInvoice.aspx");
            }
            catch (Exception ex)
            {

            }
        }

        protected void RefreshMeasurements(object sender, EventArgs e)
        {
            try
            {
                MeasurementGridView.DataSource = GetMeasurements();
                MeasurementGridView.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
        protected void RefreshWeeklyCheckup(object sender, EventArgs e)
        {
            try
            {
                
                WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
                WeeklyCheckupGridView.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
        protected void RefreshInvoice(object sender, EventArgs e)
        {
            try
            {

                InvoiceGridView.DataSource = GetInvoiceDetails();
                InvoiceGridView.DataBind();
            }
            catch (Exception ex)
            {

            }
        }
        protected void test(object sender, EventArgs e)
        {
            string pdfpath = Server.MapPath("~/assets/pdf/ABSFIT_Invoice.pdf");
            var absinvoice = PDFHelper.GetFormFieldNames(pdfpath);
            try
            {
                string fileName = "ABSFIT_Invoice.pdf";
                FileInfo f = new FileInfo(fileName);
                string fullname = f.Name;

                var closeLink = (Control)sender;
                GridViewRow row = (GridViewRow)closeLink.NamingContainer;
                
                absinvoice["name"] = FullName;
                absinvoice["address"] = Address;
                absinvoice["email"] = EMailID;
                absinvoice["member_id"] = MemberId;
                absinvoice["program"] = DietPlan;
                absinvoice["start_date"] = Convert.ToDateTime(StartDate).ToString("dd-MM-yyyy");
                absinvoice["expiry_date"] = Convert.ToDateTime(ExpiryDate).ToString("dd-MM-yyyy");
                absinvoice["invoice_date"] = row.Cells[0].Text;
                absinvoice["invoice_number"] = row.Cells[1].Text;
                absinvoice["amount"] = row.Cells[2].Text;
                absinvoice["final_amount"] = row.Cells[3].Text;
                absinvoice["paid_amount"] = row.Cells[4].Text;
                absinvoice["due_amount"] = row.Cells[5].Text;
                byte[] pdfcontent = PDFHelper.GeneratePDF(pdfpath, absinvoice);
                PDFHelper.ReturnPDF(pdfcontent);
            }
            catch (Exception ex)
            {

            }
        }

        public void MemberHead()
        {
            DataSet ds = Common.GetDataSet("usp_sel_tbl_tMemberData " + Convert.ToInt32(MemberId));
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                FullName = ds.Tables[0].Rows[i]["FullName"].ToString();
                DietPlan = ds.Tables[0].Rows[i]["Plan_Desc"].ToString();
                IsActive = ds.Tables[0].Rows[i]["AIE_Desc"].ToString();
            }
            Label1.Text = FullName;
            Label2.Text = DietPlan;
        }
        
        public string MemberData()
        {
            decimal FatLossBy = 0;
            DataSet ds = Common.GetDataSet("usp_sel_tbl_tMemberData " + Convert.ToInt32(MemberId));
            string FirstWeight = Common.GetResultString("select top 1 Member_weight As FirstWeight from tWeeklyCheckup where Member_Id =" + Convert.ToInt32(MemberId) + "order by CheckUP_Date asc");
            string LastWeight = Common.GetResultString("select top 1  Member_weight As LastWeight from tWeeklyCheckup where Member_Id =" + Convert.ToInt32(MemberId) + "order by CheckUP_Date desc");
            StringBuilder strHTML = new StringBuilder();
            if (!String.IsNullOrEmpty(FirstWeight) || !String.IsNullOrEmpty(LastWeight))
            {
                FatLossBy = Convert.ToDecimal(FirstWeight) - Convert.ToDecimal(LastWeight);
                if(FatLossBy < 0)
                {
                    isLossOrGain = "Gain";
                }
                FatLossBy = Math.Abs(FatLossBy);
            }
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                DietPlanID = ds.Tables[0].Rows[i]["DietPlan_ID"].ToString();
                PaymentMode_ID = ds.Tables[0].Rows[i]["PaymentMode_ID"].ToString();
                
                strHTML.Append("<tr style='background-color:lemonchiffon; color: black; '>");
                strHTML.Append("<td>" + ds.Tables[0].Rows[i]["Age"].ToString() + " </td>");
                strHTML.Append("<td>" + ds.Tables[0].Rows[i]["Gender_Desc"].ToString() + " </td>");
                strHTML.Append("<td>" + ds.Tables[0].Rows[i]["Member_weight_during_reg"].ToString() + " </td>");
                strHTML.Append("<td>" + ds.Tables[0].Rows[i]["Member_height_during_reg"].ToString() + " </td>");
                strHTML.Append("<td>" + FatLossBy.ToString() + " </td>");
                strHTML.Append("<td>" + ds.Tables[0].Rows[i]["AIE_Desc"].ToString() + " </td>");
                strHTML.Append("</tr>");
            }
            
            return strHTML.ToString();
        }

        public void BindMemberInformation()
        {
            // DataSet ds = Common.GetDataSet("usp_sel_tbl_Order");
            StringBuilder strHTML = new StringBuilder();
            DataSet ds = Common.GetDataSet("usp_sel_tbl_tMemberInformation " + Convert.ToInt32(MemberId));
            EMailID = ds.Tables[0].Rows[i]["EmailAddress"].ToString();
            Address = ds.Tables[0].Rows[i]["Address"].ToString();
            StartDate = ds.Tables[0].Rows[i]["StartPlanDate"].ToString();
            ExpiryDate = ds.Tables[0].Rows[i]["ExpirePlanDate"].ToString();
            
            dl1.DataSource = ds.Tables[0];
            dl1.DataBind();
        }

        //Member Information

       

       
        protected void dl1_EditCommand(object sender, DataListCommandEventArgs e)
        {
            
            dl1.EditItemIndex = e.Item.ItemIndex;
            
            BindMemberInformation();
            

        }
        

        protected void dl1_CancelCommand(object sender, DataListCommandEventArgs e)
        {
            dl1.EditItemIndex = -1;
            BindMemberInformation();
        }
        protected void dl1_updateCommand(object sender, DataListCommandEventArgs e)
        {
            try
            {
                DateTime startdate = new DateTime();
                DateTime enddate = new DateTime();
                int index = e.Item.ItemIndex;
                string updatememinfo;
                
                string ph = ((TextBox)dl1.Items[index].FindControl("txtphonenumber")).Text;
                string email = ((TextBox)dl1.Items[index].FindControl("txtemail")).Text;
                string address = ((TextBox)dl1.Items[index].FindControl("txtaddress")).Text;
                int DietPlanid = ((DropDownList)dl1.Items[index].FindControl("ddlPlan")).SelectedIndex;


                if (!String.IsNullOrEmpty(((TextBox)dl1.Items[index].FindControl("txtstartdate")).Text))
                {
                   startdate = Convert.ToDateTime(((TextBox)dl1.Items[index].FindControl("txtstartdate")).Text);
                }
                if (!String.IsNullOrEmpty(((TextBox)dl1.Items[index].FindControl("txtexpirydate")).Text))
                {
                    enddate = Convert.ToDateTime(((TextBox)dl1.Items[index].FindControl("txtexpirydate")).Text);
                }
                bool IsActive = ((DropDownList)dl1.Items[index].FindControl("ddlactive")).Text == "Active" ? true : false;
                bool IsDietPlanShared = ((DropDownList)dl1.Items[index].FindControl("ddlIsDietPlanShared")).SelectedValue == "1" ? true : false;
                bool IsWeeklyCheckup = ((DropDownList)dl1.Items[index].FindControl("ddlIsWeeklyCheckup")).SelectedValue == "1" ? true : false;
                updatememinfo = "usp_upd_tbl_Member " + MemberId + ", '" + ph + "','" + email + "','" + address + "','" + startdate.ToString("yyyyMMdd") + "','" + enddate.ToString("yyyyMMdd") + "','" + IsActive + "','" + DietPlanid + "','" + IsDietPlanShared + "','" + IsWeeklyCheckup + "'";
                Common.ExecuteQuery(updatememinfo);
                dl1.EditItemIndex = -1;
                BindMemberInformation();
                
            }
            catch(Exception ex)
            {

            }

        }
    

        //End Member Information

        public void GetinvoiceData()
        {
            DataTable GetInvoice = null;
            string InvoiceData = "";
            try
            {
                GetInvoice = Common.GetData("usp_sel_tbl_tInvoiceData 1001");
                InvoiceData = Convert.ToString(GetInvoice.Rows[0]["Invoice"]);
                byte[] bytes = Convert.FromBase64String(InvoiceData);
                Session["binaryData"] = bytes;
            }
            catch (Exception e)
            {

            }

        }
        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }

        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;
        }

        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            MainView.ActiveViewIndex = 4;
        }


        #region DisableGridButtons
        protected void DisableEmailTabForNonAdmin()
        {

            if (!IsAdmin)
            {
                Tab5.Visible = false;
            }

        }
        protected void DisableWeeklyCheckupButtons()
        {
            
            if (!IsAdmin)
            {
                WeeklyCheckupGridView.Columns[9].Visible = false;
                WeeklyCheckupGridView.Columns[10].Visible = false;
                AddWeeklyCheckupButton.Visible = false;
            }
            if(IsActive == "Inactive")
            {
                AddWeeklyCheckupButton.Enabled = false;
            }

        }
        protected void DisableMeasurementsButtons()
        {

            if (!IsAdmin)
            {
                MeasurementGridView.Columns[9].Visible = false;
                MeasurementGridView.Columns[10].Visible = false;
                AddMeasurementButton.Visible = false;
            }
            if (IsActive == "Inactive")
            {
                AddMeasurementButton.Enabled = false;
            }

        }
        protected void DisableAddInvoice()
        {
            if (!IsAdmin)
            {
                AddInvoiceButton.Visible = false;
            }
            if (Convert.ToInt32(InvoiceGridView.Rows[InvoiceGridView.Rows.Count - 1].Cells[5].Text) <=0)
            {
                AddInvoiceButton.Enabled = false;
            }
            if (IsActive == "Inactive")
            {
                AddInvoiceButton.Enabled = false;
            }
        }
        protected void dl1_ItemDataBound(object sender, DataListItemEventArgs e)
        {

            if (e.Item.ItemType == ListItemType.EditItem)
            {
                DropDownList ddlStatus = (DropDownList)e.Item.FindControl("ddlPlan");
                DropDownList ddlActive = (DropDownList)e.Item.FindControl("ddlActive");
                DropDownList ddlIsWeeklyCheckup = (DropDownList)e.Item.FindControl("ddlIsWeeklyCheckup");
                DropDownList ddlIsDietPlanShared = (DropDownList)e.Item.FindControl("ddlIsDietPlanShared");
                ddlActive.SelectedValue = IsActive;
                ddlStatus.SelectedValue = DietPlanID;
                ddlIsDietPlanShared.SelectedValue = IsDietPlan == true ? "1" : "0";
                ddlIsWeeklyCheckup.SelectedValue = IsWeeklyCheckup == true ? "1" : "0";
            }
            if ((e.Item.ItemType == ListItemType.Item) || (e.Item.ItemType == ListItemType.AlternatingItem))
            {
                DataRow dr = ((DataRowView)e.Item.DataItem).Row;
                if (!IsAdmin)
                {
                    ((Button)e.Item.FindControl("btn1")).Visible = false;
                }
            }
          }
        #endregion
            #region GridButtons
        protected void WeeklyCheckupGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            WeeklyCheckupGridView.EditIndex = e.NewEditIndex;
            WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
            WeeklyCheckupGridView.DataBind();
        }
        protected void WeeklyCheckupGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            WeeklyCheckupGridView.EditIndex = -1;
            WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
            WeeklyCheckupGridView.DataBind();
        }
        protected void WeeklyCheckupGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)WeeklyCheckupGridView.Rows[e.RowIndex];
            DateTime Checkupdate = Convert.ToDateTime(row.Cells[0].Text);
            Common.ExecuteQuery("delete FROM tWeeklyCheckup where Member_Id = "+ Convert.ToInt32(MemberId)+ " AND CheckUP_Date ='" + Checkupdate.ToString("yyyy-MM-dd") + "'");
            WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
            WeeklyCheckupGridView.DataBind();
        }

        protected void WeeklyCheckupGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow row = WeeklyCheckupGridView.Rows[e.RowIndex];
            row.Cells[0].Enabled = false;
            
            string[] date = row.Cells[0].Text.Split('-');
            string Checkupdate = "";
            Checkupdate= date[2] + "-" + date[1]+"-" + date[0];


            string updatequery = "update tWeeklyCheckup set Member_weight= " + Convert.ToDecimal(e.NewValues["Member_weight"]) + ", VF=" + Convert.ToDecimal(e.NewValues["VF"]) + ", TSF=" + Convert.ToDecimal(e.NewValues["TSF"]) + ", TF =" + Convert.ToDecimal(e.NewValues["TF"]) + ", MA=" + Convert.ToDecimal(e.NewValues["MA"]) + ", BMI=" + Convert.ToDecimal(e.NewValues["BMI"]) + ", SM=" + Convert.ToDecimal(e.NewValues["SM"]) + ", BMR=" + Convert.ToDecimal(e.NewValues["BMR"]) + " where Member_Id = " + Convert.ToInt32(MemberId) + "  AND CheckUP_Date = '" + Checkupdate + "'";

            Common.ExecuteQuery(updatequery);
            WeeklyCheckupGridView.EditIndex = -1;
            WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
            WeeklyCheckupGridView.DataBind();
        }

        protected void InvoiceGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            InvoiceGridView.EditIndex = e.NewEditIndex;
            InvoiceGridView.DataSource = GetInvoiceDetails();
            InvoiceGridView.DataBind();
        }
        protected void InvoiceGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            InvoiceGridView.EditIndex = -1;
            InvoiceGridView.DataSource = GetInvoiceDetails();
            InvoiceGridView.DataBind();
        }
        protected void InvoiceGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)InvoiceGridView.Rows[e.RowIndex];
            DateTime Checkupdate = Convert.ToDateTime(row.Cells[0].Text);
            Common.ExecuteQuery("delete FROM tInvoice where Member_Id = " + Convert.ToInt32(MemberId) + " AND CheckUP_Date ='" + Checkupdate.ToString("yyyy-MM-dd") + "'");
            InvoiceGridView.DataSource = GetInvoiceDetails();
            InvoiceGridView.DataBind();
        }

        protected void InvoiceGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow row = InvoiceGridView.Rows[e.RowIndex];
            row.Cells[0].Enabled = false;
            DateTime Checkupdate = Convert.ToDateTime(row.Cells[0].Text);


            string updatequery = "update tInvoice set Member_weight = " + Convert.ToDecimal(e.NewValues["Member_weight"]) + ", VF =" + Convert.ToDecimal(e.NewValues["VF"]) + ", TSF =" + Convert.ToDecimal(e.NewValues["TSF"]) + ", TF =" + Convert.ToDecimal(e.NewValues["TF"]) + ", MA =" + Convert.ToDecimal(e.NewValues["MA"]) + ", BMI =" + Convert.ToDecimal(e.NewValues["BMI"]) + ", SM =" + Convert.ToDecimal(e.NewValues["SM"]) + ", BMR =" + Convert.ToDecimal(e.NewValues["BMR"]) + "where Member_Id = " + Convert.ToInt32(MemberId) + "  AND CheckUP_Date = '" + Checkupdate.ToString("yyyy-MM-dd") + "'";

            Common.ExecuteQuery(updatequery);
            InvoiceGridView.EditIndex = -1;
            InvoiceGridView.DataSource = GetInvoiceDetails();
            InvoiceGridView.DataBind();
        }


        protected void MeasurementGridView_RowEditing(object sender, GridViewEditEventArgs e)
        {
            MeasurementGridView.EditIndex = e.NewEditIndex;
            MeasurementGridView.DataSource = GetMeasurements();
            MeasurementGridView.DataBind();
        }
        protected void MeasurementGridView_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            MeasurementGridView.EditIndex = -1;
            MeasurementGridView.DataSource = GetMeasurements();
            MeasurementGridView.DataBind();
        }
        protected void MeasurementGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)MeasurementGridView.Rows[e.RowIndex];
            DateTime Measurementdate = Convert.ToDateTime(row.Cells[0].Text);
            Common.ExecuteQuery("delete FROM tMeasurement where Member_Id = " + Convert.ToInt32(MemberId) + " AND Measurement_Date ='" + Measurementdate.ToString("yyyy-MM-dd") + "'");
            MeasurementGridView.DataSource = GetMeasurements();
            MeasurementGridView.DataBind();
        }

        protected void MeasurementGridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            GridViewRow row = MeasurementGridView.Rows[e.RowIndex];
            row.Cells[0].Enabled = false;
            string[] date = row.Cells[0].Text.Split('-');
            string Measurementdate = "";
            Measurementdate = date[2] + "-" + date[1] + "-" + date[0];


            //string updatequery = "update tMeasurement set Member_weight = " + Convert.ToDecimal(row.Cells[1].Text) + ", VF =" + Convert.ToDecimal(row.Cells[2].Text) + ", TSF =" + Convert.ToDecimal(row.Cells[3].Text) + ", TF =" + Convert.ToDecimal(row.Cells[4].Text) + ", MA =" + Convert.ToDecimal(row.Cells[5].Text) + ", BMI =" + Convert.ToDecimal(row.Cells[6].Text) + ", SM =" + Convert.ToDecimal(row.Cells[7].Text) + ", BMR =" + Convert.ToDecimal(row.Cells[8].Text);
            string updatequery = "update tMeasurement set Neck = " + Convert.ToDecimal(e.NewValues["Neck"]) + ", Arm =" + Convert.ToDecimal(e.NewValues["Arm"]) + ", Chest =" + Convert.ToDecimal(e.NewValues["Chest"]) + ", Abdomen =" + Convert.ToDecimal(e.NewValues["Abdomen"]) + ", Waist =" + Convert.ToDecimal(e.NewValues["Waist"]) + ", Hip =" + Convert.ToDecimal(e.NewValues["Hip"]) + ", Thigh =" + Convert.ToDecimal(e.NewValues["Thigh"]) + ", Calf =" + Convert.ToDecimal(e.NewValues["Calf"]) + "where Member_Id = " + Convert.ToInt32(MemberId) + "  AND Measurement_Date = '" + Measurementdate + "'";
            Common.ExecuteQuery(updatequery);
            MeasurementGridView.EditIndex = -1;
            MeasurementGridView.DataSource = GetMeasurements();
            MeasurementGridView.DataBind();
        }
        #endregion

       
        [System.Web.Services.WebMethod]
        public static string SendMail(string EventCategory, string EventText)
        {
            string strBody;
            string today = DateTime.Today.ToString("MM/dd/yyyy");
            try
            {
                EventText = EventText.Replace("\n", "<br/>");
                MailMessage mailMessage = new MailMessage();
                mailMessage.To.Add(EMailID);
                mailMessage.From = new MailAddress(ConfigurationManager.AppSettings["SMTPUserName"].ToString());
                mailMessage.Subject = "ABSFIT - " + EventCategory;
                mailMessage.IsBodyHtml = true;
                strBody = "Hi " + FullName + ",<br><br>";
                strBody = strBody + EventText + "<br><br>";
                strBody = strBody + "From,<br>ABSFIT";
                mailMessage.Body = strBody;

                using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.UseDefaultCredentials = false;
                    smtp.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SMTPUserName"].ToString(), ConfigurationManager.AppSettings["SMTPPassword"].ToString());
                    smtp.EnableSsl = true;
                    smtp.Send(mailMessage);
                }
                //if (ConfigurationManager.AppSettings["SMTPUserName"].ToString() != "")
                //{
                //    smtpClient.Credentials = new NetworkCredential(ConfigurationManager.AppSettings["SMTPUserName"].ToString(), ConfigurationManager.AppSettings["SMTPPassword"].ToString());
                //}
                //smtpClient.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["SMTPSSL"]);
                //smtpClient.Port = Convert.ToInt32(ConfigurationManager.AppSettings["SMTPPort"]);
                //smtpClient.Host = Convert.ToString(ConfigurationManager.AppSettings["SMTPServer"]);

                //smtpClient.Send(mailMessage);
                return "E-mail sent!";
            }
            catch (Exception ex)
            {
                return "Could not send the e-mail - error: " + ex.Message;
            }
        }

        protected void WeeklyCheckupGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            WeeklyCheckupGridView.PageIndex = e.NewPageIndex;
            WeeklyCheckupGridView.DataSource = GetWeeklyCheckUp();
            WeeklyCheckupGridView.DataBind();
        }

        protected void MeasurementGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            MeasurementGridView.PageIndex = e.NewPageIndex;
            MeasurementGridView.DataSource = GetMeasurements();
            MeasurementGridView.DataBind();
        }
    }
}