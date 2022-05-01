<%@ Page Language="C#" AutoEventWireup="true" CodeFile="potato.aspx.cs" Inherits="potato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/popper-utils.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>

    <script src="slides/jquery.js"></script>
    <script src="slides/script.js"></script>
    <link href="slides/Style.css" rel="stylesheet" />
    <style>
         #l {
            float: right;
            left: 900px;
        }

        #p {
            transform: translate(400%,80%);
            top: 0px;
            position: absolute;
        }


    </style>
 <script>
        $(function () {
            $("#d1").hide();
            $("#a1").click(function () {
                $("#d2").hide();
                $("#d3").hide();
                $("#d4").hide();
                $("#d5").hide();

                $("#d6").hide();
                $("#d1").slideToggle("100");

            });
        });
        $(function () {
            $("#d2").hide();
            $("#a2").click(function () {
                $("#d1").hide();
                $("#d3").hide();
                $("#d4").hide();
                $("#d5").hide();

                $("#d6").hide();
                $("#d2").slideToggle("100");

            });
        });
        $(function () {
            $("#d3").hide();
            $("#a3").click(function () {
                $("#d1").hide();
                $("#d2").hide();
                $("#d4").hide();
                $("#d5").hide();

                $("#d6").hide();
                $("#d3").slideToggle("100");

            });
        });
        $(function () {
            $("#d4").hide();
            $("#a4").click(function () {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d5").hide();

                $("#d6").hide();
                $("#d4").slideToggle("100");

            });
        });

        $(function () {
            $("#d5").hide();
            $("#a5").click(function () {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d4").hide();

                $("#d6").hide();
                $("#d5").slideToggle("100");

            });
        });

        $(function () {
            $("#d6").hide();
            $("#a6").click(function () {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d4").hide();
                $("#d5").hide();

                $("#d6").slideToggle("100");

            });
        });

        
    </script>
