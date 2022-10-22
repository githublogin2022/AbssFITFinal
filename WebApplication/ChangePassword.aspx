<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="WebApplication2.ChangePassword" %>

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
                                     <img src="images/Gym/Logo.jpg" width="100" height="100" alt="">
                                </a>
			                </div>
                            <div class="main-menu f-right">
                                <nav>
                                    <ul>
                                       
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
                               
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    <!-- login area start -->
		<div class="login-area ptb-200 home-background-black">
		    <div class="container">
                <div class="row">
                   
                    
                        <div class="login-content">
                           
                            <div class="login-form">
                                
                                <form runat="server">
                                    <div class="col-md-4 col-lg-4">
                                            </div>
                                    <div class="col-md-4 col-lg-4 col-sm-12">
                                    
                                    <input type="text" id="memberid" name="memberid" placeholder="Enter Member ID" style="font-family: Stencil; color: #FFFFFF" />
                                     <br />
                                     <input type="text" readonly="readonly" id="membername" placeholder="Enter Member Name" name="membername" onclick="GetUserName()" style="font-family: Stencil; color: #FFFFFF" />
                                        <br />
                                    <input type="password" name="newpassword" id="newpassword" placeholder="Enter New Password" onclick="GetUserName()"  style="font-family: Stencil; color: #FFFFFF" />
                                            <br />
                                    <input type="password" name="reenternewpassword" id="reenternewpassword" placeholder="ReEnter New Password" onclick="GetUserName()"  style="font-family: Stencil; color: #FFFFFF" />

                                    <br />
                                    </div>
                                     <div class="col-md-4 col-lg-4 ">
                                            </div>
                                    <br />
                                    <div class="col-md-12 col-lg-12 col-sm-12">
                                        <div class="col-md-4 col-lg-4 col-sm-12">
                                            </div>
                                        <div class="col-md-2 col-lg-2 col-sm-12">
                                            <button type="button" class="login-btn" style="background:#f5d405; color:#000" onclick="SubmitData()" >Change Password</button>
                                            </div>
                                        <div class="col-md-2 col-lg-2 col-sm-12">
                                            <button type="button" class="login-btn" style="background:#f5d405; color:#000" onclick="history.back()" >Cancel</button>
                                            </div>
                                        <div class="col-md-4 col-lg-4 col-sm-12">
                                            </div>
                                    
                                    
                                       </div>
                                </form>
                                    
                            </div>
                        </div>
                    </div>
                
		    </div>
		</div>
	<!-- login area end -->
    <!-- footer area start -->
		 <!-- footer area start -->
		<footer class="footer-area" style="background: #000000; margin-top:9.3%; color: #000000;">
		    <div class="container">
                <div class="footer-bottom">
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
       
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode != 46 && charCode > 31
              && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
       

        
      
        function GetUserName() {
            if (document.getElementById("memberid") == "")
            {
                alert("Please Enter Member ID first");
                return;
            }
            $.ajax({
                url: "ChangePassword.aspx/GetUserName",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberId: $("#memberid").val()}),

                success: function (result) {
                    var get = result.d;
                    
                    if (get == "NoMember") {
                        alert("Please enter valid member id");
                        document.getElementById("memberid").value = "";
                        document.getElementById("membername").value = "";
                        document.getElementById("newpassword").value = "";
                        document.getElementById("reenternewpassword").value = "";
                    }
                    else 
                        {
                            document.getElementById("membername").value = get;
                        }
                    
                },
                failure: function (response) {
                    alert("Please Try Again");
                }

            })
        }
        

        function SubmitData() {
            if (document.getElementById("memberid") == "") {
                alert("Please Enter Member ID");
                return;
            }
            if (document.getElementById("newpassword") == "") {
                alert("Please Enter Password");
                return;
            }
            if (document.getElementById("reenternewpassword") == "") {
                alert("Please ReEnter Password");
                return;
            }
            if(document.getElementById("newpassword").value != document.getElementById("reenternewpassword").value)
            {
                alert("Password doesn't match.");
            }
            $.ajax({
                url: "ChangePassword.aspx/ChangeUserPassword",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberId: $("#memberid").val(), NewPassword: $("#newpassword").val()}),
                
                success: function (result) {
                    var get = result.d;
                    if (get == "Password Change")
                    {
                        alert("Password Change successfully");
                        window.location.href = "Login.aspx";
                    }
                    else {
                        alert("Please Try Again");
                    }
                },
                failure:function(response)
                {
                    alert("Please Try Again");
                }
               
            })
        }

    </script>
</body>
</html>
