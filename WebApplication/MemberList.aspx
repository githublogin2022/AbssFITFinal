<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="WebApplication2.MemberList" %>

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

                <div class="row">
                    <div class="col-md-1 col-sm-3 col-xs-4">
                        <div class="logo mt-10 ml-30">
                            
                                <img src="images/Gym/Logo.jpg"  width="100" height="100" alt="">
                                
                            
                        </div>
                    </div>
                    <div class="col-md-7 col-sm-8 col-xs-7 mt-30">
                  <h3  class="text-black text-center" style="font-weight:bolder; color: #FFFFFF; font-family: Stencil;">MEMBERSHIP MANAGEMENT SOLUTION</h3>
                        </div>
                
                <div class="col-md-4 col-sm-1 col-xs-1 mt-30 text-black" style="font-size:10px; text-decoration:underline;">
                    <div class="main-menu f-left text-center">
                                <nav>
                                    <ul>
                                         <li><a style="padding:0px; font-size:medium; color: #FFFFFF; font-family: Stencil;" href="Dashboard.aspx">Dashboard &nbsp;|&nbsp;</a></li>
                                        <li><a style="padding:0px; font-size:16px; color: #FFFFFF; font-family: Stencil;" href="MemberRegistration.aspx">Add Member &nbsp;|&nbsp;</a></li>
                                       <li><a style="padding:0px; font-size:16px; color: #FFFFFF; font-family: Stencil;" href="Home.aspx">LOGOUT</a></li>
                                        
                                    </ul>
                                </nav>
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
                               
                                        <li class="mega-position"><a href="Dashboard.aspx">Dashboard</a></li>
                                        <li><a href="MemberRegistration.aspx">Member Registration</a></li>
                                        <li><a href="Home.aspx">Logout</a></li>
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
                    
                    <div class="col-md-12">
                        <div class="login-content">
                                <asp:GridView ID="MemberListGridView"  HeaderStyle-BackColor="#000" HeaderStyle-ForeColor="#e5e20f"
                                RowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                                runat="server" AutoGenerateColumns="false" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center"
                                  OnPageIndexChanging="MemberListGridView_PageIndexChanging" AllowPaging="True" PageSize="10">
                                    <PagerSettings  Mode="NumericFirstLast" PageButtonCount="2" FirstPageText="First" LastPageText="Last" />
                                <Columns>
                                     <asp:TemplateField HeaderText = "Name" ItemStyle-Width="150" SortExpression="FullName">
                                        <ItemTemplate>
                                            <asp:HyperLink runat="server" NavigateUrl='<%# Eval("Member_ID", "~/MemberDetails.aspx?MemberId={0}") %>'
                                                Text='<%# Eval("FullName") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Member_ID" HeaderText="Member ID" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="EmailAddress" HeaderText="Email" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="Member_height_during_reg" HeaderText="Height" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="Member_weight_during_reg" HeaderText="Weight" ItemStyle-Width="150" />
                                    <asp:BoundField DataField="Age" HeaderText="Age" ItemStyle-Width="50" />
                                    <asp:TemplateField HeaderText="Status" ItemStyle-Width="115" ItemStyle-HorizontalAlign = "Center">
                                    <ItemTemplate>
                                        <asp:Image ImageUrl='<%# "~/images/Gym/" + (Eval("Active_Inactive_cd").ToString() == "0" ? "Inactive.png" : "Active.png") %>' runat="server" Height = "50" Width = "115" />
                                    </ItemTemplate>
                                    </asp:TemplateField>
                  
                                </Columns>
                            </asp:GridView>    
                        </div>
                    </div>
                    
                </div>
		    </div>
		</div>
        </form>
	<!-- List area end -->
  <!-- footer area start -->
		<footer class="footer-area" style="background: #000000;">
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
    </script>
</body>
</html>
