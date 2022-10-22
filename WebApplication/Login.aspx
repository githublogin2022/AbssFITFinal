<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>HFIT:ABSS</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
         <style>
        @import url(https://fonts.googleapis.com/css?family=Noto+Sans);
		    .customAlert {
		        display: none;
		        position: fixed;
		        max-width: 25%;
		        min-width: 250px !important;
		        min-height: 20%;
		        height: 100px;
		        left: 50%;
		        top: 50%;
		        padding: 10px;
		        box-sizing: border-box;
		        margin-left: -12.5%;
		        margin-top: -5.2%;
		        background: #e5e20f;
		    }

		    .message {
		        padding: 5px;
		        color: black;
		        font-size: 14px;
		        line-height: 20px;
		        text-align: justify;
		    }

		    .confirmButton {
		        position: absolute;
		        top: 100%;
		        left: 50%;
		        width: 50%;
		        height: 36px;
		        margin-top: -45px;
		        margin-left: -25%;
		        outline: 0;
		        border: 0;
		        background: #000;
		        color: #e5e20f;
		    }
		    &:hover {
		        transition: 0.3s;
		        cursor: pointer;
		        background: lighten(#04B486, 5%);
		    }





		    @keyframes fadeOut {
		        from {
		            opacity: 1;
		        }

		        to {
		            opacity: 0;
		        }
		    }

		    @keyframes fadeIn {
		        from {
		            opacity: 0;
		        }

		        to {
		            opacity: 1;
		        }
		    }

        
    </style>
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
<body class="gym-image">
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
                             <div class="col-md-8 col-sm-8 col-xs-8 mt-30">
                    <h3 class="text-white text-center"  style="font-weight:bold; font-family: Stencil;">HFIT ABSS Personal Training Studio</h3>
                        </div>
                            <div class="main-menu f-right c1">
                                <nav>
                                    <ul>
                                       <li class="c2"><a href="Home.aspx" style="font-family: Stencil">Home</a></li>
                                        <li class="mega-position c2"><a href="ContactUs.aspx" style="font-family: Stencil">Contact Us</a></li>
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
                               <li class="mega-position"><a href="#">Contact Us</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    <!-- breadcrumbs start -->
    <%--<div class="breadcrumbs-area breadcrumb-bg ptb-100">
        <div class="container">
            <div class="breadcrumbs text-center">
                <h2 class="breadcrumb-title">student login</h2>
            </div>
        </div>
    </div>--%>
    <!-- breadcrumbs area end -->
    <!-- login area start -->
		<div class="login-area ptb-130 home-background-black" >
		    <div class="container">
                <div class="row">
                    <div class="col-md-1">
                        
                    </div>
                    <div class="col-md-3">
                        
                    </div>
                    <div class="col-3">
                        <div class="login-content">
                            <div class="login-title">
                                 <h4 style="font-family: Algerian; color: #000000;">Login to member managment system</h4>
                            </div>
                            <div class="login-form-login" style="text-align:right;">
                                <form action="index-2.html" runat="server">
                                    <input name="user-name" style="color:#fff" id="uid" placeholder="Enter Member ID" type="text"/>
                                    <input name="user-password" id="password" style="color:#fff" placeholder="Enter Password" type="password"/>
                                   <a href="ChangePassword.aspx" name="changepassword" id="changepassword" style="color:#000000; font-size:12px; text-align:right; text-decoration:underline; font-family: Algerian;" >Change Password</a>
                                    <label id="errorid" style="color:red;"></label>
                                   <button type="button" class="login-btn" onclick="LoginIN()" style="font-family: Algerian">LogIn</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class='customAlert'>
                  <p class='message'></p>
                	<input type='button' class='confirmButton' value='Ok'/>
                </div>
		    </div>
		</div>
	<!-- login area end -->
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


    <script>
        
        var currentCallback;
        window.alert = function (msg, callback) {
            $('.message').text(msg);
            $('.customAlert').css('animation', 'fadeIn 0.3s linear');
            $('.customAlert').css('display', 'inline');
            setTimeout(function () {
                $('.customAlert').css('animation', 'none');
            }, 300);
            currentCallback = callback;
        }

        $('.confirmButton').click(function () {
            $('.customAlert').css('animation', 'fadeOut 0.3s linear');
            setTimeout(function () {
                $('.customAlert').css('animation', 'none');
                $('.customAlert').css('display', 'none');
            }, 300);
            if ($('.message').text() == "Measurement Data added successfully") {
                window.location.href = "MemberDetails.aspx?MemberId=" + $("#MemberId").val();
            }

        })
        function LoginIN() {
            if (document.getElementById('uid').value == "")
            {
                alert("Please Enter Member ID");
                return;
            }
            if (document.getElementById('password').value == "") {
                alert("Please Enter password");
                return;
            }
            $.ajax({
                url: "Login.aspx/LoginIN",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ UserName: $("#uid").val(), Password: $("#password").val() }),
                success: function (result) {
                    var get = result.d;
                    if (get == "Login Failed")
                    {
                        document.getElementById("errorid").innerHTML = "*Login Failed";
                        
                    }
                    else
                    {
                        window.location = get
                    }
                    
                },
               
            })
        }
    </script>
</body>
</html>
