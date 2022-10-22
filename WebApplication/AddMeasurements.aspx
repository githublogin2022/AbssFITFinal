<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMeasurements.aspx.cs" Inherits="WebApplication2.AddMeasurements" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>ABSFIT</title>
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
<body>
    <!-- header start -->
    <header class="header-area">
     
        <div class="header-bottom">
            <div class="container">
                <div class="row">
              
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="cart-menu">
                              <div class="logo f-left">
			                    <a href="StudentLogin.aspx">
                                    <img src="images/Gym/gymlogo.png"  width="100" height="100" alt="">
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
                               <li><a href="Login.aspx">Home</a></li>
                                        <li class="mega-position"><a href="#">About Us </a></li>
                                        <li class="mega-position"><a href="#">Contact Us</a></li>
                                        <li><a href="MemberRegistration.aspx">Member Registration</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    <!-- login area start -->
		<div class="login-area ptb-50">
		    <div class="container">
                <div class="row">
                   
                    
                        <div class="login-content">
                            <div class="login-title">
                                <h4 class="black">Add Measurements</h4>

                            </div>
                            <div class="login-form">
                                
                                <form runat="server">
                                    <div class="col-md-4 col-lg-4">
                                            </div>
                                    <div class="col-md-4 col-lg-4 col-sm-12">
                                        <asp:TextBox name="memberid" ReadOnly="true" id="MemberId" runat="server"/>
                                    <p class="h3 black">Measurement Date:</p>
                                    <input type="date" id="measurementdate" name="measurementdate"/>
                                     <br />
                                     <input name="neck" id="neck" placeholder="Add Neck" />
                                    <br />
                                    <input name="arm" id="arm" placeholder="Add Arm" />
                                    <br />
                                    <input name="chest" id="chest" placeholder="Add Chest" />
                                    <br />
                                    <input name="abdomen" id="abdomen" placeholder="Add Abdomen" />
                                    <br />
                                    <input name="waist" id="waist" placeholder="Add Waist" />
                                    <br />
                                    <input name="hip" id="hip" placeholder="Add Hip" />
                                    <br />
                                    <input name="thigh" id="thigh" placeholder="Add Thigh" />
                                    <br />
                                    <input name="calf" id="calf" placeholder="Add Calf" />
                                    <br />
                                    </div>
                                     <div class="col-md-4 col-lg-4 ">
                                            </div>
                                    <br />
                                    <div class="col-md-12 col-lg-12 col-sm-12">
                                        <div class="col-md-4 col-lg-4 col-sm-12">
                                            </div>
                                        <div class="col-md-2 col-lg-2 col-sm-12">
                                            <button type="button" class="login-btn" onclick="SubmitData()" >Add</button>
                                            </div>
                                        <div class="col-md-2 col-lg-2 col-sm-12">
                                            <button type="button" class="login-btn" onclick="history.back()" >Cancel</button>
                                            </div>
                                        <div class="col-md-4 col-lg-4 col-sm-12">
                                            </div>
                                    
                                    
                                       </div>
                                </form>
                                    
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
		<footer class="footer-area" style="background: #3d8d42; margin-bottom:0px; margin-top: 3%;" >
		    <div class="container">
                <div class="footer-bottom">
                    <div class="row"  >
                        <div class="col-md-6 col-sm-6">
                            <div class="copyright">
                                <p style="color:#000;">
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
            
           
        
           
        
            function SubmitData() {
                if(document.getElementById('measurementdate').value == "") {alert("Please Enter measurementdate value"); return;}
                if(document.getElementById('neck').value == "") {alert("Please Enter neck value"); return;}
                if(document.getElementById('arm').value == "") {alert("Please Enter arm value"); return;}
                if(document.getElementById('chest').value == "") {alert("Please Enter chest value"); return;}
                if(document.getElementById('abdomen').value == "") {alert("Please Enter abdomen value"); return;}
                if(document.getElementById('waist').value == "") {alert("Please Enter waist value"); return;}
                if(document.getElementById('hip').value == "") {alert("Please Enter hip value"); return;}
                if(document.getElementById('thigh').value == "") {alert("Please Enter thigh value"); return;}
                if (document.getElementById('calf').value == "") { alert("Please Enter calf value"); return;}
            $.ajax({
                url: "AddMeasurements.aspx/AddMeasurement",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberId: $("#MemberId").val(), MeasurementDate: $("#measurementdate").val(), Neck: $("#neck").val(), Arm: $("#arm").val(), Chest: $("#chest").val(), Abdomen: $("#abdomen").val(), Waist: $("#waist").val(), Hip: $("#hip").val(), Thigh: $("#thigh").val(), Calf: $("#calf").val() }),
                
                success: function (result) {
                    var get = result.d;
                    if (get == "Member Added")
                    {
                        alert("Measurement Data added successfully");
                        
                    }
                    else
                    {
                        alert(get);
                    }
                },
               
            })
        }

    </script>
</body>
</html>
