<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Mango.aspx.cs" Inherits="Mango" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="Scripts/popper-utils.js"></script>
    <script src="Scripts/jquery-3.4.1.js"></script>
<script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
   
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
                        <img src="img/t2.jpg" alt="" title="Mexican green tomatoes or jamberries are called tomatillos, it does not belong to tomato plant" id="wows0" style="width: 1000px; height: 270px;" /></a>

                    <a href="#">
                        <img  src="img/t11.jpg" alt="" title="Green tomatoes will ripe if you store them together with apples. Released ethylene gas will provide perfect conditions to ripen faster" id="wows1" style="width: 1000px; height: 270px;" /></a>
                    <a href="#">
                        <img src="img/t3.jpg" alt="" title="Tomatoes come in many different types of fruit—fresh or beefsteak types, grape, saladette, cherry, plum or paste, and others " id="wows2" style="width: 1000px; height: 270px;" /></a>
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
                <h4><b>Mango</b></h4>
                <br />
                <p>
                    Tomatoes originally came from Peru. There are over 10,000 varieties of tomato, these come in a variety of colors including pink, purple, black, yellow and white.
                    <br />
                    The fruit came to India by way of Portuguese explorers during the early 16th century. There are two types of tomato plant based on growth habits: determinate and indeterminate.<br />
                    Determinate tomato plants will grow to a genetically specified height and produce all of their fruiting flowers at one time.<br />
                    Indeterminate tomato plants continue to grow and produce fruiting flowers throughout the entire season.<br />
                    India ranks second in the area as well as in production of Tomato after China.
                </p>
            </div>
            <hr />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Crop Calender" Font-Bold="true" Font-Size="Medium" ForeColor="#009933"></asp:Label>
            <br />

            <div class="row">
                <div class="col-lg-4">
                    <ul class="list-unstyled">

                        <li role="presentation" ><a href="#d1" id="a1" class="nav-link" style="cursor:pointer">Crop Planning</a></li>
                        <li role="presentation"><a  href="#d2" class="nav-link" id="a2" style="cursor:pointer">Field Preparation</a></li>
                        <li role="presentation" ><a href="#d3" class="nav-link" id="a3" style="cursor:pointer">Handling</a></li>
                        <li role="presentation"><a href="#d4" class="nav-link" id="a4" style="cursor:pointer">Basal Fertilizer Doses</a></li>
                        <li role="presentation" ><a href="#d5" class="nav-link" id="a5" style="cursor:pointer">Cropping Patterns</a></li>

                        <li role="presentation"><a href="#d6" class="nav-link" id="a6" style="cursor:pointer">Harvesting Time and Technique</a></li>
                        <li role="presentation"><a href="#d7"  class="nav-link" id="a7" style="cursor:pointer">Crop Rotation</a></li>
                    </ul>
                    <br />
                </div>
                <div class="col-lg-8">
                    <div id="d1">
                        <b>Crop Planning</b><br />
                        <br />
                        What are best growing conditions for Tomato? 
                <br />
                        <ul>

                            <li>Tomato is a crop of tropical and subtropical regions. </li>
                            <li>For good growth it required an annual rainfall of 60-150 cm.</li>
                            <li>Very high rainfall during its growth is harmful. </li>
                            <li>When grown under hot weather, it is cultivated as an irrigated crop. </li>
                            <li>The winter crop is planted from August to September. </li>
                            <li>For organic farming of tomato winter crop has been found to be ideal.</li>
                            <li>Well drained sandy loam soil with high level of organic contents is best suitable for tomato cultivation. </li>
                            <li>Soils with high acidity are not suitable for tomato cultivation. </li>
                            <li>Tomato is part of daily diet of average indian household, and is having whole year demand in market.</li>
                            <li>Since summer crop is taken in lesser area due to unavailability of water, also needs some extra care in fruit bearing, overall supply of tomatoes is lesser in summer and thus fethces good price than other seasons. </li>
                        </ul>
                        <hr />

                    </div>


                    <div id="d2">
                        <b>Feild Preparation</b><br />
                        <br />
                        Prepare the soil to grow crop well 
                <br />
                        <ul>
                            <li>Well drained sandy loam soil with high level of organic contents is best suitable for tomato cultivation.</li>
                            <li>Soils with high acidity are not suitable for tomato cultivation.</li>
                            <li>Three to four quintal of suitable lime can be applied in the field in an interval of three years to reduce the level of acidity to tolerable limits.</li>
                            <li>There is a need to go for soil testing at the beginning of the crop season.</li>
                            <li>The land may be ploughed and harrowed 3 or 4 times to obtain a fine tilth.</li>
                            <li>About 10 tonnes of Farm Yard Manure (FYM) or vermi compost/compost @ 1-1.5 t per acre is applied at the last ploughing. </li>
                            <li>Green manuring is recommended for areas with assured rainfall and also for irrigated crop.</li>
                            <li>Beds are prepared against the slope and after levelling the bed, field channels of 50 cm breadth are prepared at intervals of 1 m.</li>
                            <li>In summer ploughing, green manuring with sunhemp/dhaincha and application of Trichoderma Powder@5kg/ha and afterward soil dreching with T.Viride@1% i.e 10gm/Ltr of water, help to control wilt disease.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d3">
                        <b>Handling</b><br />
                        <br />
                        Grading , packing increases value of produce 
                <br />
                        <ul>


                            <li>Grading: During grading of fruits, damaged, rotten and cracked fruits should be removed. Only healthy, attractive, clean and bright fruits should be selected.</li>
                            <li>Packaging: For local markets, the fruits are packed in bamboo baskets or plastic crates. </li>
                            <li>Plastic crates can be conveniently stacked one on the other and a contoured rim keeps the product safe and natural and allows sufficient air circulation. </li>
                            <li>The packing should ensure careful handling i.e. rigid enough to protect the fruits from being crushed.</li>
                            <li>For exports, the fruits are packed in cardboard telescopic boxes with capacities of not more than 15 kg, should be used. </li>
                            <li>Size graded tomatoes are pattern packed in layers to make best use of the box. </li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d4">
                        <b>Basal Fertilizer Doses</b><br />
                        <br />
                        Feed your soils before sowing with adequate fertilizers 

                <br />
                        <ul>


                            <li>Before cultivation, soil testing should be done to find out the soil fertility status.</li>
                            <li>Based on soil test for micronutrients, the deficient micronutrient should be applied in soil at time of sowing/transplanting Nutrients should be provided as per soil test recommendations.</li>
                            <li>Generally, tomato needs 40: 24: 24Kg N:P:K/acre (Urea@90kg, SSP@150kg and MoP@40kg) for straight varieties.</li>
                            <li>For hybrids N:P:K@60:36:36Kg/acre are required. Applied them in form of Urea@130kg, SSP@225kg and MoP@60kg/acre).</li>
                            <li>In straight varieties- Apply 50% of N fertilizer dose as basal before transplanting.</li>
                            <li>Apply entire dose of phosphatic fertilizers at the time of last ploughing/transplanting.</li>
                            <li>For hybrids, apply nitrogen fertilizer in three equal split doses.</li>
                            <li>First at the time of last ploughing. and apply potassic fertilizers in two equal splits, first at the time of last ploughing.</li>
                        </ul>
                        <hr />
                    </div>

                    <div id="d5">
                        <b>Cropping patterns</b><br />
                        <br />
                        Crops that go well with tomato should be sown with it
                <br />
                        <ul>

                            <li>Rotation with non-solanaceous crops like pulses/legumes are usually recommended to avoid pests and diseases affecting tomato and also to enrich the nitrogen status of the soil. </li>
                            <li>Tomato with marigold/mustard as intercrops reduces nematode population, it also prevents damage to the crop from fruit borer by diverting the attention of the fruit borer.</li>
                            <li>Tomato should not be grown successively on the same field and a break of at least one year is required between planting of tomatoes or other Solanacesous crops (eg. Chillies, Brinjals, Capsicum, Potato, Tobacco, etc.), cucurbits and many other vegetables.</li>
                        </ul>
                        <hr />
                    </div>


                    <div id="d6">
                        <b>Harvesting time and technique</b><br />
                        <br />
                        When and how to harvest 
                <br />
                        <ul>

                            <li>Depending on the variety, fruits become ready for first picking in about 60-70 days after transplanting. </li>
                            <li>Harvesting is done depending upon purpose like for fresh market, long distance transport etc. </li>
                            <li>Harvesting is done at different stages like Dark green colour, Breaker stage, Reddish pink and Fully riped stage. </li>
                            <li>Dark green colour: Dark green colour is changed and a reddish pink shade is observed on fruit</li>
                            <li>Fruits to be shipped are harvested at this stage. Such fruits are then sprayed with Ethylene 48 hours prior to shipping.</li>
                            <li>Breaker stage: Dim pink colour observed on ¼ part of the fruit. Fruits are harvested at this stage to ensure the best quality. Such fruit are less prone to damage during shipment often fetch a higher price than less mature tomatoes.</li>
                            <li>Reddish pink: Fruits are stiff and nearly whole fruit turns reddish pink. Fruits for local sale are harvested at this stage. </li>
                            <li>Fully riped- Fruits are fully riped and soft having dark red colour. Such fruits are used for processing.</li>
                        </ul>
                        <hr />
                    </div>
                    <div id="d7">
                        <b>Crop rotation</b><br />
                        <br />
                        Think of better suited crops after tomato
                        <br />
                        <ul>


                            <li>The crops, which can be grown after tomatoes, are Cereals (eg. Rice, Corn Sorghum, Wheat, Millets, etc.) or Cruciferons crops (eg. Cabbage, Cauliflower, Kohlrabi etc) or Radish, Watermelon, Onion, Garlic, Groundnut, Cotton, Safflower, Sunflower, Sesame, Sugar beet and Marigold.</li>
                            <li>Tomato is well fitted in different cropping systems of cereals, grains, pulses and oilseeds. </li><br />
                            <li>Cropping systems rice-tomato, rice-maize, okra-potato-tomato, tomato-onion are popular in various parts of India.</li><br />
                            <li>Spinach or radish can also be grown as inter-crop in tomato successfully.</li>

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
