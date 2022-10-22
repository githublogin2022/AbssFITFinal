<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebApplication2.Dashboard" %>

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
                    <div class="col-md-2 col-sm-3 col-xs-4">
                        <div class="logo">
                            
                                <img src="images/Gym/Logo.jpg"  width="100" height="100" alt="">
                                
                            
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-8 col-xs-7 mt-30">
                    <h3  class="text-white text-center" style="font-weight:bolder; font-family: Stencil;">MEMBERSHIP MANAGEMENT SOLUTION</h3>
                        </div>
                
                <div class="col-md-2 col-sm-1 col-xs-1 mt-30 alignright text-black" style="font-size:20px; text-decoration:underline;">
                    <div class="main-menu f-right c1">
                                <nav>
                                    <ul>
                                     <li class="c2"><a style="padding:0px; font-family: Algerian;" href="EditImages.aspx">EDIT IMAGES</a></li>|
                                       <li class="c2"><a style="padding:0px; font-family: Stencil;" href="Home.aspx">LOGOUT</a></li>
                                        
                                    </ul>
                                </nav>
                            </div>
                    </div>
            </div>
        </div>
            </div>
    </header>
    <!-- header end -->
    <!-- List area start -->
    <form runat="server">
    <div class="ptb-50 home-background-black">
		    <div class="container">
                <div class="row">

                    <div class="col-md-4 col-sm-12">
                        <div class="counter">
                            <div class="counter-icon"><i class="fa fa-male"></i></div>
                            <span class="counter-value"><% =ActiveCount %></span>
                            <h3><a href="ActiveMemberList.aspx" style="font-family: Stencil">Active Members</a></h3>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12">
                        <div class="counter red">
                            <div class="counter-icon"><i class="fa fa-rocket"></i></div>
                            <span class="counter-value"><%=InactiveCount %></span>
                          <h3><a href="InActiveMemberList.aspx" style="font-family: Stencil">InActive Members</a></h3>
                        </div>
                    </div>

                     <div class="col-md-4 col-sm-12">
                        <div class="counter purple">
                            <div class="counter-icon"><i class="fa fa-rocket"></i></div>
                            <span class="counter-value"><%=EnquiryCount %></span>
                           <h3><a href="EnquiryList.aspx" style="font-family: Stencil">Total Leads Count</a></h3>
                        </div>
                    </div>
                </div>
                <div class="row ptb-50">

                    <div class="col-md-4 col-sm-12">
                        <div class="counter orange">
                            <div class="counter-icon"><i class="fa fa-male"></i></div>
                            <span class="counter-value"><%=ExpiryLastWeekCount %></span>
                            <h3><a href="ExpiryMemberList.aspx" style="font-family: Stencil">Total Expiry in last week</a></h3>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-12">
                        <div class="counter green">
                            <div class="counter-icon"><i class="fa fa-rocket"></i></div>
                            <span class="counter-value"><%=BirthDayCount %></span>
                            <h3><a href="BirthdayMemberList.aspx" style="font-family: Stencil">Birthday's Today</a></h3>
                        </div>
                    </div>
                </div>
            </div>
		</div>
     
        </form>
     
	<!-- List area end -->
       <!--<div class="addmember uppercase" style="background: #a8ce3b; color: #f5d405;"><a href="MemberRegistration.aspx" style="color:#000000; font-family: Arial;"> + Add Member</a></div>-->
    <!-- footer area start -->
		<footer class="footer-area" style="background: #000000;">
		    <div class="container">
                <div class="footer-bottom">
                    <div class="row"  >
                        <div class="col-md-6 col-sm-6">
                            <div class="copyright">
                                <p style="color:#fff;">
                                    Designed and Developed by GaintArt Technologies Pvt LTD.
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
   
        function PickupConfirm(pick) {
            var picklen = pick.length;

            pick = pick.substring(6, picklen);
            $.ajax({
                url: "OrderConfirmation.aspx/PickupConfirm",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ ID: pick, Email: document.getElementById("Email"+ pick).innerHTML, Name: document.getElementById("Name" + pick).innerHTML }),
                success: function (result) {
                    document.getElementById("Pick" + pick).innerHTML = "Completed";
                    alert(result.d);
                },
            })
        }

        function Ordercompleted(complete) {
            var picklen = complete.length;

            complete = complete.substring(14, picklen);
            $.ajax({
                url: "OrderConfirmation.aspx/Ordercompleted",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ ID: complete, Email: document.getElementById("Email" + complete).innerHTML, Name: document.getElementById("Name" + complete).innerHTML }),
                success: function (result) {
                    document.getElementById("Complete" + complete).innerHTML = "Completed";
                    alert(result.d);
                },
            })
        }

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
