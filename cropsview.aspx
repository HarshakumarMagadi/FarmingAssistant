<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cropsview.aspx.cs" Inherits="cropsview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />
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
            position:absolute;
            transform:translate(770%,100%);
             float:right;
        }

       

        #pp {
            font-size: 40px;
            margin-left: 2px;
        }

        #i {
            margin-left: 2px;
            font-size: medium;
        }

        .x {
            background-color: white;
            border: none;
        }

        #c1 {
            cursor: pointer;
            margin-left: 100px;
        }

        #c2 {
            margin-left: 100px;
            cursor: pointer;
        }

        #c3 {
            margin-left: 100px;
            cursor: pointer;
        }
        #user{
            float:right;
            left: 1000px;
            top: 5px;
            width: 100px;
            margin-right:0px;
         
        }
    </style>
    <script>
        $(function () {
            $("#v").hide();
            $("#c1").click(function () {
                // $("#fl").hide();
                // $("#fu").hide();
                $("#v").slideToggle("100");

            });
        });
        $(function () {
            $("#fu").hide();
            $("#c2").click(function () {
                //$("#v").hide();
                // $("#fl").hide();
                $("#fu").slideToggle("100");

            });
        });
        $(function () {
            $("#fl").hide();
            $("#c3").click(function () {
                // $("#v").hide();
                //$("#fu").hide();
                $("#fl").slideToggle("100");

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
                <p id="user" class="fa fa-user-circle" aria-hidden="true"><asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label></p>      
                <asp:Button runat="server" id="l"  Text="Logout" class="btn btn-success" OnClick="l_Click"></asp:Button>
                
            </div>

            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="farmerhomepage.aspx">Home</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                       
                    </ul>
                    <div class="form-inline my-2 my-lg-0">
                        <asp:TextBox ID="TextBox5" runat="server" class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search"></asp:TextBox>

                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </div>
                </div>
            </nav>

            <div class="x">
                <p id="pp" class="text-success">Get Started..   </p>
                <i id="i">View by <b>Categories</b></i>
                <span id="c1" class="btn btn-primary">Vegetables</span>
                <span id="c2" class="btn btn-primary">Fruits</span>
                <span id="c3" class="btn btn-primary">Flowers</span>
            </div>
            <hr />

            <div class="row">

                <div id="v" class="col-3 mt-3">
                    <ul class="list-unstyled">
                        <li>
                            <a href="chilly.aspx" class="nav-link">
                                <img src="imgs/chilly1.png" class="rounded-circle mr-1 " alt="..." width="40px" height="40px" />
                                chilly</a>
                        </li>
                        <li>
                            <a href="potato.aspx" class="nav-link">
                                <img src="imgs/potato.jpg" class="rounded-circle mr-1 " alt="..." width="40px" height="40px" />
                                Potato</a>
                        </li>

                        <li>
                            <a href="onion.aspx" class="nav-link">
                                <img src="imgs/onion1.jpg" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />Onion</a>
                        </li>
                        <li>
                            <a href="tomato.aspx" class="nav-link">
                                <img src="imgs/tomato.jpg" class="rounded-circle mr-0" alt="..." width="40px" height="40px" />Tomato</a>
                        </li>
                        <li>
                            <a href="#" class="nav-link">
                                <img src="imgs/maize.jpg" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />jola</a>
                        </li>
                    </ul>
                </div>

                <div id="fu" class="col-3 ml-2 mt-3">
                    <ul class="list-unstyled">
                        <li>
                            <a href="Orange.aspx" class="nav-link">
                                <img src="imgs/orange1.jpg" class="rounded-circle mr-1 " alt="..." width="40px" height="40px" />Orange</a>
                        </li>
                        <li>
                            <a href="Mango.aspx" class="nav-link">
                                <img src="imgs/mango.jpg" class="rounded-circle mr-0" alt="..." width="40px" height="40px" />Mango</a>
                        </li>
                        <li>
                            <a href="Banana.aspx" class="nav-link">
                                <img src="imgs/untitled.png" class="rounded-circle mr-0" alt="..." width="40px" height="40px" />Banana</a>
                        </li>
                        <li>
                            <a href="papaya.aspx" class="nav-link">
                                <img src="imgs/papaya.jpg" class="rounded-circle mr-0" alt="..." width="40px" height="40px" />Papaya</a>
                        </li>
                        <li>
                            <a href="#" class="nav-link">
                                <img src="imgs/grape1.png" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />Grapes</a>

                        </li>
                    </ul>
                </div>

                <div id="fl" class="col-3 ml-2 mt-3">
                    <ul class="list-unstyled">
                        <li>
                            <a href="sunflower.aspx" class="nav-link">
                                <img src="imgs/sunflower.jpg" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />Sunflower</a>
                        </li>
                        <li>
                            <a href="marigold.aspx" class="nav-link">
                                <img src="imgs/mari.jpg" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />MariGold</a>
                        </li>
                        <li>
                            <a href="#" class="nav-link">
                                <img src="imgs/rose.jpg" class="rounded-circle mr-1" alt="..." width="40px" height="40px" />Rose</a>

                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
