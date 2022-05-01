<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dealerlogin.aspx.cs" Inherits="Dealerlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style>
       
    </style>
</head>
<body>

    <form id="Form1" runat="server">

        <div class="container" style="background-color: white;">

            <div class="alert alert-heading">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" BackColor="White" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: large; font-weight: normal; color: #000000;">Farming Asistant...</label>


            </div>
            <hr />
        
            <div class="row">
                <div class="col-12">
                    <h3>Dealer/Market Agent login</h3>
                    <p class="text text-success">login using registered mobile no and password..</p>
                             </div>

            </div>
            <hr /><br />
            <div class="row">
                <div class="col-4">

                    <h2>Login</h2>

                        <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ValidationExpression="^([6-9]{1})([0-9]{9})$" ErrorMessage="Enter phone no" ForeColor="Red"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                  
                <br />
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter Password" ForeColor="Red" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>

                    </div>

                <div class="col-2"></div>
                  
                <div class="col-3">
                    <br />
                    <h3>Not registered?</h3>
                    <a class="btn btn-primary" href="DealerRegistration.aspx">SignUp</a>
                </div>
                <div class="col-3"></div>
            </div>

            <br /><br />
            <div class="row">
                <div class="col-1">
                     <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                    </div>
              
                <div class="col-2">
                    <asp:Label ID="Label3" runat="server" Text="New user "></asp:Label>
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/DealerRegistration.aspx">click here?</asp:LinkButton>
                    </div>
                    <div class="col-1">
                    <asp:Button class="btn btn-warning" ID="Button2" runat="server" Text="cancel" CausesValidation="False" OnClick="Button2_Click1" />

                </div>

            </div>
           
        </div>
    </form>
</body>
</html>
