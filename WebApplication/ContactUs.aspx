<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication2.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
       <title>HFIT:ABSS</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
		
		<!-- all css here -->
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
        <link rel="stylesheet" href="assets/css/style.css"/>
        <link rel="stylesheet" href="assets/css/responsive.css"/>
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
        <!-- header start -->
    <header class="header-area home-background">
     
        <div class="header-bottom">
            <div class="container">
                <div class="row">
              
                    <div class="col-md-12 col-sm-12 col-xs-12 ptb-10">
                        <div class="cart-menu">
                              <div class="logo f-left">
			                    <a href="Home.aspx">
                                    <img src="images/Gym/Logo.jpg" width="100" height="100" alt="">
                                </a>
			                </div>
                            <div class="main-menu f-right">
                                <nav>
                                    <ul>
                                      <li><a href="Home.aspx" style="font-family: Stencil; color: #FFFFFF">Home</a></li>
                                       
                                        
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->
    <!-- mobile-menu-area start -->
    <div class="mobile-menu-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="mobile-menu">
                        <nav id="dropdown">
                            <ul>
                               <li><a href="Home.aspx">Home</a></li>
                              
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    		<!-- breadcrumbs start -->
		<div class="breadcrumbs-area breadcrumb-bg ptb-25">
		    <div class="container">
		        <div class="breadcrumbs text-center">
                   <h2 class="breadcrumb-title uppercase" style="font-family: Stencil">contact us</h2>
                </div>
		    </div>
		</div>
		<!-- breadcrumbs area end -->
    <!-- login area start -->
			<div id="contact-area" class="contact-area ptb-120 gray-bg home-background-black">
            <div class="container">
                <div class="section-title text-center mb-70">
                    <h2 style="font-family: Algerian">GET IN TOUCH <i class="fa fa-phone"></i></h2>
                    
                </div>
                <div class="row">
                    <div class="col-md-12 col-lg-offset-2 col-lg-8 col-sm-12">
                        <div class="row">
                            <div class="col-md-5 col-lg-5 col-sm-5">
                                <div class="contact-info-area">
                                    <ul>
                                        <li>
                                            <div class="contact-icon">
                                                <i class="fa fa-phone"></i>
                                            </div>
                                            <div class="contact-address">
                                                  <h5 style="font-family: Algerian">Phone</h5>
                                                <span>+88 669 658 6586</span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="contact-icon">
                                                <i class="fa fa-envelope-o"></i>
                                            </div>
                                            <div class="contact-address">
                                                 <h5 style="font-family: Algerian">Email</h5>
                                                <span><a href="#">ianthemes@gmail.com</a></span>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="contact-icon">
                                                <i class="fa fa-map-marker"></i>
                                            </div>
                                            <div class="contact-address">
                                               <h5 style="font-family: Algerian">Our Location</h5>
                                                <span>Location Name,here.US</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-7 col-lg-7 col-sm-7">
                                <div class="sent-message">
                                    <form class="contact_form" id="contact_form" action="http://ianthemes.com/html/emini-preview/emini/contact-form.php" method="post">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="main-input-contact mb-10">
                                                    <input id="firstname" name="firstname" placeholder="First Name*" type="text"/>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <input id="lastname" name="lastname" type="text" placeholder="Last Name*"/>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <input id="email" name="email" type="text" placeholder="Email*"/>
                                                </div>
                                            </div>
                                             <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <input id="phonenumber" name="phonenumber" type="text" placeholder="Phone Number*"/>
                                                </div>
                                            </div>
                                             <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <textarea id="address" name="address" placeholder="Address*"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <input id="alternativenumber" name="alternativenumber" type="text" placeholder="Alternative Number"/>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                    <textarea id="description" name="description" placeholder="Description*"></textarea>
                                                </div>
                                            </div>
                                            <div class="col-md-12">
                                                <div class="main-input-contact mrg-eml mrg-contact mb-10">
                                                     <p class="h4 black">Enquiry Date:</p>
                                                     <input type="date" id="enquirydate" name="enquirydate"/>
                                                </div>
                                            </div>
                                           
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <div class="col-md-12 col-lg-12 col-sm-12">
                                    <div class="col-md-3 col-lg-3 col-sm-12">
                                        </div>
                                    <div class="col-md-3 col-lg-3 col-sm-12">
                                        <button type="button" class="login-btn" onclick="SubmitData()" >Add Enquiry</button>
                                        </div>
                                    <div class="col-md-3 col-lg-3 col-sm-12">
                                        <button type="button" class="login-btn" onclick="GoHome()" >Cancel</button>
                                        </div>
                                    <div class="col-md-3 col-lg-3 col-sm-12">
                                        </div>
                                    
                                    
                                    </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	<!-- login area end -->
    <div class="contact-area-all">
            <div id="ian"></div>
        </div>
    <!-- footer area start -->
		<footer class="footer-area footer-black-background pt-10">
		    <div class="container">
                <div class="footer-bottom text-center">
                    <div class="row">
                        
                        <div class="col-md-12 col-sm-12">
                            <div class="widget-info">
                                <div class="col-md-4 col-sm-12">
                                    <p>
                                         <i class="pe-7s-map-marker" style="color: #FFFFFF"> </i>
                                        <span style="color: #FFFFFF">
                                            184 Main Rd , St XYZ , ABC 3021, India
                                            <br>
                                            <span class="location"></span>
                                        </span>
                                    </p>
                                 </div>
                                 <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-mail" style="color: #FFFFFF"></i>
                                        <span>
                                          <a href="hfitabss@gmail.com" style="color: #FFFFFF">hfitabss@gmail.com</a>
                                        </span>
                                    </p>
                                 </div>
                                 <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-call" style="color: #FFFFFF"></i>
                                        <span style="color: #FFFFFF">+91 9876543216 </span>
                                    </p>
                                 </div>
                                </div>
                            <div class="copyright">
                                <p>
                                    Copyright © 2022
                                    <a href="#">ABSFIT</a>
                                    . All Rights Reserved.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
		    </div>
		</footer>


     <!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
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

            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAlZPf84AAVt8_FFN7rwQY5nPgB02SlTKs"></script>

    <script>
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode != 46 && charCode > 31
              && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
        function SubmitData() {
            if ($("#firstname").val() == "") {
                alert("Please enter First Name.");
                return;
            }

            if ($("#lastname").val() == "") {
                alert("Please enter Last Name.");
                return;
            }

            if ($("#phonenumber").val() == "") {
                alert("Please enter Phone Number.");
                return;
            }

            if ($("#email").val() == "") {
                alert("Please enter EmailID.");
                return;
            }
            if ($("#address").val() == "") {
                alert("Please enter Address.");
                return;
            }
            if ($("#description").val() == "") {
                alert("Please enter Description.");
                return;
            }
            $.ajax({
                url: "ContactUs.aspx/AddEnquiry",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ FirstName: $("#firstname").val(), LastName: $("#lastname").val(), Email: $("#email").val(), PhoneNumber: $("#phonenumber").val(), Address: $("#address").val(), AlternativeNumber: $("#alternativenumber").val(), EnquiryDate: $("#enquirydate").val(), Description: $("#description").val() }),
                
                success: function (result) {
                    var get = result.d;
                    if (get == "Member Added")
                    {
                        alert("We will get back to you soon. Thank you for the response");
                        window.location.href = "Home.aspx";
                    }
                    else
                    {
                        alert(get);
                    }
                },
               
            })
        }

        function GoHome()
        {
            window.location.href = "Home.aspx";
        }
        var myCenter = new google.maps.LatLng(23.256588, 32.256586);
        function initialize() {
            var mapProp = {
                center: myCenter,
                scrollwheel: false,
                zoom: 12,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("ian"), mapProp);
            var marker = new google.maps.Marker({
                position: myCenter,
                animation: google.maps.Animation.BOUNCE,
                icon: '',
                map: map,
            });
            var styles = [
              {
                  stylers: [
                    { hue: "#c5c5c5" },
                    { saturation: -100 }
                  ]
              },
            ];
            map.setOptions({ styles: styles });
            marker.setMap(map);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</body>
</html>
