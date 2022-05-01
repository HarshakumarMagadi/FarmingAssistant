<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

     
</head>
<body style="background-color: #eaedf1">

    <form id="Form1" runat="server">

        <div class="container" style="background-color: white;">
                 <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
          
                    </div>
            

          

             <h2>Admin Login</h2>

            <div class="row">
                <div class="col-5"></div>
                <div class="col-3">
                    <asp:Image ID="Image1" runat="server" CssClass="rounded-circle w-50 h-50 mb-0" ImageUrl="~/imgs/logomyagri.png" />
                </div>
                <div class="col-4">
                   
                </div>
            </div>
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter phon no" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                </div>
                <div class="col-4"></div>
                </div><br />
            <div class="row">
                <div class="col-4"></div>
                <div class="col-4">
                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Enter Password" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:Label ID="Label4" runat="server" Text=" "></asp:Label>

                </div>
                <div class="col-4"></div>
            </div>
            <br />
            <div class="row">
                <div class="col-4"></div>
                <div class="col-1">
                    <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                </div>
                <div class="col-2">
                    
                </div>
                <div class="col-1">
                    <asp:Button class="btn btn-warning" ID="Button2" runat="server" OnClick="Button2_Click" Text="cancel" CausesValidation="False" />
                </div>
                <div class="col-4"></div>
            </div>
            <br /><br /><br /><br /><br /><br /><br /><br />
        </div>

    </form>
</body>
</html>
