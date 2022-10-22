<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberRegistration.aspx.cs" Inherits="WebApplication2.MemberRegistration" %>

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
		        background: #088A68;
		    }

		    .message {
		        padding: 5px;
		        color: white;
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
		        background: #04B486;
		        color: white;
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
<body onload="return generatePassword()">
    <!-- header start -->
    <header class="header-area home-background">
     
        <div class="header-bottom">
            <div class="container">
                <div class="row">
              
                    <div class="col-md-12 col-sm-12 col-xs-12">
                        <div class="cart-menu">
                              <div class="logo f-left">
			                    <a href="Home.aspx">
                                    <img src="images/Gym/Logo.jpg" width="100" height="100" alt=""/>
                                </a>
			                </div>
                             <div class="col-md-8 col-sm-8 col-xs-7 mt-40">
                  <h3  class="text-white text-center" style="font-weight:bolder; font-family: Stencil;">MEMBERSHIP REGISTRATION</h3>
                        </div>
                            <div class="mt-39 main-menu f-right c1">
                                <nav>
                                    <ul>
                                        <li class="c2"><a href="Dashboard.aspx" style="font-family: Stencil">DASHBOARD</a></li>
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

                                        <li><a href="Dashboard.aspx">MEMBER DASHBOARD</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- mobile-menu-area end -->
    <!-- breadcrumbs start 
		<div class="breadcrumbs-area breadcrumb-bg ptb-50">
		    <div class="container">
		        <div class="breadcrumbs text-center">
                    <h2 class="breadcrumb-title">Member Registration</h2>
                </div>
		    </div>
		</div>
		breadcrumbs area end -->
    <!-- login area start -->
		<div class="login-area ptb-50 home-background-black">
		    <div class="container">
                <div class="row">
                        <div class="login-content">
                            <div class="login-title">
                                <h4 class="black"></h4>

                            </div>
                            <div class="login-form">
                                
                                <form runat="server">
                                    <div class="col-md-6 col-lg-5 col-sm-12">
                                     <input name="firstname" id="firstname" placeholder="First Name" alt="Enter First Name" autofocus="autofocus" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <input name="lastname" id="lastname" placeholder="Last Name" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <br />
                                    <input name="phonenumber" id="phonenumber" placeholder="Phone Number" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <br />
                                    <input name="email" id="email" placeholder="Email" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <br />
                                    
                                    <textarea name="address" id="address" rows="3" cols="50" placeholder="Address"></textarea>
                                     <p class="h3 black">Gender:</p>
                                    <input class="genderradio" style="height:10px;width:10px;" type="radio" id="Male" name="gender" value="1"/>
                                    <label class="h4 black" for="html">Male</label>
                                    <input class="genderradio" style="height:10px;width:10px;"  type="radio" id="Female" name="gender" value="2"/>
                                    <label class="h4 black" for="css">Female</label>
                                    <p class="h3 black">Birth Date:</p>
                                    <input type="date" id="birthdate" name="birthdate" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <p class="h3 black">Start Plan Date:</p>
                                    <input type="date" id="startdate" name="startdate" onchange="GetEndDateValue()" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <p class="h3 black">End Plan Date:</p>
                                    <input type="text" id="enddate" name="enddate" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <input style="border-style: dashed; border-width: thin; width:90%; background-color: #FFFFFF;" name="memberheight" id="memberheight" placeholder="Member Height During Reg" /><span style="font-weight:bold;"> cms.</span>
                                    <input style="border-style: dashed; border-width: thin; width:90%; background-color: #FFFFFF;" name="memberweight" id="memberweight" placeholder="Member Weight During Reg"/><span style="font-weight:bold;"> kg.</span>
                                    </div>
                                     <div class="col-md-6 col-lg-6 col-sm-12">
                                    <label class="h3 black" for="cars">Choose a Plan:</label><br />

                                         <select  class="selectplan h5 black" id="ddlDietPlan" onchange="WorkOnDietPlan()" style="border: thin dashed #000000; background-color: #FFFFFF">
                                             <option value="0">----- Select Plan ------</option>
                                             <option value="1">One Session</option>
                                             <option value="2">Six Weeks</option>
                                             <option value="3">Three Months</option>
                                             <option value="4">Six Months</option>
                                             <option value="5">Twevle Months</option>
                                         </select>
                                    
                                   <input type="text" id="totalplanamount" placeholder="Total Plan Amount" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <div class="col-md-6 col-lg-6 col-sm-12">
                                        <input style="height:14px;width:14px;" type="checkbox" id="IsDietPlanShared" name="IsDietPlanShared" value="IsDietPlanShared"/>
                                        <label  class="h4 black" for="vehicle1"> Diet Plan Shared</label>
                                    </div><br />
                                    <div class="col-md-6 col-lg-6 col-sm-12">
                                    </div>
                                    <input style="height:14px;width:14px;" type="checkbox" id="IsCheckupDone" name="IsCheckupDone" value="IsCheckupDone"/>
                                        <label  class="h4 black" for="vehicle1"> Check Up Done</label>
                                    <input name="discountamount" id="discountamount" onchange="GetDueAmount()"  onkeypress="return isNumberKey(event)" placeholder="Discount Amount" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <input name="paidamount" onchange="GetDueAmount()" id="paidamount" onkeypress="return isNumberKey(event)"  placeholder="Paid Amount" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <input name="dueamount"  readonly="true" id="dueamount" placeholder="Due Amount" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    <input name="emergencycontact" id="emergencycontact" placeholder="Emergency Contact" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                     <label class="h3 black" for="cars">Choose a Payment Mode:</label><br />

                                         <select  class="selectplan h5 black" id="ddlPaymentMode" onchange="return GetPaymentOption()" style="border: thin dashed #000000; background-color: #FFFFFF">
                                             <option value="0">-------- Select Payment Mode --------</option>
                                             <option value="1">Cash</option>
                                             <option value="2">Cheque</option>
                                             <option value="3">UPI</option>
                                         </select>
                                    
                                    <div id="payment_upi" style="display: none;">
                                        <img src="images/Gym/qrcode.png" alt=""/>
                                    </div> 
                                         <div id="payment_cheque" style="display: none;">
                                        <input type="text" id="chequenumber" placeholder="Cheque Number" />
                                        <input type="text" id="accountnumber" placeholder="Account Number" />
                                        <input type="text" id="bankname" placeholder="Bank Name" />
                                    </div>
                                    <div class="pl-0 pr-0 col-md-8 col-lg-8 col-sm-8">
                                               <input name="mempassword" id="mempassword" readonly="readonly" placeholder="Emergency Contact" style="border: thin dashed #000000; background-color: #FFFFFF" />
                                    </div>
                                         <div class="pl-1 pr-1 col-md-4 col-lg-4 col-sm-4">
                                              <button type="button" class="sendpassword" onclick="SendPassword()" >Send Mail</button>
                                            </div>
                                    </div>
                                    
                                    </div>
                                    
                                    <br />
                                    <div class="col-md-12 col-lg-12 col-sm-12">
                                        <div class="col-md-4 col-lg-4 col-sm-12">
                                            </div>
                                        <div class="col-md-2 col-lg-2 col-sm-12">
                                            <button type="button" class="login-btn" onclick="SubmitData()" >Submit</button>
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
                                           <a href="mailto:hfitabss@gmail.com" style="font-family: Stencil; color: #FFFFFF;">hfitabss@gmail.com</a>
                                        </span>
                                    </p>
                                 </div>
                                 <div class="col-md-4 col-sm-12">
                                    <p>
                                        <i class="pe-7s-call" style="color: #FFFFFF"></i>
                                        <span style="font-family: Stencil; color: #FFFFFF;">+91 9876543216 </span>
                                    </p>
                                 </div>
                                </div>
                            <div class="copyright" style="background-color: #000000; color: #000000;">
                                <p>
                                    Copyright © 2022
                                     <a href="#">GAINTART PVT LTD</a>
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


    <script>
        var currentCallback;
        function isNumberKey(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode != 46 && charCode > 31
                && (charCode < 48 || charCode > 57))
                return false;

            return true;
        }
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
            currentCallback();

        })
        function generatePassword() {
            var length = 8,
                charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789",
                retVal = "";
            for (var i = 0, n = charset.length; i < length; ++i) {
                retVal += charset.charAt(Math.floor(Math.random() * n));
            }
            document.getElementById("mempassword").value = retVal;
        }
        function SubmitData() {
            var isWeeklyCheckupDone = document.getElementById("IsCheckupDone").checked ? 1 : 0;
            var isDietPlanShared = document.getElementById("IsDietPlanShared").checked ? 1 : 0;

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
            if ($("input[type='radio'][name='gender']:checked").length <= 0) {
                alert("Please select Gender.");
                return;
            }
            if ($("#birthdate").val() == "") {
                alert("Please enter BirthDate.");
                return;
            }
            if ($("#ddlDietPlan").val() == 0) {
                alert("Please select Payment Mode.");
                return;
            }
            if ($("#startdate").val() == "") {
                alert("Please select Start Date.");
                return;
            }
            if ($("#ddlPaymentMode").val() == 0) {
                alert("Please select Payment Mode.");
                return;
            }
            if ($("#memberheight").val() == "") {
                alert("Please enter Member Height.");
                return;
            }
            if ($("#paidamount").val() == "") {
                alert("Please enter Paid Amount.");
                return;
            }
            if ($("#ddlPaymentMode").val() == 2) {
                if ($("#chequenumber").val() == "") {
                    alert("Please enter Paid Amount.");
                    return;
                }
                if ($("#accountnumber").val() == "") {
                    alert("Please enter Paid Amount.");
                    return;
                }
                if ($("#bankname").val() == "") {
                    alert("Please enter Paid Amount.");
                    return;
                }
            }



            $.ajax({
                url: "MemberRegistration.aspx/SubmitData",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({
                    FirstName: $("#firstname").val(), LastName: $("#lastname").val(), PhoneNumber: $("#phonenumber").val(), Email: $("#email").val(), Address: $("#address").val(), Gender: $("input[type='radio'][name='gender']:checked").val()
                    , BirhtDate: $("#birthdate").val(), StartDate: $("#startdate").val(), EndDate: $("#enddate").val(), PaymentMode: $("#ddlPaymentMode").val(), DietPlan: $("#ddlDietPlan").val(),
                    IsDietPlanShared: isDietPlanShared, IsCheckupDone: isWeeklyCheckupDone, MemberHeight: $("#memberheight").val(), MemberWeight: $("#memberweight").val(),
                    PlanAmount: $("#totalplanamount").val(), DiscountAmount: $("#discountamount").val(), PaidAmount: $("#paidamount").val(), DueAmount: $("#dueamount").val(),
                    ChequeNumber: $("#chequenumber").val(), AccountNumber: $("#accountnumber").val(), BankName: $("#bankname").val(), MemberPassword: $("#mempassword").val()
                }),

                success: function (result) {

                    var get = result.d;

                    if (get == "Member Added") {
                        alert("Member added successfully");
                        window.location = "MemberList.aspx";
                    }
                    else {
                        alert(get);
                    }
                    $("#firstname").val() = "";
                    $("#lastname").val() = "";
                    $("#email").val() = "";
                    $("#phonenumber").val() = "";
                    $("#address").val() = "";
                    $("#birthdate").val() = "";
                    $("#startdate").val() = "";
                    $("#enddate").val() = "";
                    $("#address").val() = "";
                    $("#ddlPaymentMode").val() = 0;
                    $("#ddlDietPlan").val() = 0;
                },

            })
        }
        function WorkOnDietPlan() {
            if (document.getElementById('ddlDietPlan').value == 1) {
                document.getElementById("discountamount").readOnly = true;
            }
            GetDietPlanValue();
            GetEndDateValue();
        }
        function GetPaymentOption() {
            var payment_type = document.getElementById('ddlPaymentMode').value;
            if (payment_type == 1) {
                document.getElementById('payment_upi').style.display = 'none';
                document.getElementById('payment_cheque').style.display = 'none';
            }
            if (payment_type == 2) {
                document.getElementById('payment_upi').style.display = 'none';
                document.getElementById('payment_cheque').style.display = 'block';
            }
            if (payment_type == 3) {
                document.getElementById('payment_cheque').style.display = 'none';
                document.getElementById('payment_upi').style.display = 'block';
            }

        }
        function GetDietPlanValue() {
            if (document.getElementById('startdate').value == "") {
                alert("Please select Start Date");
                document.getElementById('ddlDietPlan').value = 0
                return;
            }
            $.ajax({
                url: "MemberRegistration.aspx/GetDietPlanValue",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ DietPlanValue: $("#ddlDietPlan").val() }),
                success: function (result) {
                    var get = result.d;
                    document.getElementById("totalplanamount").value = get;
                },

            })
        }

        function GetEndDateValue() {
            if (document.getElementById('startdate').value == "") {
                document.getElementById('ddlDietPlan').value = 0
                alert("Please select Start Date");
                return;
            }
            $.ajax({
                url: "MemberRegistration.aspx/GetEndDateValue",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ StartDateValue: $("#startdate").val(), DietPlanValue: $("#ddlDietPlan").val() }),
                success: function (result) {
                    var get = result.d;
                    document.getElementById("enddate").value = get;
                },

            })

        }



        function SendPassword() {

            $.ajax({
                url: "MemberRegistration.aspx/SendPassword",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberPassword: $("#mempassword").val(), EmailAddress: $("#email").val(), FirstName: $("#firstname").val() }),
                success: function (result) {
                    var get = result.d;
                    alert(get);
                },


            })

        }

        function GetDueAmount() {

            var discount = 0;
            var paidamount = 0;
            var totalplanamount = 0;
            var total = 0;

            discount = document.getElementById("discountamount").value == "" ? 0 : Number(document.getElementById("discountamount").value);
            paidamount = Number(document.getElementById("paidamount").value);
            totalplanamount = Number(document.getElementById("totalplanamount").value);
            total = ((totalplanamount - discount) - paidamount);
            if (total < 0) {
                alert("Paid amount should not be more than Plan Amount");
                document.getElementById("discountamount").value = "";
                document.getElementById("paidamount").value = "";
            }
            else {
                document.getElementById("dueamount").value = total;
            }
        }

        var currentCallback;

        // override default browser alert

    </script>
</body>
</html>
