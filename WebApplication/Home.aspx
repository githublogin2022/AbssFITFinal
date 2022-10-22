<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication2.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>HFIT:ABSS</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="generator" content="Nicepage 4.6.5, nicepage.com"/>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
		<style>
    /*------------  POrtfolio Desgin -----------*/
    
.portfolio-menu{
	text-align:center;
}
.portfolio-menu ul li{
	display:inline-block;
	margin:0;
	list-style:none;
	padding:10px 15px;
	cursor:pointer;
	-webkit-transition:all 05s ease;
	-moz-transition:all 05s ease;
	-ms-transition:all 05s ease;
	-o-transition:all 05s ease;
	transition:all .5s ease;
}

.portfolio-item{
	/*width:100%;*/
}
.portfolio-item .item{
	/*width:303px;*/
	float:left;
	margin-bottom:10px;
}
.img-fluid {
    max-width: 100%;
    height: auto;
}

/*-------------- End Portfolio Design -----------*/
        </style>
		<!-- all css here -->
    <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="stylesheet" href="assets/css/Counter.css"/>
        <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="assets/css/magnific-popup.css"/>
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css"/>
        <link rel="stylesheet" href="assets/css/font-awesome.min.css"/>
        <link rel="stylesheet" href="assets/css/pe-icon-7-stroke.css"/>
		<link rel="stylesheet" href="lib/css/nivo-slider.css" type="text/css" />
		<link rel="stylesheet" href="lib/css/preview.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="assets/css/animate.css"/>
        <link rel="stylesheet" href="assets/css/meanmenu.min.css"/>
        <link rel="stylesheet" href="assets/css/bundle.css"/>
        
        <link rel="stylesheet" href="assets/css/responsive.css"/>
            <link rel="stylesheet" href="assets/css/nicepage.css" media="screen">
    <link rel="stylesheet" href="assets/css/Home.css" media="screen">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
         
</head>
<body>
    <!-- header start -->
    <header class="header-area home-background">
        <div class="header-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-2 col-sm-2 col-xs-2 ptb-10">
                        <div class="logo">
                                <img src="images/Gym/Logo.jpg"  width="100" height="100" alt=""/>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-8 col-xs-8 mt-30">
                   <h3 class="text-white text-center"  style="font-weight:bold; font-family: Stencil;">HFIT ABSS Personal Training Studio</h3>
                        </div>
                    <div class="col-md-2 col-sm-2 col-xs-2 ptb-40 mr-0  ">
                        <div style="width:10%;text-align:center;background: black;border-radius: 25px; float:right;">
                         <asp:HyperLink CssClass="loginbutton-home uppercase" ForeColor="White" BackColor="Black" runat="server" NavigateUrl="~/Login.aspx" Text="Login" Font-Names="Stencil"></asp:HyperLink>
                            </div>
                    </div>
                    
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->
    <div class="home-background-black ptb-20 mr-0 ml-0">

            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12" style="margin-top:10%;">
    		        <!-- slider start -->
		        <section class="slider-area">
			        <div class="bend niceties preview-2">
				        <div id="ensign-nivoslider" class="slides">	
					        <img src="images/Slider/1.jpg" alt="" title="#slider-direction-1"  />
					        <img src="images/Slider/2.jpg" alt="" title="#slider-direction-2"  />
                            <img src="images/Slider/3.jpg" alt="" title="#slider-direction-3"  />
                             <img src="images/Slider/4.jpg" alt="" title="#slider-direction-4"  />
                             <img src="images/Slider/5.jpeg" alt="" title="#slider-direction-5"  />
                             <img src="images/Slider/6.png" alt="" title="#slider-direction-6"  />
				        </div>
				
			        </div>
		        </section>
   
		        <!-- slider end -->
                 </div>
         <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 pl-0 pr-0">
                 <!-- About Us start -->
		<div class="portfolio-area text-black">

			    <div class="section-title text-center  mb-50">
                    <h2 style="font-family: Algerian">About Us <i class="fa fa-gear"></i></h2>
                    <p style="font-family: Algerian">We are a group / semi personal training concept. Our motive is not just about a short term fad but a community that decides to make fitness as part of their lifestyle.</p>
                    <br />
                    <p style="font-family: Algerian">We believe lifestyle cannot be just going to a place to use bunch of equipments, instead being part of the community of people who already made/making fitness a part of their lifestyle as we do at HFIT-ABSS personal training.</p>
                    <br />
                    <p style="font-family: Algerian">When it comes to lifestyle and self care, fitness is a major pillar of it and when fitness is concerned HFIT-ABSS has a unique stand on it, which is tried, tested and proven by humans i.e. work in a community and community works for everyone!!! </p>
                    <br />
                    <p style="font-family: Algerian">With exercise and healthy eating habits we focus on developing strength, endurance and flexibility. and also to keep you on track and motivated enough, our accountibilty and mindset features comes with interval check-up system and multiple community events like outdoor sports, treks and various fitness challenges.</p>
                    <br />
                    <br />
                    <p style="font-family: Algerian">If you have queries or enquires, Please feel free to <asp:HyperLink Font-Size="Medium" CssClass="loginbutton text-black uppercase bold" runat="server" NavigateUrl="~/ContactUs.aspx" Text="CONTACT US" Font-Names="Algerian"></asp:HyperLink></p>
				</div>
                


		</div>
		<!-- About Us end -->
