<%@ Page Language="C#" AutoEventWireup="true" CodeFile="farmerhomepage.aspx.cs" Inherits="farmerhomepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />

    <script src="slides/jquery.js"></script>

    <script src="slides/script.js"></script>
    <link href="slides/Style.css" rel="stylesheet" />
    <title></title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="WOW Slider, 3d Image Slider, Html Image Slider" />

    <meta name="description" content="WOWSlider created with WOW Slider, a free wizard program that helps you easily generate beautiful web slideshow" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />
    
</head>
<body>
    <script>
        $(function () {
            $("#dts1").hide();
            $("#ats1").click(function () {
                $("#dts1").slideToggle("100");

            });
        });

        $(function () {
            $("#dts2").hide();
            $("#ats2").click(function () {
                $("#dts2").slideToggle("100");

            });
        });

        $(function () {
            $("#dts3").hide();
            $("#ats3").click(function () {
                $("#dts3").slideToggle("100");

            });
        });
    </script>
    <form id="form2" runat="server">
        <div class="mr-lg-5 ml-lg-5">

            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
                <div class="float-lg-right">
                    <p class="fa fa-user-circle" aria-hidden="true">
                        <asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label>
                    </p>
                   
                </div>

            </div>



            <!--NAV BAR-->
            <nav class="navbar navbar-expand-lg navbar-light bg-light">

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="navbar-brand" href="#">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="navbar-brand" href="formerlogin.aspx">logout</a>
                        </li>

                    </ul>
                    <div class="form-inline my-2 my-lg-0">
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></asp:TextBox>

                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </div>
                </div>
            </nav>
            <!--END NAV BAR-->
            <div class="row">
                <%-- <ul class="nav nav-pills">--%>

                <div class="col-2">
                    <a class="nav-link" href="FarmerViewMarketPrices.aspx" data-toggle="tooltip" data-placement="top" title="View latest Market prices">
                        <asp:Image ID="i3" runat="server" ImageUrl="~/imgs/mprice.png" Height="20px" />View Market_price</a>
                </div>
                <div class="col-2">
                    <a class="nav-link" href="FarmerViewDealers.aspx">
                        <asp:Image ID="i6" runat="server" ImageUrl="~/imgs/icon3.png" Height="20px" />View Availble Agents</a>
                </div>
                <div class="col-2">
                    <a class="nav-link" href="cropsview.aspx" data-toggle="tooltip" data-placement="bottom" title="Crops details">
                        <asp:Image ID="i1" runat="server" ImageUrl="~/imgs/crops.png" Height="20px" Width="28px" />Crops</a>
                </div>
                <div class="col-2">
                    <a class="nav-link" href="viewgovtschemes.aspx" data-toggle="tooltip" data-placement="top" title="Government schemes">
                        <asp:Image ID="i5" runat="server" ImageUrl="~/imgs/govscheme1.jpg" Height="20px" />Government Schemes</a>
                </div>
                <div class="col-2">
                    <a class="nav-link" href="AgriUpdates.aspx" data-toggle="tooltip" data-placement="bottom" title="view latest agriculture news">
                        <asp:Image ID="i2" runat="server" ImageUrl="~/imgs/updates.png" Height="20px" />Agri Updates</a>
                </div>
                <div class="col-2">
                    <a class="nav-link" href="AskExperts.aspx" data-toggle="tooltip" data-placement="right" title="Ask doubts!.">
                        <asp:Image ID="i8" runat="server" ImageUrl="~/imgs/askexpert1.jpg" Height="20px" />Ask Experts!...</a>
                </div>

            </div>
            <hr />

            <div class="row">
                <div class="col-8 ml-0">

                    <div id="wowslider-container1" style="width: 900px">
                        <div class="ws_images" style="width: 900px">
                            <a href="#">
                                <img src="imgs/App_weather_1080x400_English.jpg" alt="" title="" style="width: 900px" id="wows1" /></a>
                            <a href="#">
                                <img src="imgs/App_Crop_1080x400_Englishjpg.jpg" alt="" title="" style="width: 900px" id="wows2" /></a>
                            <a href="#">
                                <img src="imgs/App_Agri%20Buzzr_1080x400_ENG.jpg" alt="" title="" style="width: 900px" id="wows0" /></a>
                            <a href="#">
                                <img src="imgs/MarketPrice_1080x400Eng_1.jpg" alt="" title="" style="width: 900px" id="wows3" /></a>

                        </div>

                        <a style="display: none" href="http://wowslider.com">Script Image Slider by WOWSlider.com v1.7</a>
                    </div>
                    <script type="text/javascript"
                        src="slides/script.js"></script>
                    <!-- End WOWSlider.com BODY section -->
                </div>

                <div class="col-1"></div>
                
                <div class="col-3">
                    <br /><br />
                    <h3>Account Details</h3>
                    <ul class="nav nav-pills">
                       <li class="nav-item"> <a class="nav-link" href="FarmerViewSaledDetails.aspx" data-toggle="tooltip" data-placement="top" title="solded crops..">
                        <asp:Image ID="i4" runat="server" ImageUrl="~/imgs/marketing1.jpg" Height="20px" CssClass="rounded-circle" />&nbsp;View Saled details</a></li>
                        <li class="nav-item"><a href="FarmerViewAnsForQues.aspx" class="nav-link">
                            <asp:Image ID="Image9" runat="server" ImageUrl="~/imgs/noti2.png" Height="25px" />&nbsp;Notifications</a></li>

                        <li class="nav-item"><a href="FarmerChangePassword.aspx" class="nav-link">
                            <asp:Image ID="Image10" runat="server" ImageUrl="~/imgs/changepasw2.jpg" Height="25px" />&nbsp;Change password</a></li>
                        <li class="nav-item"><a href="#" class="nav-link">
                            <asp:Image ID="Image222" runat="server" ImageUrl="~/imgs/Delete.png" Height="25px" />&nbsp;Delete MyAccount</a></li>

                    </ul>

                </div>
            </div>
            <br />

            <hr />


            <div id="bp">
                <asp:Label ID="Label1" runat="server" Text="Best Practices" BackColor="#009900" ForeColor="White" Font-Size="Medium"></asp:Label><br />
                <br />
                <a href="#">&nbsp;Best Gowing of Potato Crop.<br />
                    <video src="#" controls="controls" style="height: 106px; width: 263px; margin-top: 0px"></video>

                </a>
            </div>
            <hr />

            <div id="ts">
                <asp:Label ID="Label2" runat="server" Text="Toward Success" BackColor="#009900" ForeColor="White" Font-Size="Medium"></asp:Label><br />
                <br />
                <a id="ats1" style="cursor: pointer"><b>Higher net profit from chilli cultivation</b></a>
                <div id="dts1">
                    Nek Singh, a successful farmer from Punjab, he is among its select successful farmers who even pay income tax. Nek Singh discovered the magic of chilli and scientists from the Indian Institute of Horticultural Research (IIHR), Bengaluru, helped him understand it. 
                    <br />
                    Then, he started chilli cultivation from 1991. In 2016, he raised chilli saplings over 3.5 acres towards the plan to cover 10 acres.
                    <br />
                    Earning a couple of lakh rupees from each acre under chilli every kharif season, Nek Singh has expanded his inherited 4-acre farm to 65 acres to be among the most prosperous farmers of the state.<br />
                    He doesn’t grow wheat, only high-income potato and sunflower in the rabi season and chilli and basmati in kharif.
                </div>
                <hr />
                <br />
                <a id="ats2" style="cursor: pointer"><b>Production of foundation vegetable seed </b></a>
                <div id="dts2">
                    In Jalaun (Bundelkhand), a program consisted more than 250 vegetables growers/farmers and formed One Farmers Interest Group (FIG) named Jai Gurudev Swayam Sahayata Samooh.
                    <br />
                    After through discussion it was decided to grow foundation vegetable seeds in the meeting. The 50 Kg breeder seed of vegetable pea cv. 
                    <br />
                    Azad P-3 were given to every member of FIG by Chandra Shekhar Azad University of Agriculture and Technology Kanpur for the production of foundation seed on one acre land.<br />
                    All agricultural inputs viz. fertilizer (FYM 250 qt/ha, NPK 40:60:60 kg/ha, weedicide, micro nutrients etc.) were managed by the seed growers and irrigation was applied through sprinkler system.
                </div>
                <hr />
                <br />
                <a id="ats3" style="cursor: pointer"><b>Early varieties of vegetable pea for higher productivity</b></a>
                <div id="dts3">
                    Mr. Sushil Kumar Bind is a marginal farmer in village Bahuti, block Marihaan District Mirzapur, Uttar Pradesh.
                    <br />
                    He has about one hectare land for cultivation. He attended Kisan Mela at the Indian Institute of Vegetable Research (IIVR), Varanasi and interacted with the vegetable scientists.
                    <br />
                    He came to know about early varieties of vegetable pea matching very well in rice-wheat cropping system prevailing in eastern parts of UP. Under the NAIP project, he obtained quality seeds and fertilizer.
                    <br />
                    After land preparation, he did seed sowing of Kashi Uday and Kashi Nandini in the last October.
                    <br />
                    In the month of December, he earned about Rs. 40.000 by sale of 1200 kilogram of pea pod.
                </div>
                <hr />
                <br />

            </div>
            <hr />
            <p style="font-size: 20px; color: green">Tip of the Day</p>


            <div style="border-color: green; border-style: solid; border-radius: 5px; width: 420px; height: 135px;">
                <br />
                <b>&nbsp;Action is due, for Downey mildew</b><br />
                <br />
                &nbsp;
                To manage Downey mildew in Grapes spray 1 ml Azoxystrobin&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; dissolved in one liter of water.
           
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image11" runat="server" ImageUrl="~/img/mag_logo_sp.png" Height="79px" Width="85px" />


            <hr />
            <h2>Send us a message</h2>
            <table>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label4" runat="server" Text="Phone no"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox2" runat="server" Height="22px" TextMode="Phone"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">Message</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" Height="110px" Width="228px"></asp:TextBox>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
            </table>
            <br />
            <footer id="foott" style="text-align: center; width: 1342px;">&copy E-Farming All rights Reserved</footer>

        </div>






    </form>
</body>
</html>
