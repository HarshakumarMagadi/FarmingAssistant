<%@ Page Language="C#" AutoEventWireup="true" CodeFile="viewgovtschemes.aspx.cs" Inherits="viewgovtschemes" %>

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
   


    <script>

        $(function () {
            $("#divv").hide();
            $("#a").click(function () {
                $("#divv").slideToggle("100");
            });
        });

        $(function () {
            $("#div1").hide();
            $("#a1").click(function () {
                $("#div1").slideToggle("100");
            });
        });

        $(function () {
            $("#div2").hide();
            $("#a2").click(function () {
                $("#div2").slideToggle("100");
            });
        });

        $(function () {
            $("#div3").hide();
            $("#a3").click(function () {
                $("#div3").slideToggle("100");
            });
        });
    </script>
    <style>
         #l {
            position:absolute;
            transform:translate(770%,100%);
             float:right;
        }
         #user{
            float:right;
            left: 1000px;
            top: 5px;
            width: 100px;
            margin-right:0px;
         
        }

    </style>
</head>
<body style="background-color:#eaedf1">
    <form id="form1" runat="server">
        <div class="container" style="background-color:white">
             <div class="alert alert-secondary" role="alert">
                <img src="imgs/logomyagri.png" class="rounded-circle" height="70px" width="70px" />&nbsp;<label class="font-weight-bold" style="font-size: x-large">Farming Assistant...<br />
                    <h6 class="font-italic">Digital Platform for farmers & Agriculture...!</h6>
                </label>
                <p id="user" class="fa fa-user-circle" aria-hidden="true"><asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label></p>      
                <asp:Button runat="server" id="l"  Text="Home" class="btn btn-success" OnClick="l_Click"></asp:Button>
                
            </div>
            <hr />
            <label style="color: #009933; font-size: medium; font-weight: bold">Government Schemes</label><br />
            <a id="a" href="#">
                <asp:Image ID="Image1" ImageUrl="~/imgs/atallllll.jpg" runat="server" Height="77px" Width="94px" />&nbsp;Atal Fension Yojana</a>
            <div id="divv">
                <h3>Atal Pension Yojana</h3>
                <p>
                    “As our young population ages, it is also going to be pension-less. Encouraged by the success of the Pradhan Mantri Jan Dhan Yojana, I propose to work towards creating a universal social security system for all Indians that will ensure that no Indian citizen will have to worry about illness, accidents or penury in old age”, said Finance Minister Jaitley in his 2015-16 Union Budget speech. In keeping with this ideal, a National Pension Scheme, the Atal Pension Yojana was effected from May, 2015. The scheme intends to bring pension benefits to people of the unorganised sector so that they can enjoy social security with a minimum contribution per month. People who work in the private sector or are employed in occupations that do not give them the benefit of pension can apply for this scheme. They can opt for a fixed pension of INR 1,000 or 2,000 or 3,000 or 4,000 or 5,000 on attaining the age of 60. The amount of contribution and the individual’s age will determine the pension. Upon the contributor’s death, the spouse of the contributor can claim the pension and after the spouse’s death the nominee will be returned the corpus accrued. The amount collected under the scheme is to be managed by Pension Funds Regulatory Authority of India (PFRDA) as per the investment pattern specified by the Government of India. Individual applicants will have no choice of pension funds or investment allocation.
                </p>
                <strong>Benefits of Atal Pension Yojana (APY)</strong><br />
                The Atal Pension Scheme will bring security to ageing Indians while at the same time promote a culture of savings and investment among the lower and lower middle class sections of society. One of the greatest benefits of the scheme may be enjoyed by the poorer sections of society. The government of India has decided to contribute 50 percent of the user’s contribution or INR 1,000 a year (whichever is lower) for a period of five years. This contribution will, however, be enjoyed only by those who are not income tax payers and those who join the scheme before 31 December 2015.

                <strong>
                    <br />
                    Who is Eligible for Atal Pension Yojana?</strong><br />
                The Atal Pension Yojana (APY)  is open to all Indians between the age of 18 and 40. This allows an individual to contribute for at least 20 years before reaping the benefits of the scheme. Any bank account holder who is not a member of any statutory social security scheme can avail of the scheme. All existing members of the government’s ‘Swavalamban Yojana NPS Lite’ will automatically be migrated to the Atal Pension Yojana. It will now replace the Swavalamban scheme, which did not gain much popularity across the country.

                <br />

                <b>How to Enroll for Atal Pension Scheme?</b><br />
                To sign up for the Atal Pension Yojana, an account holder must fill in an authorisation form and submit it to his/her bank. The form will require complete details including account number, spouse and nominee details, and authorisation for auto debit of contribution amount. Account holders signing up for the scheme need to ensure that sufficient balance is maintained in the account every month, failing to do so will attract a monthly fine of –
               <br />
                <ul>
                    <li>INR 1 for monthly contribution up to INR 100</li>
                    <li>INR 2 for monthly contribution between INR 101 and INR 500</li>
                    <li>INR 5 for monthly contribution between INR 501 and INR 1,000</li>
                    <li>INR 10 for monthly contribution beyond INR 1,001</li>
                    <li>If no payment is made towards the scheme</li>

                    <li>for six months, the holder’s account will be frozen</li>
                    <li>for 12 months, the holder’s account will be deactivated</li>
                    <li>for 24 months, the holder’s account will be closed</li>
                </ul>
                APY Application Form
