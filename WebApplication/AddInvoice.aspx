<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddInvoice.aspx.cs" Inherits="WebApplication2.AddInvoice" %>

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
<body>
    <!-- header start -->
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
                    <h3  class="text-white text-center" style="font-weight:bolder;">GENRATE </h3>
                        </div>
                
                <div class="col-md-2 col-sm-1 col-xs-1 mt-30 alignright text-black" style="font-size:20px; text-decoration:underline;">
                    <div class="main-menu f-right c1">
                                <nav>
                                    <ul>
                                       <li class="c2"><a style="padding:0px;" href="Home.aspx">LOGOUT</a></li>
                                        
                                    </ul>
                                </nav>
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
                                <h4 class="black">Add Inovice</h4>

                            </div>
                            <div class="login-form">
                                
                                <form runat="server">
                                    <div class="col-md-4 col-lg-4">
                                            </div>
                                    <div class="col-md-4 col-lg-4 col-sm-12">
                                        <asp:TextBox ReadOnly="true" name="memberid" id="MemberId" runat="server"/>
                                    <p class="h3 black">Invoice Date:</p>
                                    <input type="date" id="invoicedate" name="invoicedate"/>
                                     <br />
                                    <input name="paidamount" id="paidamount" placeholder="Paid Amount" />


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
		<footer class="footer-area" style="background: #3d8d42;">
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
            if ($('.message').text() == "Invoice Data added successfully") {
                window.location.href = "MemberDetails.aspx?MemberId=" + $("#MemberId").val();
            }

        })

        function getDate()
        {
            var today = new Date();
            var dd = String(today.getDate()).padStart(2, '0');
            var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
            var yyyy = today.getFullYear();
            today = yyyy + '-' + mm + '-' + dd;
            document.getElementById("invoicedate").value = today;
        }

        $(function () {
            var dtToday = new Date();

            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if (month < 10)
                month = '0' + month.toString();
            if (day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;

            // or instead:
            // var maxDate = dtToday.toISOString().substr(0, 10);

            $('#invoicedate').attr('min', maxDate);
        });

        function SubmitData() {

            if (document.getElementById('invoicedate').value == "") { alert("Please Enter Invoice Date"); return; }
            if (document.getElementById('paidamount').value == "") { alert("Please Enter Paid Amount"); return; }
            if (document.getElementById('paidamount').value == "") { alert("Value SHould be greater than 0"); document.getElementById('paidamount').value = "0"; return; }
            $.ajax({
                url: "AddInvoice.aspx/AddInvoiceData",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ MemberId: $("#MemberId").val(), InvoiceDate: $("#invoicedate").val(), PaidAmount: $("#paidamount").val() }),
                
                success: function (result) {
                    var get = result.d;
                    if (get == "Member Added")
                    {
                        alert("Invoice Data added successfully");
                        window.location.href = "MemberDetails.aspx?MemberId=" + $("#MemberId").val();
                    }
                    if(get == "401")
                    {
                        alert("Current Paid Amount is more than the Last Due Amount");
                    }
                },
                failure:function(response)
                {
                    alert("Current Paid Amount is greater than Previous Due Amount");
                }
               
            })
        }

    </script>
</body>
</html>