</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">
        <div class="container" style="background-color: white;">
           
                 <div class="alert alert-secondary" role="alert">
                <img src="imgs/logomyagri.png" class="rounded-circle" height="70px" width="70px" />&nbsp;<label class="font-weight-bold" style="font-size: x-large">Farming Assistant...<br />
                    <h6 class="font-italic">Digital Platform for farmers & Agriculture...!</h6>
                </label>
                <a id="l" href="formerlogin.aspx" class="btn btn-success">Logout</a>
                <div id="p">view crops crops_details....</div>
            </div>
            
            <hr />


            <div id="wowslider-container1" style="width:1000px;height:270px">
                <div class="ws_images" style="width:1000px;height:270px">
                    <a href="#">
                        <img src="imgs/p3.jpg" alt="" title="On an average, each global citizen consumes 33kg of potatoes each year" id="wows0" style="width:1000px;height:270px;" /></a>

                    <a href="#">
                        <img src="imgs/p1.jpg" alt=""  title="In October 1995, the potato became the first vegetable to be grown in space.The technology was created to feed astronauts on long space voyages" id="wows1" style="width:1000px;height:270px;" /></a>
                    <a href="#">
                        <img src="imgs/p2.jpg" alt="" title="On an average, each global citizen consumes 33kg of potatoes each year" id="wows2" style="width:1000px;height:270px;" /></a>
                </div>
                <!-- <div class="ws_bullets">
                    <div>
                        <a href="#wows0" title="">
                            <img src="slides/bullet.png" alt="" />1</a>
                        <a href="#wows1" title="">
                            <img src="slides/bullet.png" alt="" />2</a>
                        <a href="#wows2" title="">
                            <img src="slides/bullet.png" alt="" />3</a>
                    </div>
                </div>-->
                <a style="display: none" href="http://wowslider.com">Script Image Slider by WOWSlider.com v1.7</a>
            </div>
            <script type="text/javascript"
                src="slides/script.js"></script>
            <!-- End WOWSlider.com BODY section -->
            <br />
            <div>
                <h4><b>Potato</b></h4>
                <br />
                <p>
                    Potato is one of the most important food crops after wheat, maize and rice, contributing to food and nutritional security in the world. The term ""potato"" is derived from ""batata,"" the Carib term for sweetpotato (Ipomoea batatas).  Potato was introduced to India by early 17th century probably through British missionaries or Portuguese traders. Potato is herbaceous annual and propagated by tubers, the thick underground stems which are called stolons. Eyes on the potato are buds and one or more develops into stem and leaves. Stem may be green, purple or light violet.<br />
                    Potatoes are used for the production of starch, dextrin, glucose and alcohol too. Potato starch (farina) is used in laundries and for sizing yarn in textile mills. As a food product itself, potatoes are converted into dried products such as ‘potato chips’, ‘sliced’ or ‘shredded potatoes’.
                </p>
            </div>
            <hr />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Crop Calender" Font-Bold="true" Font-Size="Medium" ForeColor="#009933"></asp:Label>
            
            <br />
            

            <div class="row">
                <div class="col-lg-4">
                    <ul class="list-unstyled">

                        <li role="presentation"><a href="#d1" class="nav-link" id="a1" style="cursor:pointer">Crop Planning</a></li>
                        <li role="presentation"><a href="#d2" class="nav-link" id="a2" style="cursor:pointer">Field Preparation</a></li>
                        <li role="presentation"><a href="#d3" class="nav-link" id="a3" style="cursor:pointer">Sowing Operation</a></li>
                        <li role="presentation"><a href="#d4" class="nav-link" id="a4" style="cursor:pointer">Basal Fertilizer Doses</a></li>
                        <li role="presentation"><a href="#d5" class="nav-link" id="a5" style="cursor:pointer">Cropping Patterns</a></li>

                        <li role="presentation"><a href="#d6" class="nav-link" id="a6">Harvesting Time and Technique</a></li>
                    </ul>
                    <br />
                </div>
                <div class="col-lg-8">
                    <div id="d1">
                        <b>Crop Planning</b><br />
                        <br />
                        Know when and where Potatoes grow best
                <br />
                        <ul>
                            <li>Potatoes can be produced on a wide range of soils, ranging from sandy loam, silt loam, loam and clay soil.</li>
                          
                            <li>Soils for potato should be friable, well aerated, fairly deep and well supplied with organic matter.</li>
                            
                            <li>Well drained sandy loam and medium loam sols, rich in humus are most suitable for potato. </li>
                         
                            <li>Soil structure and texture has a marked effect on the quality of the tuber.</li>
                           
                            <li>Light soils are preferred because they tend to promote more uniform soil temperatures and make harvesting of the crop easier.</li>
                        
                            <li>Alkaline or saline soils are not suitable for potato cultivation.</li>
                         
                            <li>They are well suited to acidic soils (pH 5.0 to 6.5) as acidic conditions tend to limit scab disease.</li>
                          
                            <li>Potato is a cool season crop. </li>
                           
                            <li>It thrives best in cool regions where there is sufficient moisture and fertile soil. </li>
                            
                            <li>Satisfactory tuber growth occurs if soil temperatures are between 17 and 19°C.</li>
                         
                            <li>Higher soil temperatures adversely affect the tuber development.</li>
                        
                            <li>Tuber development virtually stops if temperatures rise above 30°C.</li>
                         
                            <li>At higher temperatures, the respiration rate increases, and the carbohydrates produced by photosynthesis are consumed rather than stored in the tuber.</li>
                         
                            <li>High temperatures at any part of the growing period affect the size of the leaflets, thereby reducing the tuber formation.</li>
                           
                            <li>It grows best under long day conditions. Sunshine along with cooler nights is essential for reducing the spread of diseases. </li>

                        </ul>
                        <hr />

                    </div>


                    <div id="d2">
                        <b>Feild Preparation</b><br />
                        <br />
                        Soil management is most important in tuber crops 

                <br />
                        <ul>
                            <li>Prior to planting, land should be of a fine tilth for easy placement of seed tubers and to allow roots to penetrate the soil.</li>
                            
                            <li>Depending on soil type and crop history, this can normally be achieved by one plowing and one harrowing, followed by planking.</li>
                          
                            <li>In lighter soils, farmers do not always have to plow prior to planting, but if the potato crop is following paddy rice or jute , more preparation may be necessary.</li>
                         
                            <li>However, studies from Gwlior, in the north central area of the plains, have shown that minimal tilling (one harrowing followed by one planking) did not diminish the subsequent potato yield which followed a green manure crop of sunhemp plowed under in the previous kharif season.</li>
                          
                            <li>A well pulverized seed bed is required for good tuberisation of potato crop. </li>
                          
                            <li>The field should be ploughed once 20-25 cm deep with soil turning plough. </li>
                          
                            <li>Thereafter, two to three cross harrowings or four to five ploughings with local plough should be done.</li>
                          
                            <li>One or two plankings are also needed to make the surface smooth and leveled. </li>
                         
                            <li>Enough moisture is essential at the time of sowing.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d3">
                        <b>Sowing Operation</b><br />
                        <br />
                        Planting potatoes according to region for good crop stand 
                <br />
                        <ul>
                            <li>In the northern Indo Gangetic plains the autumn season is the main potato season. </li>
                           
                            <li>An early crop is also taken in many places to take advantage of the high prices of the early crop.</li>
                           
                            <li>At some places especially in the western Indo Gangetic plains a late winter/spring crop is also raised. </li>
                            
                            <li>The date of planting is temperature dependent. </li>
                           
                            <li>In the main crop, planting starts when the maximum temperature is between 30-320 C while in the case of the late winter crop planting coincides with the period when minimum temperature is above frosting temperatures and the temperatures start warming up.</li>
                          
                            <li>Planting time changes across India as per the regional climate.</li>
                       
                            <li>In the northern plains, presprouted seed tubers are planted by dibbling the seeds about 8-10 cm deep in the ridges in the case of manual planting. </li>
                           
                            <li>When bullocks are used for planting, a furrow is drawn and seeds are placed in the exposed furrows. </li>
                        
                            <li>These furrows get covered when another furrow is drawn nearby the previously drawn furrow.</li>
                        
                            <li>In many areas ridges are drawn with a tractor drawn ridger and seeds are dibbled manually on the ridges. </li>
                         
                            <li>Tractor drawn mechanical planters are also available in which persons sit at the back of the planter and place the seed in the rotating slots which places the seed at the required spacing.</li>
                           
                            <li>In the case of the early crop in the northern plains the temperatures are relatively warmer so deep planting is recommended to mitigate the effect of high temperature. </li>
                            
                            <li>Similarly in the case of the late/spring crop due to the cool temperatures, shallow planting is advocated to ensure quick emergence.</li>
                            
                            <li>Flat planting is also practised in some situations especially in the kharif crop in the plateau regions. </li>
                            
                            <li>The objective in this case also is to promote quick emergence using the available soil moisture at the top few centimeters of soil since the crop is rainfed and the first few rains will wet only a shallow depth of soil.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d4">
                        <b>Basal Fertilizer Doses</b><br />
                        <br />
                        Feed your soils before sowing with adequate fertilizers 

                <br />
                        <ul>
                            <li>Potato is a short duration shallow rooted crop. </li>
                            
                            <li>Therefore, it is highly responsive to fertilization and hence its importance. </li>
                           
                            <li>As in the case of other crops Nitrogen is the first limiting nutrient in potato also. </li>
                           
                            <li>Phosphorous and potash are also very important in the case of potato phosphorus due to its effect on the root system and potash due to its effect on translocation of photsynthate.</li>
                            
                            <li>Apart from these major nutrients, calcium and sulphur is also becoming limiting and potato responses to both have been observed.</li>
                          
                            <li>Zinc, iron, manganese, magnesium, copper and boron are the micronutrients found limiting in potato growing soils and potato responses to them. Zonewise NPK requirement:</li>
                          
                            <li>North western hill zone( Acidic hill soil )NPK: 120-150 : 100-150 : 120kg/ha</li>
                          
                            <li>North-eastern hill zone( Acidic hill soil )NPK: 100-120 : 120-150 : 60kg/ha</li>
                          
                            <li>North-western plain zone( Alluvial )NPK: 180-240 : 80-100 : 100-150kg/ha</li>
                           
                            <li>North-central plain zone( Alluvial )NPK: 180-240 : 80-100 : 100-150kg/ha</li>
                          
                            <li>North-eastern plain zone( Alluvial )NPK: 180-240 : 80-100 : 100-150kg/ha</li>
                           
                            <li>Plateau zone( Black )NPK: 100-120 : 60 : 60kg/ha</li>
                            
                            <li>Nilgiri zone( Acidic hill )NPK: 90-120 : 135-150 : 90kg/ha</li>
                        </ul>
                        <hr />
                    </div>

                    <div id="d5">
                        <b>Cropping patterns</b><br />
                        <br />
                        Intercropping can help in effective fertilizer use 

                <br />
                        <ul>

                            <li>Intercropping not only give additional income but is seen as effective use of fertilizer. </li>
                            
                            <li>As potato roots are shallow, fertilizer dissolved in water can leach below the potato root zone, but might subsequently be recovered by a deeper rooting crop such as wheat.</li>
                         
                            <li>In the western and central Indo-Gangetic plains (including Uttar Pradesh, Madhya Pradesh, Chattisgarh, and Rajasthan), potato is a rabi crop rarely grown as a sequential monocrop (i.e. potato crops in succession in one place).</li>
                            
                            <li>The most common rotation is maize-potato-wheat, though in some areas a maize-potato or paddy rice-potato rotation is practiced. </li>
                            
                            <li>A potato-sugarcane sequence is becoming popular partly due to the compatibility of the planting and harvesting, sugarcane closely following the potato harvest in spring.</li>
                           
                            <li>Intercropping systems in plains: Potato sugarcane, Potato wheat, Potato mustard</li>
                           
                            <li>Intercropping systems in North-western hill zone: Garlic potato, Garlic peas potato, Potato-peas/cabbage/radish</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d6">
                        <b>Harvesting time and technique</b><br />
                        <br />
                        When and how to harvest 
                <br />
                        <ul>
                            <li>Crop should be harvested when haulms start yellowing and falling on the ground. </li>
                          
                            <li>At this stage haulms should be removed at ground level. </li>
                            
                            <li>The crop should be harvested about 15 days after cutting the haulms. </li>
                          
                            <li>Digging is done with spades or khurpi in small fields. </li>
                         
                            <li>Suitable tractor operated potato diggers are available now for digging the potatoes in big fields.</li>
                          
                            <li>There should be optimum moisture in the soil at the time of harvest. </li>
                           
                            <li>The clods hinder the efficient functioning of potato-digger. </li>
                           
                            <li>After digging, the tubers may be allowed to dry on the ground for sometime in shade.</li>
                        </ul>
                        <hr />
                    </div>
                   
                </div>
            </div>
           <hr />
            <a href="cropsview.aspx" role="link" class="btn btn-danger">BACK</a>
        </div>
    </form>
</body>
</html>
