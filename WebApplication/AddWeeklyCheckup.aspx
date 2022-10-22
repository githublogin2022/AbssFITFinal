<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddWeeklyCheckup.aspx.cs" Inherits="WebApplication2.AddWeeklyCheckup" %>

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
                                <h4 class="black">Add Weekly Details</h4>

                            </div>
                            <div class="login-form">
                                
                                <form runat="server">
                                    <div class="col-md-4 col-lg-4">
                                            </div>
                                    <div class="col-md-4 col-lg-4 col-sm-12">
                                        <asp:TextBox name="memberid" ReadOnly="true" id="MemberId" runat="server"/>
                                    <p class="h3 black">Check up Date:</p>
                                    <input type="date" id="checkupdate" name="checkupdate"/>
                                     <br />
                                     <input name="memberweight" id="memberweight" placeholder="Add Member Weight" />
                                    <br />
                                    <input name="VF" id="VF" placeholder="Add VF" />
                                    <br />
                                    <input name="TSF" id="TSF" placeholder="Add TSF" />
                                    <br />
                                    <input name="TF" id="TF" placeholder="Add TF" />
                                    <br />
                                    <input name="MA" id="MA" placeholder="Add MA" />
                                    <br />
                                    <input name="BMI" id="BMI" placeholder="Add BMI" />
                                    <br />
                                    <input name="BMR" id="BMR" placeholder="Add BMR" />
                                    <br />
                                    <input name="SM" id="SM" placeholder="Add SM" />
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
            if ($('.message').text() == "Weekly Checkup Data added successfully") {
                window.location.href = "MemberDetails.aspx?MemberId=" + $("#MemberId").val();
            }
            

        })
        function SubmitData() {
            if (document.getElementById('checkupdate').value == "") { alert("Please Enter Checkup Date value"); return; }
            if (document.getElementById('VF').value == "") { alert("Please Enter VF value"); return; }
            if (document.getElementById('TSF').value == "") { alert("Please Enter TSF value"); return; }
            if (document.getElementById('TF').value == "") { alert("Please Enter TF value"); return; }
            if (document.getElementById('MA').value == "") { alert("Please Enter MA value"); return; }
            if (document.getElementById('BMI').value == "") { alert("Please Enter BMI value"); return; }
            if (document.getElementById('BMR').value == "") { alert("Please Enter BMR value"); return; }
            if (document.getElementById('SM').value == "") { alert("Please Enter SM value"); return; }
            
            $.ajax({
                url: "AddWeeklyCheckup.aspx/AddWeeklyDetails",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberId: $("#MemberId").val(), CheckUpDate: $("#checkupdate").val(), MemberWeight: $("#memberweight").val(), VF: $("#VF").val(), TSF: $("#TSF").val(), TF: $("#TF").val(), MA: $("#MA").val(), BMI: $("#BMI").val(), BMR: $("#BMR").val(), SM: $("#SM").val() }),
                
                success: function (result) {
                    var get = result.d;
                    if (get == "Member Added")
                    {
                        alert("Weekly Checkup Data added successfully");
                        
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
