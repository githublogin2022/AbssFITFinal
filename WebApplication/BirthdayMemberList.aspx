<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BirthdayMemberList.aspx.cs" Inherits="WebApplication2.BirthdayMemberList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>ABSFIT</title>
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
    <style type="text/css">
        input {
            height: 13px;
            margin-right: 14px;
        }
        .vertical-center {
            margin: 0;
            position: sticky;
            top: 50%;
            -ms-transform: translateY(-50%);
            transform: translateY(-50%);
        }
    </style>
    </head>
<body>
    <!-- header start -->
    <header class="header-area home-background">
     
        <div class="header-bottom">
            <div class="container">
                <div class="row">
              
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="cart-menu">
                              <div class="logo f-left">
			                    <a href="StudentLogin.aspx">
                                    <img src="images/Gym/Logo.jpg"  width="100" height="100" alt="">
                                </a>
			                </div>
                              <div class="col-md-7 col-sm-8 col-xs-7 mt-30">
                  <h3  class="text-black text-center" style="font-weight:bolder; color: #FFFFFF; font-family: Stencil;">SEND BIRTHDAY WISHES</h3>
                        </div>
                            <div class="main-menu f-right">
                                <nav>
                                    <ul>
                                       <li><a style="padding:0px; font-size:medium; color: #FFFFFF; font-family: Stencil;" href="Dashboard.aspx">Dashboard &nbsp;|&nbsp;</a></li>
                                        <li><a style="padding:0px; font-size:16px; color: #FFFFFF; font-family: Stencil;" href="MemberRegistration.aspx">Add Member &nbsp;|&nbsp;</a></li>
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
                               <li><a href="DashBoard.aspx">DashBoard</a></li>
                               <li><a href="MemberRegistration.aspx">Member Registration</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    <!-- List area start -->
    <form runat="server">
     <div class="login-area ptb-30 home-background-black">
		    <div class="container">
                <div class="row">
                    
                    <div class="col-md-4">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" BackColor="White"></asp:CheckBoxList>
                    </div>
                    <div class="col-md-4 vertical-center">
                        <button type="button" class="login-btn" style="width:40%;" onclick="SendMessage()" >Send</button>
                    </div>
                    <div class="col-md-4 vertical-center">
                        <textarea name="message" id="message" rows="7" cols="50" style="transition:none; border:2px solid black;" placeholder="Enter Message"></textarea>
                    </div>
                </div>
		    </div>
		</div>
        </form>
	<!-- List area end -->
    <!-- footer area start -->
		<footer class="footer-area" style="background: #000000;">
		    <div class="container">
                <div class="footer-bottom ptb-10">
                    <div class="row"  >
                        <div class="col-md-6 col-sm-6">
                            <div class="copyright">
                                <p style="color:#fff;">
                                    Designed and Developed by ARGIO PVT LTD.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            
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


    <script>
   
        function SubmitData() {

            if ($("#message").val() == "") {
                alert("Please enter the Message.");
                return;
            }

           
            



            $.ajax({
                url: "MemberRegistration.aspx/SendMessage",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({
                    FirstName: $("#message").val()
                }),

                success: function (result) {

                    var get = result.d;

                    if (get == "messagesent") {
                        alert("Message sent successfully");
                        ;
                    }
                    else {
                        alert(get);
                    }
                }

            })
        }
    </script>

    
    
    
</body>
</html>

