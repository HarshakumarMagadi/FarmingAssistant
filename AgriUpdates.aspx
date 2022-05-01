<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AgriUpdates.aspx.cs" Inherits="AgriUpdates" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <script src="slides/jquery.js"></script>
    <script src="slides/script.js"></script>
    <link href="slides/Style.css" rel="stylesheet" />

    <style>
        #l {
            position: absolute;
            transform: translate(770%,100%);
            float: right;
        }

        #user {
            float: right;
            left: 1000px;
            top: 5px;
            width: 100px;
            margin-right: 0px;
        }
    </style>
    <script>
        $(function () {
            $("#d1").hide();
            $("#a1").click(function () {
                $("#d1").slideToggle("100");
            });
        });

        $(function () {
            $("#d2").hide();
            $("#a2").click(function () {
                $("#d2").slideToggle("100");
            });
        });
    </script>

</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">
        <div class="container" style="background-color: white">
            <div class="alert alert-secondary" role="alert">
                <img src="imgs/logomyagri.png" class="rounded-circle" height="70px" width="70px" />&nbsp;<label class="font-weight-bold" style="font-size: x-large">Farming Assistant...<br />
                    <h6 class="font-italic">Digital Platform for farmers & Agriculture...!</h6>
                </label>
                <p id="user" class="fa fa-user-circle" aria-hidden="true">
                    <asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label>
                </p>
                <asp:Button runat="server" ID="l" Text="Home" class="btn btn-success" OnClick="l_Click"></asp:Button>

            </div>
            <hr />

            <p style="font-size: small">
                The latest agricultural news and updates are featured here.<br />
                We cover the important areas related to agriculture like scheme and subsidies, news, new technologies, etc. in this section.
            </p>
            <hr />
            <asp:Label ID="Label1" runat="server" Text="Explore Latest Agriculture Updates.." Font-Bold="true" Font-Size="Medium" BackColor="#009933" ForeColor="White"></asp:Label>
            <br />
            <a href="#" id="a1">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/imgs/956.jpg" Height="77px" Width="94px" />&nbsp;Agriculture the fulcrum of state economy: Expert
            </a>
            <div id="d1">
                PATNA: Economist Shaibal Gupta on Tuesday said agriculture and its allied sectors were the fulcrum of Bihar’s economy.
Speaking at a policy dialogue on “Towards Developing a Diversified Food System in Bihar for Improving Nutritional Outcomes’ organized by Asian Development Research Institute (ADRI) in association with Tata Cornell Institute (TCI) in Patna on Tuesday, ADRI’s member-secretary Gupta said nearly 90% of the population dwelt in rural areas and was engaged in agricultural activities. However, agriculture generates less than a quarter of our Gross State Domestic Product.
                <br />
                <br />
                Talking about impulsive growth, Gupta pointed out, “Agriculture sector in the state grew at 5.6% during 2005-06 to 2014-15 compared to the national average of 3.6%. However, this growth has been volatile due to recurring floods and droughts, variability in rainfall and various other factors. As of now, most of the government incentives favour staples such as rice and wheat for diversification. These need to be extended to fruits and vegetables as well.”
He said, “The third agriculture road map of Bihar has envisaged an organic corridor along the Ganges. For this, we need to introduce market incentives, improve infrastructure, design price support and certification of organic produce to encourage farmers to switch to organic cultivation.”
                <br />
                <br />
                TCI founding director Prof Prabhi Pingali and state’s agriculture production commissioner Sunil Kumar Singh talked about ‘Food System Perspective on Agri-Nutrition’.
Research for Indian Nutrition and Agriculture director Nikhil Raj, International Food Policy Research Institute director (South Asia) P K Joshi, Bihar Beej Nigam MD Himanshu Kumar and Integrated Child Development Services’ former director Praveen Kishore presented their papers in the first session which focused on ‘Diversifying Food in Bihar: Overcoming the Constraints’.
                <br />
                <br />
                While the second session was on ‘Animal Husbandry in Bihar’, the third and fourth sessions were on ‘Increasing Farmers’ Income through Improved Agriculture Markets and Value Chains in Bihar’ and ‘Summing up and the Road Ahead’, respectively.
 <br />
                <br />
                Source : The Times of India
            </div>
            <hr />

            <a href="#" id="a2">
                <asp:Image ID="Image2" runat="server" ImageUrl="~/imgs/955.jpg" Height="77px" Width="94px" />&nbsp;Exporters fish for smaller shrimp to meet demand </a>
            <div id="d2">
                KOCHI: Rising demand for smaller shrimp is compelling Indian seafood exporters to tweak their shipments to suit the global palate. India has been traditionally strong in the big-size farmed shrimp ranging from 20 to 40 counts per kg, but now they are encouraging farmers to go for multiple harvests to meet the requirement for small shrimps, which could help the farmers in the long run. 
                <br />
                <br />
                “Sharp decline in the sea-caught shrimps, especially from Kerala, which are generally of small size is one reason for this. Farmed shrimps are filling up the vacuum,’’ said Kenny Thomas, MD of Jinny Marine Traders. 
                <br />
                <br />
                Small shrimp lend themselves to many value-added shrimp products. “You can’t make Japanese dish sushi with big shrimps,’’ said Thomas. Sizes from 50 to even 120 counts are becoming popular. Most of the Southeast Asian countries are focusing more on farming small shrimps and India is now shifting towards this trend. 
                <br />
                <br />
                Exporters said it is a win-win situation as farmers get paid for multiple harvests while they will be able to export more consignments. India is currently the top supplier of farmed shrimps in the world. Among the shrimps imported by the US, the share of Indian shrimps is 40%. “The buyers have to pay less as the size is smaller. The farmers, in turn, can increase the number of harvests reducing the risk of diseases. They can also keep the cost of feed down,’’ said Anwar Hashim, managing director of Abad Fisheries. 
                <br />
                <br />
                Experts suggest that producing small shrimps may help augment domestic consumption as the local preference is for lower sizes. “At present, about 42,000 to 45,000 tonnes are absorbed by the local market. If we can double that, there will be lesspressure on exports,’’ said S Chandrasekar, president of the Society of Aquaculture Professionals. 
 <br />
                <br />
                Source : The Economic Time
            </div>
            <hr />
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/farmerhomepage.aspx" Font-Size="Medium">Back</asp:LinkButton>
            <br />
            <footer id="foott" style="text-align: center;">&copy E-Farming All rights Reserved</footer>

        </div>
    </form>
</body>
</html>
