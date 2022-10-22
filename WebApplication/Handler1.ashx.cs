using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    /// <summary>
    /// Summary description for Handler1
    /// </summary>
    public class Handler1 : IHttpHandler
    {
        public string query, constr;
        public SqlConnection con;

        //call connection and use strings variable  
        EditImages cls = new EditImages();
        public void connection()
        {
            constr = ConfigurationManager.ConnectionStrings["constring"].ToString();
            con = new SqlConnection(constr);
            con.Open();


        }
        public bool IsReusable
        {
            get
            {
                throw new NotImplementedException();
            }
        }

        public void ProcessRequest(HttpContext context)
        {
            string displayimgid = context.Request.QueryString["id_Image"].ToString();
            connection();
            //retriving the images on the basis of id of uploaded 
            //images,by using the querysting valaues which comes from Defaut.aspx page
            query = "select base64string from tTranformationImages where id=" + displayimgid;
            SqlCommand com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            dr.Read();
            context.Response.BinaryWrite((Byte[])dr[0]);
            context.Response.End();
        }
    }
}