</div>

        </div>

    	<%--Transformation--%>

    <div class="portfolio-area home-background-black ptb-20">
			<div class="container">
			    <div class="section-title text-center text-black mb-50">
                    <h2 style="font-family: Algerian">Transformation <i class="fa fa-bicycle"></i></h2>
                </div>
				 <div class="portfolio-item row">
			        <section class="u-clearfix u-palette-1-base u-section-1" id="carousel_cfe2">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div id="carousel-8627" data-interval="0" data-u-ride="carousel" class="u-carousel u-expanded-width u-slider u-slider-1">
          <%--<ol class="u-absolute-hcenter u-carousel-indicators u-carousel-indicators-1">
            <li data-u-target="#carousel-8627" class="u-active u-grey-30" data-u-slide-to="0"></li>
           
           
               <% for (int j = 1; j <= slidercount; j++)
                   { %>
               <li data-u-target="#carousel-8627" class="u-grey-30" data-u-slide-to="<%: j  %>"></li>
              <%} %>
          </ol>--%>
          <div class="u-carousel-inner" role="listbox">
              <div class="u-active u-align-center u-carousel-item u-container-style u-slide">
              <div class="u-container-layout u-valign-middle u-container-layout-1">
                <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-1">
                  <div class="u-gallery-inner u-gallery-inner-1">
                    <div class="u-effect-fade u-gallery-item">
                      <div class="u-back-slide" data-image-width="720" data-image-height="1080">
                          <asp:Image id="Image1" runat="server" CssClass="u-back-image u-expanded" OnLoad="FetchImage"/>
                      </div>
                      <div class="u-over-slide u-shading u-over-slide-1">
                        <h3 class="u-gallery-heading"></h3>
                        <p class="u-gallery-text"></p>
                      </div>
                    </div>
                    <div class="u-effect-fade u-gallery-item">
                      <div class="u-back-slide" data-image-width="1080" data-image-height="1080">
                        <asp:Image id="Image2" runat="server" CssClass="u-back-image u-expanded" />
                      </div>
                      <div class="u-over-slide u-shading u-over-slide-2">
                        <h3 class="u-gallery-heading"></h3>
                        <p class="u-gallery-text"></p>
                      </div>
                    </div>
                    <div class="u-effect-fade u-gallery-item">
                      <div class="u-back-slide" data-image-width="1000" data-image-height="1500">
                        <asp:Image id="Image3" runat="server" CssClass="u-back-image u-expanded" />
                      </div>
                      <div class="u-over-slide u-shading u-over-slide-3">
                        <h3 class="u-gallery-heading"></h3>
                        <p class="u-gallery-text"></p>
                      </div>
                    </div>

                  </div>
                </div>
              </div>
            </div>
              <%Response.Write(GetImageTags()); %>
          </div>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-icon-circle u-spacing-10 u-text-palette-1-base u-white u-carousel-control-1" href="#carousel-8627" role="button" data-u-slide="prev">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z"></path></svg>
            </span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-icon-circle u-spacing-10 u-text-palette-1-base u-white u-carousel-control-2" href="#carousel-8627" role="button" data-u-slide="next">
            <span aria-hidden="true">
              <svg viewBox="0 0 477.175 477.175"><path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z"></path></svg>
            </span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
    </section>
				</div>
				
			</div>
		</div>
     <%--End Transformation--%>
        
    <!-- Testimonial start -->

		<div class="portfolio-area home-background-black ptb-20">
			<div class="container"> 
			    <div class="section-title text-center text-black mb-50">
                    <h2 style="font-family: Algerian">Testimonial <i class="fa fa-book"></i></h2>
                 </div>
                <div class="portfolio-item row">
                    <section class="u-clearfix u-palette-1-base u-section-12" id="carousel_cfe21">
                        <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
                            <div id="carousel-86271" data-interval="0" data-u-ride="carousel" class="u-carousel u-expanded-width u-slider u-slider-12">
                                <div class="u-carousel-inner" role="listbox">
                                    <div class="u-active u-align-center u-carousel-item u-container-style u-slide">
                                        <div class="u-container-layout u-valign-middle u-container-layout-1">
                                            <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-gallery u-layout-grid u-lightbox u-no-transition u-show-text-on-hover u-gallery-1">
                                                    <div class="u-gallery-inner u-gallery-inner-1" style="margin:7%;">
                                                    <div class="u-effect-fade u-gallery-item1">
                                                        <div class="u-back-slide1" data-image-width="720" data-image-height="1080" style="width: 350px;height: 100%;">
                                                            <blockquote class="instagram-media" data-instgrm-permalink='<%Response.Write(instaFeeds[0]);%>' data-instgrm-version="14" style="background: #FFF; border: 0; border-radius: 3px; box-shadow: 0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width: 540px; min-width: 326px; padding: 0; width: 99.375%; width: -webkit-calc(100% - 2px); width: calc(100% - 2px); height:640px;">
                                                            
                                                            </blockquote>
                                                            <script async src="//www.instagram.com/embed.js"></script>
                                                        </div>
                                                      
                                                    </div>
                                                    <div class="u-effect-fade u-gallery-item1">
                                                        <div class="u-back-slide1" data-image-width="720" data-image-height="1080" style="width: 350px;height: 100%;">
                                                            <blockquote class="instagram-media" data-instgrm-permalink='<%Response.Write(instaFeeds[1]);%>' data-instgrm-version="14" style="background: #FFF; border: 0; border-radius: 3px; box-shadow: 0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width: 540px; min-width: 326px; padding: 0; width: 99.375%; width: -webkit-calc(100% - 2px); width: calc(100% - 2px); height:640px;">
                                                            
                                                            </blockquote>
                                                            <script async src="//www.instagram.com/embed.js"></script>
                                                        </div>
                                                      
                                                    </div>
                                                    <div class="u-effect-fade u-gallery-item1">
                                                        <div class="u-back-slide1" data-image-width="720" data-image-height="1080" style="width: 350px;height: 100%;">
                                                            <blockquote class="instagram-media" data-instgrm-permalink='<%Response.Write(instaFeeds[2]);%>' data-instgrm-version="14" style="background: #FFF; border: 0; border-radius: 3px; box-shadow: 0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width: 540px; min-width: 326px; padding: 0; width: 99.375%; width: -webkit-calc(100% - 2px); width: calc(100% - 2px); height:640px;">
                                                            
                                                            </blockquote>
                                                            <script async src="//www.instagram.com/embed.js"></script>
                                                        </div>
                                                      
                                                    </div>
                                                </div>
                                                </div>
                                            </div>
                                        </div>
                                    <%Response.Write(GetInstaTags()); %>
                                    </div>
                                    
                                </div>
                   
                                <a class="u-absolute-vcenter u-carousel-control u-carousel-control-prev u-icon-circle u-spacing-10 u-text-palette-1-base u-white u-carousel-control-1" href="#carousel-86271" role="button" data-u-slide="prev">
                                    <span aria-hidden="true">
                                        <svg viewBox="0 0 477.175 477.175">
                                            <path d="M145.188,238.575l215.5-215.5c5.3-5.3,5.3-13.8,0-19.1s-13.8-5.3-19.1,0l-225.1,225.1c-5.3,5.3-5.3,13.8,0,19.1l225.1,225
                    c2.6,2.6,6.1,4,9.5,4s6.9-1.3,9.5-4c5.3-5.3,5.3-13.8,0-19.1L145.188,238.575z">
                                            </path></svg>
                                    </span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="u-absolute-vcenter u-carousel-control u-carousel-control-next u-icon-circle u-spacing-10 u-text-palette-1-base u-white u-carousel-control-2" href="#carousel-86271" role="button" data-u-slide="next">
                                    <span aria-hidden="true">
                                        <svg viewBox="0 0 477.175 477.175">
                                            <path d="M360.731,229.075l-225.1-225.1c-5.3-5.3-13.8-5.3-19.1,0s-5.3,13.8,0,19.1l215.5,215.5l-215.5,215.5
                    c-5.3,5.3-5.3,13.8,0,19.1c2.6,2.6,6.1,4,9.5,4c3.4,0,6.9-1.3,9.5-4l225.1-225.1C365.931,242.875,365.931,234.275,360.731,229.075z">
                                            </path></svg>
                                    </span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        

                    </section>
				</div>
                </div>
                </div>
		<!-- Testimonial end -->
        

    <!-- Team -->
        <div class="team-area home-background-black text-black pt-100 pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="section-title text-center mb-70">
                            <h2 style="font-family: Algerian">
                                awesome team
                                <i class="fa fa-male"></i>
                            </h2>                         
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="meet-all-four mb-30">
                            <div class="meet-img-four">
                                <img src="images/team/team-1.jpg" alt="">
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-30">
                        <div class="meet-all-four">
                            <div class="meet-img-four">
                                <img src="images/team/team-2.jpg" alt="">
                                
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-30">
                        <div class="meet-all-four">
                            <div class="meet-img-four">
                                <img src="images/team/team-3.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 mb-30 ">
                        <div class="meet-all-four">
                            <div class="meet-img-four">
                                <img src="images/team/team-4.jpg" alt="">
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
                <br/>
        </div>

    <!-- End Team -->

    <!-- footer area start -->
		<footer class="footer-area home-background pt-5">
		    <div class="container">
                <div class="footer-bottom text-center">
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="widget-info">
                                <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-map-marker text-white"></i>
                                        <span class="text-white">
                                            Sr No. 42, Birmal Sadan, Opp.Dena Bank, Paud Phata Rd, near Ashtavinyak chowk, Erandwane, Pune 38.
                                            <br>
                                            <span class="location"></span>
                                        </span>
                                    </p>
                                 </div>
                                 <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-mail text-white"></i>
                                        <span class="text-white">
                                            hfitabss@gmail.com
                                        </span>
                                    </p>
                                 </div>
                                 <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-call text-white"></i>
                                        <span class="text-white">+91 9876543216 </span>
                                    </p>
                                 </div>
                                </div>
                        </div>
                    </div>
                </div>
		    </div>
            
		</footer>
    <footer class="footer-area">                    
            <div class="col-md-12 col-sm-12" style="background: #000000;">
                <div class="col-md-4 col-sm-12">
                    <div class="copyright home">
                                <p style="color:#fff;">
                                    Designed and Developed by GAINTART TECHNOLOGIES PVT LTD
                                </p>
                            </div>
                </div>
                <div class="col-md-4 col-sm-12">
                </div>
                <div class="col-md-4 col-sm-12">
                    <div class="por-dse clearfix ml">
                                                                            <ul>
                 
                                                                                <li class="share-btn clearfix text-white">
                                                                                    <a href="#"><i class="fa fa-facebook text-white"></i></a>
                                                                                    <a href="#"><i class="fa fa-twitter text-white"></i></a>
                                                                                    <a href="#"><i class="fa fa-google-plus text-white"></i></a>
                                                                                    <a href="#"><i class="fa fa-linkedin text-white"></i></a>
                                                                                    <a href="#"><i class="fa fa-instagram text-white"></i></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                </div>
                </div>
            
    </footer>

    <!-- quick view start -->
        <div class="quick-view modal fade in" id="quick-view">
            <div class="container">
                <div class="row">
                    <div id="view-gallery">
                        <div class="col-xs-3">
                            </div>
                        <div class="col-xs-6">
                            <div class="d-table">
                                <div class="d-tablecell">
                                    <div class="modal-dialog">
                                        <div class="main-view modal-content">
                                            <div class="modal-footer" data-dismiss="modal">
                                                <span>x</span>
                                            </div>
                                            <div class="row">
                                                
                                                <div class="col-xs-12 col-sm-12">
                                                    <div class="quick-image">
                                                        <div class="single-quick-image tab-content text-center">
                                                            <div class="tab-pane  fade in active" id="sin-pro-1">
                                                                <img src="assets/img/shop/q1.jpg" alt="" />
                                                            </div>
                                                        </div>
                                                        
                                                    </div>							
                                                </div>
                                                
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-3">
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- quick view end -->

     <!-- all js here -->
        <script  class="u-script" type="text/javascript"  src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script  class="u-script" type="text/javascript"  src="assets/js/nicepage.js" defer=""></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/jquery.meanmenu.js"></script>
        <script src="assets/js/jquery.magnific-popup.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.validate.min.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
		<script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
		<script src="lib/home.js" type="text/javascript"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        
    
    <script>
   
        $('.portfolio-menu ul li').click(function () {
            $('.portfolio-menu ul li').removeClass('active');
            $(this).addClass('active');

            var selector = $(this).attr('data-filter');
            $('.portfolio-item').isotope({
                filter: selector
            });
            return false;
        });
        $(document).ready(function () {
            var popup_btn = $('.popup-btn');
            popup_btn.magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        });

        $(document).ready(function () {
            $('.counter-value').each(function () {
                $(this).prop('Counter', 0).animate({
                    Counter: $(this).text()
                }, {
                    duration: 3500,
                    easing: 'swing',
                    step: function (now) {
                        $(this).text(Math.ceil(now));
                    }
                });
            });
        });
    </script>
       
</body>
</html>