The application form can be downloaded from  <a href="http://www.jansuraksha.gov.in/FORMS-APY.aspx">http://www.jansuraksha.gov.in/FORMS-APY.aspx</a>.<br />
                The forms are available in different languages – English, Hindi, Gujarati, Bangla, Kannada, Odia, Marathi, Telugu and Tamil.
            </div>
            <hr />
            <br />

            <a id="a1" href="#">
                <asp:Image ID="Image3" runat="server" Height="77px" Width="94px" ImageUrl="~/imgs/pmsby.png" />&nbsp;Pradhana Manthri Suraksha Bhim Yojana(PMSBY)</a>
            <div id="div1"  >
                Pradhan Mantri Suraksha Bima Yojana<br />
                It is available to people between 18 and 70 years of age with bank accounts.<br />
                It has an annual premium of 12  exclusive of taxes. The GST is exempted on Pradhan Mantri Suraksha Bima Yojana.<br />
                The amount will be automatically debited from the account. The accident insurance scheme will have one year cover from June 1 to May 31 and would be offered through banks and administered through public sector general insurance companies.

In case of accidental death or full disability, the payment to the nominee will be 2 lakh and in case of partial Permanent disability 1 lakh.<br />
                Full disability has been defined as loss of use in both eyes, hands or feet.<br />
                Partial Permanent disability has been defined as loss of use in one eye, hand or foot.

This scheme will be linked to the bank accounts opened under the Pradhan Mantri Jan Dhan Yojana scheme. 
                <br />
                Most of these account had zero balance initially.<br />
                The government aims to reduce the number of such zero balance accounts by using this and related schemes.<br />
                Now all Bank account holders can avail this facility through their net-banking service facility at any time of the year.</div>

            <hr />
            <br />

            <a id="a2" href="#">
                <asp:Image ID="Image4" runat="server" Height="77px" Width="94px" ImageUrl="~/imgs/krishiy.jpg" />&nbsp;Rashtriya Krishi Vikas Yojana</a>
            <div id="div2" >
                <h3>Rashtriya Krishi Vikas Yojana </h3>
                It is a State Plan Scheme of Additional Central Assistance launched in August 2007 as a part of the 11th Five Year Plan by the Government of India.<br />
                Launched under the aegis of the National Development Council, it seeks to achieve 4% annual growth in agriculture through development of Agriculture and its allied sector during the period under the 11th Five Year Plan.


                <b>
                    <br />
                    Aims</b>
                <br />
                This programme is essentially a State Plan Scheme that seeks to provide the States and Territories of India with the autonomy to draw up plans for increased public investment in Agriculture by incorporating information on local requirements,geographical/climatic conditions, available natural resources/ technology and cropping patterns in their districts so as to significantly increase the productivity of Agriculture and its allied sectors and eventually maximize the returns of farmers in agriculture and its allied sectors.

                <b>
                    <br />
                    Eligibility</b>
                <br />
                A State is eligible for funding under the RKVY if it maintains or increases the percentage of its expenditure on Agriculture and its Allied Sectors with respect to the total State Plan Expenditure, where the Base Line for this expenditure is the average of the percentage of expenditure incurred by a State Government for the previous three years on Agriculture and its Allied Sectors minus any funds related to Agriculture and its allied sectors that it may already have received in that time under its State Plan.
            </div>

            <hr />

            <a id="a3" href="#">
                <asp:Image ID="Image5" runat="server" Height="77px" Width="94px" ImageUrl="~/imgs/images (6).jpg" />&nbsp;Crop insurance scheme deadline extended to 5 march 18,application will be accepted only in banks and from non loanee farmers.</a>
            <div id="div3">
               <u> Prime minister crop insurance scheme-Kharif 2017-18.</u><br />
                On request of many farmers we giving Kharif crop insurance details for farmers in simplified manner.<br />
                <b>Eligibility:</b><br />
                <p>Any farmer and compulsory for farmers who have availed crop loan.</p>
                <b>Document Required:</b><br />
                <ul>
                    <li>Adhar Card</li>
                    <li>Voter ID/kisan credit card/NAREGA job card/Driving license.</li>
                    <li>7/12 extract</li>
                    <li>sowing certificate(not mandatory)</li>
                    <li>Bank Account Details</li><br />
                     Bank account must be linked with Adhar card number.
                </ul>
               
               <i> Farmer can file application online through:</i><br />
               <a href="#"> http://agri-insurance.gov.in/Update_Farmer_Details_Home.aspx </a><br />
                or by visiting nearest common service centers.Farmers can contact Agriculture Department for more information.<br />
                last date:5 march <br />
                For more details call-18001030061<br />
                <b>Eligible Kharif Crops:</b>Paddy,Jowar,Bajara,Ragi,Maize,Redgram,Greengram,Blackgram,Groundnut,Soybean,Sunflower,Sesame,Cotton,Onion,Niger.
                </div> <hr />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" CssClass="nav-link" PostBackUrl="~/farmerhomepage.aspx" Font-Size="Medium" >Back</asp:LinkButton>
            <br />
            <footer style="text-align: center;">&copy E-Farming All rights Reserved</footer>

        </div>
    </form>

</body>
</html>
