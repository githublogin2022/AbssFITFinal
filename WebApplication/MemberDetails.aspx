<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberDetails.aspx.cs" Inherits="WebApplication2.MemberDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="x-ua-compatible" content="ie=edge"/>
        <title>HFIT:ABSS</title>
        <meta name="description" content=""/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <style type="text/css">
            .Initial
            {
              display: block;
              padding: 4px 18px 4px 18px;
              float: left;
              background: url("../assets/css/images/InitialImage.png") no-repeat right top;
              color: Black;
              font-weight: bold;
            }
            .Initial:hover
            {
              color: White;
              background: url("../assets/css/images/SelectedButton.png") no-repeat right top;
            }
            .Clicked
            {
              float: left;
              display: block;
              background: url("../assets/css/images/SelectedButton.png") no-repeat right top;
              padding: 4px 18px 4px 18px;
              color: Black;
              font-weight: bold;
              color: White;
            }
         </style>
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
		
		<!-- all css here -->
        <link rel="stylesheet" href="assets/css/TabMenu.css"/>
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
                    <div class="col-md-4 col-sm-3 col-xs-6">
                        <div class="logo">
                            <a href="index-2.html">
                                <img src="images/Gym/Logo.jpg" width="100" height="100" alt="">
                            </a>
                        </div>
                    </div>


                    <div class="col-md-2 col-sm-3 col-xs-1">
                       
                    </div>
                     <div class="col-md-2 col-sm-2 col-xs-1 ptb-30">
                       
                    </div>
                     <div class="col-md-2 col-sm-2 col-xs-2 ptb-30 alignright">
                       <asp:HyperLink ID="Dashboard" Font-Size="Medium" CssClass="loginbutton uppercase" runat="server" NavigateUrl="~/Dashboard.aspx" Text="Member Dashboard" ForeColor="White" Font-Names="Stencil"></asp:HyperLink>
                    </div>
                     <div class="col-md-2 col-sm-2 col-xs-2 ptb-30 alignright class=c1">
                        <asp:HyperLink ID="MemberList" Font-Size="Medium" CssClass="loginbutton uppercase" runat="server" NavigateUrl="~/MemberList.aspx" Text="View Members" ForeColor="White" Font-Names="Stencil"></asp:HyperLink>
                         <asp:HyperLink ID="Logout" Font-Size="Medium" CssClass="loginbutton uppercase" runat="server" NavigateUrl="~/Home.aspx" Text="Logout" Visible="false" ForeColor="White"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header end -->
    <!-- List area start -->

    <div class="login-area ptb-30 home-background-black">
		    <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="login-content">
                           <h1 class="black" style="font-family: Stencil; color: #FFFFFF;"><asp:Label ID="Label1" runat="server" ></asp:Label></h1>
                            
                            
                           <h2 class="black" style="font-family: Stencil; color: #FFFFFF;">Plan Detail -> <asp:Label ID="Label2" runat="server" ></asp:Label></h2> 
                           <h3 class="black" style="font-family: Stencil; color: #FFFFFF;">Status -> <%= (IsDietPlan != true ? " <img src='images/Gym/redcross.png' id='redcross' onclick='changeImage()' alt=''>" : "<img src='images/Gym/greentick.png' id='greentick' alt=''>") %> DietPlan <%= (IsWeeklyCheckup != true ? " <img src='images/Gym/redcross.png' id='redcross' onclick='changeImage()' alt=''>" : "<img src='images/Gym/greentick.png' id='greentick' alt=''>") %> Weekly Checkup</h3>
                        <form id="form2" runat="server">  
                                <!-- List area start -->
                                <div class="login-area ptb-40">          
                                    <table class="member-details" border="1px solid black">
                                        <tbody>
                                        <tr style="background-color:black; color:lemonchiffon;">
                                            <th>Age</th>
                                            <th>Gender</th>
                                            <th>Current Weight</th>
                                            <th>Height</th>
                                            <th>Fat <%= isLossOrGain %> By</th>
                                            <th>Member Status</th>
                                        </tr>
                                           <%Response.Write(MemberData());%>
                                        
                                        </tbody>
                                    </table>
	                            </div>
	                            <!-- List area end -->
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            
                             <table width="100%" align="center">
                              <tr>
                                <td style="padding: 0px 0px;">
                                  <asp:Button Text="Member Information" BorderStyle="None" ID="Tab1" CssClass="Initial" runat="server"
                                      OnClick="Tab1_Click" />
                                  <asp:Button Text="Invoice" BorderStyle="None" ID="Tab2" CssClass="Initial" runat="server"
                                      OnClick="Tab2_Click" />
                                  <asp:Button Text="Weekly Checkup" BorderStyle="None" ID="Tab3" CssClass="Initial" runat="server"
                                      OnClick="Tab3_Click" />
                                  <asp:Button Text="Measurements" BorderStyle="None" ID="Tab4" CssClass="Initial" runat="server"
                                      OnClick="Tab4_Click" />
                                  <asp:Button Text="Email" BorderStyle="None" ID="Tab5" CssClass="Initial" runat="server"
                                      OnClick="Tab5_Click" />
                                  <asp:MultiView ID="MainView" runat="server">
                                    <asp:View ID="View1" runat="server">
                                       <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                          <td>
                                              <asp:DataList ID="dl1" runat="server"      
                                                  RepeatDirection="Horizontal"      
                                                  RepeatColumns="2"      
                                                  OnEditCommand="dl1_EditCommand"      
                                                  OnCancelCommand="dl1_CancelCommand"      
                                                  OnUpdateCommand="dl1_updateCommand"   
                                                  OnItemDataBound="dl1_ItemDataBound"   
                                                  Width="100%">      
                                                  
                                                <ItemStyle />      
                                                <ItemTemplate>      
                                                    <table border="1" class="member-info">   
                                                            <tr>      
                                                            <th>Full Name:</th>      
                                                            <td>      
                                                                <asp:Label ID="lblfullname" runat="server" Text='<%# Eval("FullName") %>'>      
                                                                </asp:Label>      
                                                            </td>      
                                 
                                                            </tr>       
                                                            <tr> 
                                                            <tr>      
                                                            <th>Phone Number:</th>      
                                                            <td>      
                                                                <asp:Label ID="lblphonenumber" runat="server" Text='<%# Eval("PhoneNumber") %>'>      
                                                                </asp:Label>      
                                                            </td>      
                                 
                                                            </tr>         
                                                            <th>Email Address:</th>      
                                                            <td>      
                                                                <asp:Label ID="lblemail" runat="server" Text='<%# Eval("EmailAddress") %>'>      
                                                                </asp:Label>      
                                                            </td>      
                                 
                                                            </tr>      
                                                            <tr>      
                                                                <th>Address:</th>      
                                                                <td>      
                                                                    <asp:Label ID="lbladdress" runat="server" Text='<%# Eval("Address") %>'>      
                                                                    </asp:Label>      
                                                                </td>      
                                                            </tr>  
                                                            
                                                            <tr>      
                                                                <th>Start Plan Date:</th>      
                                                                <td>      
                                                                    <asp:Label ID="lblstartdate" runat="server" Text='<%# Eval("StartPlanDate", "{0:MM-dd-yyyy}") %>'>      
                                                                    </asp:Label>      
                                                                </td>      
                                                            </tr>      
                                                            <tr>      
                                                                <th>Expiry Date</th>      
                                                                <td>      
                                                                    <asp:Label ID="lblexpdate" runat="server" Text='<%# Eval("ExpirePlanDate", "{0:MM-dd-yyyy}")  %>'>      
                                                                    </asp:Label>      
                                                                </td>      
                                                            </tr>   
                                                            <tr>      
                                                                <th>Active/InActive</th>      
                                                                <td>      
                                                                    <asp:Label ID="lblactive" runat="server" Text='<%# Eval("AIE_Desc")  %>'>      
                                                                    </asp:Label>      
                                                                </td>      
                                                            </tr>     
                                                            <tr>      
                                                                <td colspan="3" style="text-align:center; background-color:white">  
                                                                    <asp:Button ID="btn1" Width="20%" ForeColor="White" BackColor="Black" runat="server"  CommandName="edit" Text="Edit" />  
                                                                          
                                                                </td>      
                                                            </tr>      
                                                        </table>      
                                                    </ItemTemplate>      
                                                <EditItemStyle CssClass="itemstyle" />      
                                                <EditItemTemplate>      
                                                    <table border="1" class="member-info">      
                                                            <tr>      
                                                            <th>Full Name:</th>      
                                                            <td>      
                                                                <asp:TextBox ID="txtfullname" ReadOnly="true" runat="server" Text='<%# Eval("FullName") %>'>      
                                                                </asp:TextBox>      
                                                            </td>      
                                          
                                                            </tr>      
                                                            <tr>      
                                                                <th>Phone Number:</th>      
                                                                <td>      
                                                                    <asp:TextBox ID="txtphonenumber" runat="server" Text='<%# Eval("PhoneNumber") %>'>      
                                                                    </asp:TextBox>      
                                                                </td>      
                                                            </tr>      
                                                            <tr>      
                                                                <th>Email ID:</th>      
                                                                <td>      
                                                                    <asp:TextBox ID="txtemail" runat="server" Text='<%# Eval("EmailAddress") %>'>      
                                                                    </asp:TextBox>      
                                                                </td>      
                                                            </tr>      
                                                            <tr>      
                                                                <th>Address:</th>      
                                                                <td>      
                                                                    <asp:TextBox ID="txtaddress" runat="server" Text='<%# Eval("Address") %>'>      
                                                                    </asp:TextBox>      
                                                                </td>      
                                                            </tr>  
                                                            <tr>      
                                                                <th>Change Diet Plan :</th>      
                                                                <td>      
                                                                    <asp:DropDownList ID="ddlPlan" runat="server">   
                                                                        <asp:ListItem Value="0">----- Select Plan -----</asp:ListItem>   
                                                                        <asp:ListItem Value="1">One Session</asp:ListItem>
                                                                        <asp:ListItem Value="2">Six Weeks</asp:ListItem>
                                                                        <asp:ListItem Value="3">Three Months</asp:ListItem>
                                                                        <asp:ListItem Value="4">Six Months</asp:ListItem>
                                                                        <asp:ListItem Value="5">Twelve Months</asp:ListItem>
                                                                    </asp:DropDownList>      
                                                                </td>      
                                                            </tr>     
                                                            <tr>      
                                                                <th>Start Plan Date:</th>      
                                                                <td>      
                                                                    <asp:TextBox TextMode="Date"  ID="txtstartdate" runat="server" Text='<%# Eval("StartPlanDate", "{0:yyyy-MM-dd}") %>'>      
                                                                    </asp:TextBox>      
                                                                </td>      
                                                            </tr>
                                                            <tr>      
                                                                <th>Expiry Date:</th>      
                                                                <td>      
                                                                     <asp:TextBox TextMode="Date" ID="txtexpirydate" runat="server" Text='<%# Eval("ExpirePlanDate", "{0:yyyy-MM-dd}") %>'>      
                                                                    </asp:TextBox> 
                                                          
                                                                </td>      
                                                            </tr> 
                                                            <tr>      
                                                                <th>Is Weekly Checkup:</th>      
                                                                <td>      
                                                                    <asp:DropDownList  ID="ddlIsWeeklyCheckup" runat="server">      
                                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                                    </asp:DropDownList>      
                                                                </td>      
                                                            </tr>
                                                            <tr>      
                                                                <th>Is Diet Plan Shared :</th>      
                                                                <td>      
                                                                    <asp:DropDownList  ID="ddlIsDietPlanShared" runat="server">      
                                                                        <asp:ListItem Value="1">Yes</asp:ListItem>
                                                                        <asp:ListItem Value="0">No</asp:ListItem>
                                                                    </asp:DropDownList>      
                                                                </td>      
                                                            </tr>
                                                            <tr>      
                                                                <th>Active / Inactive :</th>      
                                                                <td>      
                                                                    <asp:DropDownList  ID="ddlactive" runat="server">      
                                                                        <asp:ListItem Value="Active">Active</asp:ListItem>
                                                                        <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                                                                    </asp:DropDownList>      
                                                                </td>      
                                                            </tr>               
                                                            <tr>      
                                                                <td colspan="3" style="text-align:center; background-color:white">   
                                                                    <asp:Button Width="20%" ForeColor="White" BackColor="Black"  ID="btn3" runat="server" CommandName="update" Text="Update" />   
                                                                    <asp:Button ID="btn4" runat="server" Width="20%" ForeColor="White" BackColor="Black"  CommandName="cancel" Text="Cancel" />      
                                                                </td>      
                                                            </tr>      
                                                        </table>      
                                                    </EditItemTemplate>      
                                </asp:DataList>      
                                          </td>
                                        </tr>
                                       </table>
                                    </asp:View>
                                    <asp:View ID="View2" runat="server">
                                      <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                          <td>
                                              <asp:LinkButton Font-Size="Smaller" ID="AddInvoiceButton"  CssClass="loginbutton" Text='Add Invoice' OnClick="AddInvoice"
                                                  runat="server" /> |
                                            <asp:LinkButton Font-Size="Smaller"  CssClass="loginbutton" Text='Refresh' OnClick="RefreshInvoice"
                                                  runat="server" />
                                             <asp:GridView ID="InvoiceGridView" Width="100%"  HeaderStyle-BackColor="#000" HeaderStyle-ForeColor="#e5e20f"
                                RowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                                             runat="server" AutoGenerateColumns="false" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center"
                                                 OnRowEditing="InvoiceGridView_RowEditing" OnRowCancelingEdit="InvoiceGridView_RowCancelingEdit" OnRowDeleting="InvoiceGridView_RowDeleting" OnRowUpdating="InvoiceGridView_RowUpdating">
                                             <Columns>
                                                
                                                 <asp:BoundField ControlStyle-CssClass="inputgdviewforDate" ReadOnly="true"  DataField="InvoiceDate" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Invoice Date" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview"  DataField="Invoice_ID" HeaderText="Invoice ID" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview"  DataField="Plan_Amount" HeaderText="Plan Amount" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview"  DataField="Discount_Amount" HeaderText="Discount Amount" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview"  DataField="Paid_Amount" HeaderText="Paid Amount" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview"  DataField="Due_Amount" HeaderText="Due Amount" ItemStyle-Width="150" />
                                                 <asp:BoundField  ControlStyle-CssClass="inputgdview" ReadOnly="true"  DataField="PaymentMode_Desc" HeaderText="PaymentMode Desc" ItemStyle-Width="150" />
                                                                 
                                                   <asp:TemplateField HeaderText="Status" ItemStyle-Width="200">
                                                       <ItemTemplate>
                                                           <asp:LinkButton Font-Size="Smaller"  Text='Download Invoice' OnClick="test"
                                                               runat="server" />
                                                       </ItemTemplate>

                                                   </asp:TemplateField>
                                                     
                                             </Columns>
                                         </asp:GridView>
                                          </td>
                                        </tr>
                                      </table>
                                    </asp:View>
                                    <asp:View ID="View3" runat="server">
                                      <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                          <td>
                                            <asp:LinkButton Font-Size="Smaller"  ID="AddWeeklyCheckupButton" CssClass="loginbutton" Text='Add Weekly Checkup' OnClick="AddWeeklyCheckup"
                                                  runat="server" /> |
                                            <asp:LinkButton Font-Size="Smaller"  CssClass="loginbutton" Text='Refresh' OnClick="RefreshWeeklyCheckup"
                                                  runat="server" />
                                            <asp:GridView ID="WeeklyCheckupGridView"   HeaderStyle-BackColor="#000" HeaderStyle-ForeColor="#e5e20f"
                                RowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                                            runat="server" AutoGenerateColumns="false" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center" 
                                            OnRowEditing="WeeklyCheckupGridView_RowEditing" OnRowCancelingEdit="WeeklyCheckupGridView_RowCancelingEdit" OnRowDeleting="WeeklyCheckupGridView_RowDeleting" OnRowUpdating="WeeklyCheckupGridView_RowUpdating"
                                                 OnPageIndexChanging="WeeklyCheckupGridView_PageIndexChanging" AllowPaging="True" PageSize="8">
                                    <PagerSettings  Mode="NumericFirstLast" PageButtonCount="2" FirstPageText="First" LastPageText="Last" />
                                            <Columns>
                                                <asp:BoundField ControlStyle-CssClass="inputgdviewforDate" ReadOnly="true"  DataField="CheckUP_Date" ApplyFormatInEditMode="true" DataFormatString="{0:dd-M-yyyy}" HeaderText="Checkup Date" ItemStyle-Width="240" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="Member_weight" HeaderText="Member Weight" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="VF" HeaderText="VF" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="TSF" HeaderText="TSF" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="TF" HeaderText="TF" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="MA" HeaderText="MA" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="BMI" HeaderText="BMI" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="SM" HeaderText="SM" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview"  DataField="BMR" HeaderText="BMR" ItemStyle-Width="150" />
                                                <asp:CommandField ShowEditButton="true" />
                                                <asp:CommandField ShowDeleteButton="true" />
                                            </Columns>
                                        </asp:GridView>
                                          </td>
                                        </tr>
                                      </table>
                                    </asp:View>
                                    <asp:View ID="View4" runat="server">
                                      <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                        <tr>
                                          <td>
                                            <asp:LinkButton Font-Size="Smaller" ID ="AddMeasurementButton"  CssClass="loginbutton" Text='Add Measurement' OnClick="AddMeasurements"
                                                  runat="server" /> |
                                            <asp:LinkButton Font-Size="Smaller"  CssClass="loginbutton" Text='Refresh' OnClick="RefreshMeasurements"
                                                  runat="server" />
                                            <asp:GridView ID="MeasurementGridView"  HeaderStyle-BackColor="#000" HeaderStyle-ForeColor="#e5e20f"
                                RowStyle-BackColor="LightYellow" AlternatingRowStyle-BackColor="White" AlternatingRowStyle-ForeColor="#000"
                                            runat="server" AutoGenerateColumns="false" AlternatingRowStyle-HorizontalAlign="Center" RowStyle-HorizontalAlign="Center"
                                            OnRowEditing="MeasurementGridView_RowEditing" OnRowCancelingEdit="MeasurementGridView_RowCancelingEdit" OnRowDeleting="MeasurementGridView_RowDeleting" OnRowUpdating="MeasurementGridView_RowUpdating"
                                                OnPageIndexChanging="MeasurementGridView_PageIndexChanging" AllowPaging="True" PageSize="8">
                                    <PagerSettings  Mode="NumericFirstLast" PageButtonCount="2" FirstPageText="First" LastPageText="Last" />
                                            <Columns>
                                                <asp:BoundField ControlStyle-CssClass="inputgdviewforDate" ReadOnly="true" DataField="Measurement_Date" ApplyFormatInEditMode="true" DataFormatString="{0:dd-M-yyyy}" HeaderText="Measurement Date" ItemStyle-Width="210" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Neck" HeaderText="Neck" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Arm" HeaderText="Arm" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Chest" HeaderText="Chest" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Abdomen" HeaderText="Abdomen" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Waist" HeaderText="Waist" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Hip" HeaderText="Hip" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Thigh" HeaderText="Thigh" ItemStyle-Width="150" />
                                                <asp:BoundField ControlStyle-CssClass="inputgdview" DataField="Calf" HeaderText="Calf" ItemStyle-Width="150" />                  
                                                 <asp:CommandField ShowEditButton="true" />
                                                <asp:CommandField ShowDeleteButton="true" />
                                            </Columns>
                                        </asp:GridView>
                                          </td>
                                        </tr>
                                      </table>
                                    </asp:View>
                                    <asp:View ID="View5" runat="server">
                                    <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                                    <tr>
                                        <td>
                                        <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                                    Name <%=FullName %>
                                </div>
                                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                    EmailID <%= EMailID %>
                                </div>
                                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                       <label class="h3 black" for="cars">Choose an Event:</label><br />

                                         <select  class="selectplan h5 black" id="ddlEvent" onchange="WorkOnDietPlan()" >
                                             <option value="0">----- Select Category ------</option>
                                             <option value="BirthDay">BirthDay</option>
                                             <option value="Anniversary">Anniversary</option>
                                             <option value="Offers">Offers</option>
                                             <option value="Events">Events</option>
                                             
                                         </select>
                                  </div><br />
                                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                      <textarea class="email-event" id="EventMessage" rows="4" cols="50" name="EventMessage"></textarea>
                                  </div>
                                  <div class="col-lg-10 col-md-10 col-sm-12 col-xs-12">

                                  </div>
                                  <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                                      <button type="button" class="login-btn" onclick="SendMail()" >Send</button>
                                  </div>
                                        </td>
                                    </tr>
                                    </table>
                                </asp:View>
                                  </asp:MultiView>
                                </td>
                              </tr>
                             </table>
                            </div>
                        </form>  
                        </div>
                    </div>
                </div>
		    </div>
		</div>
	<!-- List area end -->
    <!-- footer area start -->
		<footer class="footer-area" style="background: #000000;">
		    <div class="container">
                <div class="footer-bottom ptb-10">
                    <div class="row"  >
                        <div class="col-md-6 col-sm-6">
                            <div class="copyright">
                                <p style="color:#fff;">
                                    Designed and Developed by GaintArt Technologies Pvt Ltd.
                                </p>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            
                        </div>
                    </div>
                </div>
		    </div>
		</footer>
		<!-- footer area end -->


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
   
        function SendMail() {
            $.ajax({
                url: "MemberDetails.aspx/SendMail",
                type: "POST",
                contentType: "application/json",
                dataType: "json",
                data: JSON.stringify({ EventCategory: $("#ddlEvent").val(), EventText: document.getElementById("EventMessage").value }),
                success: function (result) {
                    
                    alert(result.d);
                },
            })
        }
        function changeImage() {

                document.getElementById("redcross").innerHTML = document.getElementById("greentick").innerHTML;
        }
      <%--  function SetDates() {
            var label = document.getElementById('<%=lblstartdate.ClientID %>').innerText;

            document.getElementById('<%=txtstartdate.ClientID %>').value = label;
        }--%>
    </script>
</body>
</html>
