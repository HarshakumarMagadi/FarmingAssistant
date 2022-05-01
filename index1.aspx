 <%@ Page Language="C#" AutoEventWireup="true" CodeFile="index1.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style>
        #b {
            width: 1050px;
            position: absolute;
            top: 27%;
            left: 8%;
            transform: translate(10%,10%);
            border-radius: 4px;
            box-shadow: 3px 3px 10px black;
            height: 784px;
            border: 5px none #7C6F57;
            padding: 3px;
            background-color: white;
        }

        #i {
            width: 482px;
            position: absolute;
            top: 5%;
            left: 13%;
            transform: translate(10%,10%);
            border-radius: 2px;
            height: 122px;
        }

        #u {
            width: 293px;
            position: absolute;
            top: 80%;
            left: 39%;
            transform: translate(10%,10%);
            border-radius: 2px;
            height: 251px;
        }

        #ccc {
            width: 317px;
            position: absolute;
            top: 80%;
            left: 1%;
            transform: translate(10%,10%);
            border-radius: 2px;
            height: 200px;
        }

        #f {
            width: 260px;
            position: absolute;
            top: 80%;
            left: 71%;
            transform: translate(10%,10%);
            border-radius: 2px;
            height: 249px;
        }

        #aaa {
            text-align: left;
        }

        #bbb {
            text-align: left;
        }

        

        #Image1 {
            opacity: 1;
            margin-left: 0px;
        }

        #d1 {
            background: white;
            height: 80px;
            width: 80px;
            position: absolute;
            border-radius: 50%;
            opacity: 0.9;
        }
    </style>
   <!-- <script>
        $(function () {
            var div = $("#d1");
            div.animate({ opacity: 1 });
            div.animate({ height: '+=100px', width: '+=100px', top: '+=100px' }, 500);
            div.animate({ height: '-=100px', width: '-=100px', top: '+=100px' }, 500);
            div.animate({ height: '+=100px', width: '+=100px', top: '-=80px' }, 500);
            div.animate({ height: '-=100px', width: '-=100px', top: '-=65px', right: '+=1300px' }, 500);
            div.animate({ opacity: 0.9 });
        });
    </script>-->

</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">

        <div class="container" style="background-color: white;">
            <br />
            <img src="imgs/logomyagri.png" id="d1" />
            <asp:Image ID="Image1" CssClass="img-fluid" runat="server" Height="350px" ImageAlign="Middle" ImageUrl="imgs/img12.jpeg" Width="98%" />
            <div id="i">
               

                <label style="font-family: Arial; font-size: x-large; font-weight: bold;">Farming Assistant...</label>
                <h3>Digital Platform for farmers & Agriculture...!</h3>
            </div>
            <div id="b">

                <nav class="navbar navbar-expand-lg navbar-light bg-light">

                    <ul class="nav justify-content-center">
                        <li class="nav-item"><a class="nav-link" href="index1.aspx">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="formerlogin.aspx">Farmer Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="AdminLogin.aspx">Admin Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="Dealerlogin.aspx">Buyer/Dealer Login</a></li>
                        <li class="nav-item"><a class="nav-link" href="HtmlPage.html">About us</a></li>
                    </ul>

                </nav>
                <br />
                <div class="jumbotron">
                    <h2>Not Registered!!!</h2>
                    <p>click here to signup</p>
                    <p><a class="btn btn-primary btn-lg" href="farmersignup.aspx" role="button">SignUp</a></p>

                </div>

                <div class="alert alert-success" role="alert">
                    <h4 class="alert-heading">Farming Assistant!</h4>
                    <p>Farming – a digital platform for farmers – aims at creating an integrated network in the agri-community. The platform connects farmers and agri-experts across the country and enables exchange of thoughts, ideas and information – creating a true, trustworthy eco-system. It is India’s first such objective platform for farmers. Farming platform intends to accompany farmers in their journey towards better and innovative farming while enhancing their incomes.</p>

                    <hr />
                    <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
                </div>

                <br />
                <footer style="background-color: #020202; height: 350px; color: white;">


                    <div id="ccc" style="width: 344px; height: 254px;">
                        <h3>ABOUT US</h3>
                        <p>
                            Farming Assistant is the platform in agriculture which has been specifically designed for farmers. It aims to assist them in their journey towards better and innovative farming while boosting their incomes. This platform brings together advisory, market prices,new technologies and success stories - to accompany farmers in their journey towards success. 
                        </p>

                        <p style="color: #009900;">Call us on our Tall Free Number: 1843 456 7860</p>
                        <p style="color: #009900;">
                            Email Us:<a href="mailto:202harsha@gmail.com">send me mail</a><br />
                            Call Us: <a href="tel:+917760291499">call me </a>

                        </p>



                    </div>
                    <br />
                    <div id="u">
                        <div id="aaa">
                            <h3>USEFULL LINKS</h3>

                            <a href="#">Media</a><br />
                            <br />
                            <a href="#">Privacy Policy</a><br />
                            <br />

                            <a href="#">Terms of Use</a><br />
                            <br />

                            <a href="#">Contact Us</a>
                        </div>
                        <br />
                        <br />
                        <br />
                        <br />
                        <!-- <span style="text-align: center;">&copy;2019 Farming... All rights Reserved</span>-->
                    </div>
                    <div id="f">
                        <div id="bbb">
                            <h3>FOLLOW US ON</h3>
                            <a href="#">
                                <asp:Image CssClass="rounded-circle" ID="imagefollows" runat="server" ImageUrl="img/sololearn.png" Width="35px" Height="35px" />&nbsp;SoloLearn</a><br />
                            <br />
                            <a href="#">
                                <asp:Image CssClass="rounded-circle" ID="imagefollowf" ImageUrl="imgs/fb2.jpg" runat="server" Width="35px" Height="35px" />&nbsp;Facebook</a><br />
                            <br />
                            <a href="#">
                                <asp:Image CssClass="rounded-circle" ID="imagefollowt" ImageUrl="imgs/twitter2.jpg" runat="server" Width="35px" Height="35px" />&nbsp;Twitter</a><br />
                            <br />
                            
                        </div>
                    </div>


                </footer>


            </div>
        </div>



    </form>
</body>
</html>
