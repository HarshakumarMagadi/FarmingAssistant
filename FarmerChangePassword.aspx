<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerChangePassword.aspx.cs" Inherits="FarmerChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>

            </div>
            <hr />
            <br />
            <p class="text text-success font-weight-bold">Change Password</p><hr />
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label1" runat="server" Text="Enter Old Password"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator></td>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label2" runat="server" Text="Enter New Password"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator></td>       
                </div>
                <div class="col-4">
                    <asp:Label ID="Label3" runat="server" Text="Re-enter New Password"></asp:Label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:CompareValidator>

                </div>
                </div>
            <br />
                <div class="row">
                    <div class="col-4">
                        <asp:Button ID="Button1" class="btn btn-success" runat="server" Text="Save" OnClick="Button1_Click"/>
                    </div>
                    <div class="col-4">
                        <asp:Button ID="Button2" class="btn btn-warning" runat="server" Text="Cancel" CausesValidation="False" OnClick="Button2_Click" />
                    </div>
                </div>
            </div>
    </form>
</body>
</html>
