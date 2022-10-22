using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class EditImages : System.Web.UI.Page
    {

        public string query, constr;
        public SqlConnection con;
        public void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["constring"].ToString();
            con = new SqlConnection(constr);
            con.Open();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            Label2.Visible = false;
            if (!IsPostBack)
            {
                imagebindGrid();
                instagramBindGrid();
            }

        }

        protected void MemberListGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            if (e.RowIndex < 2)
            {
                Response.Write("<script>alert('Cannot delete less than 3 images');</script>");
            }
            else
             {
                GridViewRow row = (GridViewRow)MemberListGridView.Rows[e.RowIndex];
                string Id = row.Cells[0].Text;
                string updatememinfo = "delete from tTranformationImages where Name = '" + Id.Trim() + "'";
                Common.ExecuteQuery(updatememinfo);
                imagebindGrid();
            }
        }

        protected void InstagramGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)InstagramGridView.Rows[e.RowIndex];
            string Id = row.Cells[0].Text;
            string updatememinfo = "delete from tInstagramFeeds where Name = '" + Id.Trim() + "'";
            Common.ExecuteQuery(updatememinfo);
            instagramBindGrid();
        }

        private void Imageupload()
        {
            
            if (FileUpload1.HasFile)
            {

                int imagefilelenth = FileUpload1.PostedFile.ContentLength;
                byte[] imgarray = new byte[imagefilelenth];
                HttpPostedFile image = FileUpload1.PostedFile;
                image.InputStream.Read(imgarray, 0, imagefilelenth);
                connection();
                query = "Insert into  tTranformationImages (Name,base64string) values (@Name,@Image)";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@Name", SqlDbType.VarChar).Value = FileUpload1.FileName;
                com.Parameters.AddWithValue("@Image", SqlDbType.Image).Value = imgarray;
                com.ExecuteNonQuery();
                Label1.Visible = true;
                Label1.Text = "Image Is Uploaded successfully";
                imagebindGrid();
                con.Close();
            }
            else
                Response.Write("<script>alert('Please select file to upload');</script>");
            imagebindGrid();
        }

        private void getCode()
        {
            string code = "";
            string[] buffer = TextBox3.Text.Split('/');
            TextBox2.Text = buffer[4].ToString();
        }

        private void Linkupload()
        {

            if (!String.IsNullOrEmpty(TextBox3.Text))
            {
                connection();
                query = "Insert into  tInstagramFeeds (Name,InstagramFeed) values (@Name,@InstagramFeed)";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@Name", SqlDbType.VarChar).Value = TextBox2.Text;
                com.Parameters.AddWithValue("@InstagramFeed", SqlDbType.VarChar).Value = TextBox3.Text;
                com.ExecuteNonQuery();
                Label2.Visible = true;
                Label2.Text = "Link Is Uploaded successfully";
                instagramBindGrid();
                con.Close();
            }
            else

            {
                Response.Write("<script>alert('Please enter link to upload');</script>");
                imagebindGrid();
            }
                
        }

        public void imagebindGrid()
        {
            DataTable ds = Common.GetData("usp_sel_tbl_TranformationImages");
            MemberListGridView.DataSource = ds;
            MemberListGridView.DataBind();
        }

        public void instagramBindGrid()
        {
            DataTable ds = Common.GetData("usp_sel_tbl_InstragramFeed");
            InstagramGridView.DataSource = ds;
            InstagramGridView.DataBind();
        }

        protected void btnLinkUpload_Click(object sender, EventArgs e)
        {
            getCode();
            Linkupload();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Imageupload();
        }

        
    }
}