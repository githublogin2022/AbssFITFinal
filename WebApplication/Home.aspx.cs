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
    public partial class Home : System.Web.UI.Page
    {
        DataTable Imagetable = new DataTable();
        DataTable Instatable = new DataTable();
        public List<string> transImages = new List<string>();
        public List<string> instaFeeds = new List<string>();
        public int instaFeedsinc = 4;
        public int imagescount = 4;
        public int slidercount = 0;
        public int instafeedscount = 0;
        int i = 0;
        protected void Page_PreInit(object sender, EventArgs e)
        {
            GetImageData();
            GetInstagramFeeds();

        }
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Common.ExecuteQuery("usp_upd_tbl_AllMember");
                
            }
            DataTable ds = Common.GetData("usp_sel_tbl_AllMember");
            StringBuilder strHTML = new StringBuilder();
            
        }
        public void GetImageData()
        {
            
            Imagetable = Common.GetData("usp_sel_tbl_TranformationImages");
            foreach(DataRow row in Imagetable.Rows)
            {
                transImages.Add(row["Name"].ToString());
            }


            slidercount = Imagetable.Rows.Count / 3;
        }

        public void GetInstagramFeeds()
        {
            Instatable = Common.GetData("usp_sel_tbl_InstragramFeed");
            foreach (DataRow row in Instatable.Rows)
            {
                instaFeeds.Add(row["InstagramFeed"].ToString());
            }
            instafeedscount = Instatable.Rows.Count / 3;
        }

        public void FetchImage(object sender, EventArgs e)
        {
            foreach (Control ctrl in Page.Controls)
            {
                if (ctrl is Image)
                {
                    if (String.IsNullOrEmpty(((Image)ctrl).ID))
                    {
                        ((Image)ctrl).ID = "Image" + imagescount.ToString();
                    }
                    ((Image)ctrl).ImageUrl = i >= transImages.Count ? "" : string.Format("Handler2.ashx?id_Image={0}", transImages[i]);
                    i++;
                }
            }

            
               
        }

        public string GetImageTags()
        {
            StringBuilder strHTML = new StringBuilder();

            for (int j = 1; j <= slidercount; j++)
            {
                if (transImages.Count / 3 == j && transImages.Count % 3 == 0)
                    break;
                    strHTML.Append("<div class='u-align-center u-carousel-item u-container-style u-expanded-width-xl u-slide'>");
                    strHTML.Append("<div class='u-container-layout u-valign-middle u-container-layout-2'>");
                    strHTML.Append("<div class='u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-2'>");
                    strHTML.Append("<div class='u-gallery-inner u-gallery-inner-2'>");
                    for (int i = 0; i <= 2; i++)
                    {
                        if (imagescount <= transImages.Count)
                        {
                            strHTML.Append("<div class='u-effect-fade u-gallery-item'>");
                            strHTML.Append("<div class='u-back-slide' data-image-width='720' data-image-height='1080'>");
                            strHTML.Append("<img id='Image" + imagescount.ToString() + "' src='" + string.Format("Handler2.ashx?id_Image={0}", transImages[imagescount - 1]) + "' class='u-back-image u-expanded' />");
                            strHTML.Append("</div>");
                            strHTML.Append("<div class='u-over-slide u-shading u-over-slide-" + imagescount.ToString() + "'>");
                            strHTML.Append("<h3 class='u-gallery-heading'></h3>");
                            strHTML.Append("<p class='u-gallery-text'></p>");
                            strHTML.Append("</div>");
                            strHTML.Append("</div>");
                            imagescount++;
                        }
                    }
                    strHTML.Append("</div>");
                    strHTML.Append("</div>");
                    strHTML.Append("</div>");
                    strHTML.Append("</div>");
                
            }
            return strHTML.ToString();

        }

        public string GetInstaTags()
        {
            StringBuilder strHTML = new StringBuilder();

            for (int j = 1; j <= instafeedscount; j++)
            {
                if (instaFeeds.Count / 3 == j && instaFeeds.Count % 3 == 0)
                    break;
                strHTML.Append("<div class='u-align-center u-carousel-item u-container-style u-expanded-width-xl u-slide'>");
                strHTML.Append("<div class='u-container-layout u-valign-middle u-container-layout-2'>");
                strHTML.Append("<div class='u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-2'>");
                strHTML.Append("<div class='u-gallery-inner u-gallery-inner-2' style='margin: 7%;'>");
                for (int i = 0; i <= 2; i++)
                {
                    if (instaFeedsinc <= instaFeeds.Count)
                    {
                        strHTML.Append("<div class='u-effect-fade u-gallery-item2' style='width: 350px;height: 100%;'>");
                        strHTML.Append("<div class='u-back-slide1' data-image-width='720' data-image-height='1080'>");
                        strHTML.Append("<blockquote class='instagram-media' data-instgrm-permalink='"+instaFeeds[instaFeedsinc - 1]+ "' data-instgrm-version='14' style='background: #FFF; border: 0; border-radius: 3px; box-shadow: 0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width: 540px; min-width: 326px; padding: 0; width: 99.375%; width: -webkit-calc(100% - 2px); width: calc(100% - 2px);  height:640px;'>");
                        strHTML.Append("</blockquote>");
                        strHTML.Append("<script async src='//www.instagram.com/embed.js'></script>");
                        strHTML.Append("</div>");
                        strHTML.Append("</div>");
                        instaFeedsinc++;
                    }
                }
                strHTML.Append("</div>");
                strHTML.Append("</div>");
                strHTML.Append("</div>");
                strHTML.Append("</div>");

            }
            return strHTML.ToString();

        }

    }
}