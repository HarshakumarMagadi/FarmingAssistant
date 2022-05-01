<%@ Page Language="C#" AutoEventWireup="true" CodeFile="formerlogin.aspx.cs" Inherits="formerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />

    <style>
       

        #TextBox1, #TextBox2 {
            border: none;
            outline: none;
            background: none;
            font-size: 18px;
            width: 80%;
            float: left;
            margin: 0 10px;
        }

        h2 {
            float: left;
            font-size: 40px;
            border-bottom: 5px solid #4caf50;
            margin-bottom: 15px;
            padding: 10px 0;
        }

        i {
            width: 26px;
            float: left;
            text-align: center;
        }

        .tb {
            width: 100%;
            overflow: hidden;
            font-size: 20px;
            padding: 4px 0;
            margin: 2px 0;
            border-bottom: 1px solid #4caf50;
        }

    
    </style> 
</head>
<body style="background-color: #eaedf1; background: url(imgs/pic3.jpg) no-repeat; font-family: sans-serif; background-size:cover">

    <form id="Form1" runat="server">

        <div class="container">
            <br /><br />
            <div class="row">
                <div class="col-5"></div>
                <div class="col-4">
                  &nbsp;&nbsp <asp:Image ID="Image1" class="rounded-circle" runat="server" Height="90px" Width="100px" ImageUrl="~/imgs/mag_logo_sp.png" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <h2>Login</h2>
                </div>
            </div>
        
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <p class="text-dark">Login using Your Registered Mobile number</p>
                </div>
            </div>
            
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter phone no" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter number in correct format" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                   
                    <div class="tb">
                        <i class="fas fa-user"></i>
                        <asp:TextBox ID="TextBox1" runat="server" TextMode="Phone" placeholder="Username"></asp:TextBox>
                    </div>
                   
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <div class="tb">
                        <i class="fas fa-key"></i>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" placeholder="password"></asp:TextBox>
                    </div>
                    <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>
                   
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-4"></div>
                <div class="col-1"></div>
                <div class="col-2">
                    <asp:Label ID="Label3" runat="server" Text="New user "></asp:Label>
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/farmersignup.aspx" CausesValidation="False">click here?</asp:LinkButton>
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-1"></div>
                <div class="col-4">
                    <a href="FarmerForgottPassward.aspx" id="a" class="nav-link">Forgot Password?</a>

                </div>

            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-1">
                    <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
                <div class="col-2"></div>
                <div class="col-1">
                    <asp:Button class="btn btn-warning" ID="Button2" runat="server" OnClick="Button2_Click" Text="cancel" CausesValidation="False" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
