<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Banana.aspx.cs" Inherits="Banana" %>

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
                $("#d7").hide();
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
                $("#d7").hide();
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
                $("#d7").hide();
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
                $("#d7").hide();
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
                $("#d7").hide();
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
                $("#d7").hide();
                $("#d6").slideToggle("100");

            });
        });

        $(function () {
            $("#d7").hide();
            $("#a7").click(function () {
                $("#d1").hide();
                $("#d2").hide();
                $("#d3").hide();
                $("#d4").hide();
                $("#d5").hide();
                $("#d6").hide();
                $("#d7").slideToggle("100");

            });
        });
        $(function () {
            $("#b1").hide();
            $("#ba1").click(function () {
                $("#b1").slideToggle("100");

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
            <div id="wowslider-container1" style="width: 1000px; height: 270px">
                <div class="ws_images" style="width: 1000px; height: 270px">
                    <a href="#">
                        <img src="imgs/bb1.jpg" alt="" title="On an average, each global citizen consumes 33kg of potatoes each year" id="wows0" style="width: 1000px; height: 270px;" /></a>

                    <a href="#">
                        <img src="imgs/b33.jpg" alt="" title="In October 1995, the potato became the first vegetable to be grown in space.The technology was created to feed astronauts on long space voyages" id="wows1" style="width: 1000px; height: 270px;" /></a>
                    <a href="#">
                        <img src="imgs/b1.jpg" alt="" title="On an average, each global citizen consumes 33kg of potatoes each year" id="wows2" style="width: 1000px; height: 270px;" /></a>
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
            <hr />

            <div>

                <h4><b>Banana</b></h4>
                <br />
                <p>
                    Banana is the oldest and commonest fruit known to the mankind. It is one of the important fruits that constitutes second largest fruit industry in India. Banana contributes 37% to total fruit production in India. Other than fresh fruits, bananas can be consumed as processed in various forms like chips, powder, flakes, etc. Banana pseudo stem is chopped and used as cattle feed. The leaves of banana plant are used as plate from centuries.<br />
                    There are around 12 local and 30 exotic varieties are grown commercially.<br />
                    Based on the consumption pattern, there are two main types: the table banana and the plantain (cooking banana), and almost 1,000 varieties. Each of these types varies subtly in their taste, appearance, and even aroma.
                </p>
            </div>
            <hr />
            <br />
            <label class="btn btn-success">Crop Calender</label>

            <br />

            <div class="row">
                <div class="col-lg-4">

                    <ul class="list-unstyled">
                        <li role="presentation"><a href="#d1" class="nav-link" id="a1" style="cursor: pointer">Crop Planning</a></li>
                        <li role="presentation"><a href="#d2" class="nav-link" id="a2" style="cursor: pointer">Field Preparation</a></li>
                        <li role="presentation"><a href="#d3" class="nav-link" id="a3" style="cursor: pointer">Sowing Operation</a></li>
                        <li role="presentation"><a href="#d4" class="nav-link" id="a4" style="cursor: pointer">Basal Fertilizer Doses</a></li>
                        <li role="presentation"><a href="#d5" class="nav-link" id="a5" style="cursor: pointer">Cropping Patterns</a></li>
                        <li role="presentation"><a href="#d6" class="nav-link" id="a6" style="cursor: pointer">Planting</a></li>
                        <li role="presentation"><a href="#d7" class="nav-link" id="a7" style="cursor: pointer">Harvesting Time and Technique</a></li>
                    </ul>
                    <br />
                    <hr />
                </div>
                <div class="col-lg-8">
                    <div id="d1">
                        <b>Crop Planning</b><br />
                        Banana is the Common man's fruit, that gives premium profits<br />
                        <ul>

                            <li>Banana is a versatile crop, that has many varieties across India, with different tastes and uses, is prefered and been afforded by many people</li>
                            <li>The round year availability and low price makes it a common man's fruit </li>
                            <li>From growers' point of view</li>
                            <li>Banana yields good profit if key practices are done with extra care</li>
                            <li>In India this crop is being cultivated in climate ranging from humid tropical to dry mild subtropics through selection of appropriate varieties</li>
                            <li>Banana can grow from the poorest to the richest type of soil with varying success</li>
                            <li>Except areas which are extremely dry or can have chilling injury, rest all areas are suitable for Banana cultivation.</li>
                        </ul>
                        <hr />
                    </div>

                    <div id="d2">
                        <b>Field Preparation</b><br />
                        <br />
                        Prepare the soil to grow the banana crop well
                <br />
                        <ul>

                            <li>Prior to planting banana, grow the green manuring crop like daincha, cowpea, plough insist in the field</li>
                            <li>Then the selected field must be ploughed 4-6 times and allowed to weather for two weeks</li>
                            <li>Alternative to planting in pits is planting in furrows</li>
                            <li>Depnding on soil strata one can choose appropriate method as well as spacing and depth at which plant is required to be planted</li>
                            <li>In wetlands and hilly areas no land preparation is needed and pits are directly taken in the required spacing</li>
                            <li>For Hill Banana cultivation clean the jungle and construct contour stone walls before planting</li>
                            <li>Rotovator or harrow is used to break the clod and bring the soil to a fine tilt. During soil preparation basal dose of FYM is added and thoroughly mixed into the soil.</li>
                            <li>The field is leveled by passing a blade harrow or laser leveler</li>
                            <li>Land Leveling through Laser Leveler is one such proven technology that is highly useful in conservation of irrigation water</li>
                            <li>Laser land leveling is leveling the field within certain degree of desired slope using a guided laser beam throughout the field. </li>
                        </ul>
                        <hr />
                    </div>

                    <div id="d3">
                        <b>Sowing Operation</b><br />
                        <br />

                        Right way for banana planting- simple yet effective management
                <br />
                        <ul>
                            <li>Planting of tissue culture banana can be done throughout the year as per the market demand except when the temperature is too low or too high. </li>
                            <li>The planting time may be adjusted so as to avoid high temperature and drought at the time of emergence of bunches (i.e. approx. 7-8 months after planting).</li>
                            <li>The planting time for long duration cultivars is different from short duration ones.</li>
                            <li>Planting time is vary with state wise</li>
                            <li>In Maharashtra, For Kharif season complete plantation from June – July month.</li>
                            <li>And for Rabi season, October – November is optimum time.</li>
                            <li>For Tamil Nadu, February – April and November - December month are optimum for plantation</li>
                            <li>For Kerala, In Rainfed areas complete sowing from April-May month and for Irrigated areas August- September is optimum time for planting.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d4">
                        <b>Basal Fertilizer Doses</b><br />
                        <br />

                        Feed your soils before sowing of banana with adequate fertilizers
                <br />
                        <ul>
                            <li>The pits are to be refilled with topsoil mixed with 10 kg of FYM (well decomposed), 250 gm of Neem cake and 20 gm of carbofuron.</li>
                            <li>In areas where nematode problem is prevalent, nematicides and fumigants are also added to pits before planting.</li>
                            <li>In case of ridge planting, add about 10 tonnes of well rotten FYM or Compost or well decomposed cowdung during last ploughing and mix it well in soil.</li>
                            <li>Banana requires high amount of nutrients, which needs to be supplied in the form of manures and fertilizers.</li>
                            <li>Nutrients should be supplied on the basis of soil test report and recommendations.</li>
                            <li>Generally banana crop requires 7-8 Kg N, 0.7- 1.5 Kg P and 17-20 Kg K per metric ton yield.</li>
                            <li>In acidic soils, use dolomite (Mg2CO3) or limestone (CaCO3 ) as soil amendments</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d5">
                        <b>Cropping Patterns</b><br />
                        <br />

                        Intercrops and mixed crops are friends of main banana crop 

                <br />
                        <ul>
                            <li>Crop rotations with leguminous plants, enhance the nitrogen content. </li>
                            <li>Raise the flowering plants / compatible cash crops along the field border by arranging shorter plants towards main crop and taller plants towards the border to attract natural enemies as well as to avoid immigrating pest population.</li>
                            <li>Banana plantations are intercropped with ginger, turmeric, elephant-foot yam, cotton, gourd and other vegetables to exploit maximum income/unit area.</li>
                            <li>Short duration intercrops can be taken like onion, green gram, black gram, beans, radish, greens, brinjal, colocasia, turmeric, chillies, bhendi, radish, cauliflower, cabbage, spinach, maize etc. depending on climatic conditions.</li>
                            <li>Tomato, chilly and cucurbits should not be grown as intercrop since these crops harbour nematodes and aphids, which act as vector of virus spread. </li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d6">
                        <b>Planting</b><br />
                        <br />
                        banana planting methods -line planting 

                <br />
                        <ul>
                            <li>In single row planting, the distance within the row is close, whereas the distance between the row is wide.</li>
                            <li>This system allows good aeration to plant canopy, allowing wet leaves to dry more rapidly, reducing fungal disease severity.</li>
                            <li>In this, less number of trees occupied in the field and yield will automatically reduced .</li>
                            <li>Paired Row System: In this method, the distance between the two lines is 0.90 to 1.20 m. while plant to plant distance is 1.2 to 2 m. </li>
                            <li>Here, Intercultural operations can be carried out easily and cost of drip irrigation is decreased.</li>
                            <li>Furrow planting is practiced in the states of Gujarat and Maharashtra.</li>
                            <li>After land preparation, 30-40 cm deep furrows are made, either manually or with a ridger.</li>
                            <li>Suckers are placed at required spacing; FYM is applied around, mixed with soil and tightly packed round the suckers.</li>
                            <li>Trench planting is practiced in wet land cultivation of Cauvery delta region of TamilNadu.</li>
                            <li>Water is drained from the field allowing setting for a day. Planting is done by simple pressing the suckers into the wet field.</li>
                            <li>After a week 15 cm deep trenches are opened both ways maintaining 4 or 6 plants in each block. </li>
                            <li>Deepening of trenches by 20-25 cm is taken up every month after planting till suckers put forth 1-3 leaves.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d7">
                        <b>Harvesting Time and Technique</b><br />
                        <br />
                        When and how to harvest banana 

                <br />
                        <ul>
                            <li>Within the bunch are clusters of double rows of fruit called “hands” and individual fruit called “fingers”.</li>
                            <li>For Locally market fruits can be harvested at a more advanced maturity stage compared to the fruits which are to be exported.</li>
                            <li>Fruits which are meant for export should be harvested the day before or the same day of shipment. </li>
                            <li>Rough handling during harvest will result in bruised and damaged fruit.</li>
                            <li>Many of these marks will not show until the fruit is ripened. </li>
                            <li>Fruit should be harvested early in the day in the summer to avoid handling fruit when it is too hot.</li>
                            <li>In winter fruit that is too cold in the morning may bruise more easily, so one should not start harvesting too early in the morning in the middle of the winter.</li>
                            <li>The crop gets ready for harvest after 11-12 months of planting.</li>
                            <li>Bunches attain maturity from 90-150 days after flowering depending upon variety, soil, weather condition and elevation.</li>
                            <li>Harvest may be delayed upto 100-110 days after opening the first hand.</li>
                            <li>Banana should be harvested when the fruit is slightly or fully mature depending on the market preferences.</li>
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
