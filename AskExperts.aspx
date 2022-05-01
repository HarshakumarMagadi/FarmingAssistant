<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AskExperts.aspx.cs" Inherits="AskExperts" %>

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


</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">
        <div class="container" style="background-color: white;">

            <div class="alert alert-secondary" role="alert">
                <img src="imgs/logomyagri.png" class="rounded-circle" height="70px" width="70px" />&nbsp;<label class="font-weight-bold" style="font-size: x-large">Farming Assistant...<br />
                    <h6 class="font-italic">Digital Platform for farmers & Agriculture...!</h6>
                </label>
                <a id="l" href="formerlogin.aspx" class="btn btn-success">Logout</a>
                <div id="p">Ask our Experts....</div>
            </div>


            <hr />
            <br />

            <asp:Label runat="server" Text="Ask Experts" ForeColor="#009933" Font-Size="Medium"></asp:Label>
            <p>
                Farmer can ask thier doughts,problems in growing crops,fertilizers,sowing,harvesting ect...<br />
                Our experts will surely reply to your questions.<br />
                Unesseccesary questions are not consider there were aborted.
            </p>
            <p class="text-info font-weight-bold">Some Suggestions like</p>
            <div class="row">
                <div class="col-12">
                    <asp:CheckBox ID="CheckBox1" runat="server" class="alert alert-light" Text=" Leaves of Tomato turnings to yellow and srinkking" role="alert" ToolTip="use as doughts" OnCheckedChanged="Check_Clicked" AutoPostBack="true" />
                    <asp:CheckBox ID="CheckBox2" runat="server" class="alert alert-light" role="alert" Text="BlackSpots on rose or tomato or other plant leafs" OnCheckedChanged="Check_Clicked" AutoPostBack="true"></asp:CheckBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <asp:CheckBox ID="CheckBox3" runat="server" class="alert alert-light" Text=" increasing of dummy/weightless seeds in paddy,wheate and other crops" role="alert" ToolTip="use as doughts" OnCheckedChanged="Check_Clicked" AutoPostBack="true" />
                    <asp:CheckBox ID="CheckBox4" runat="server" class="alert alert-light" role="alert" Text="Dark or color patches on Beans" OnCheckedChanged="Check_Clicked" AutoPostBack="true"></asp:CheckBox>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <asp:CheckBox ID="CheckBox5" runat="server" class="alert alert-light" Text="Ruined of tomatoes due to fungal or increase of water content" role="alert" ToolTip="use as doughts" OnCheckedChanged="Check_Clicked" AutoPostBack="true" />
                </div>
            </div>

            <br />
            <p class="text-success font-weight-bold">Details Required:</p>
            <div class="row">

                <div class="col-4">

                    <asp:Label ID="Label3" runat="server" Text="your name"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
                <div class="col-4">
                    <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>

                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>

                    <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" TextMode="Phone" MaxLength="10" ReadOnly="true"></asp:TextBox>

                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-8">
                    <label>
                        Ask Question<br />
                        (What's your doughts?)</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" CssClass="form-control" Rows="5" runat="server" TextMode="MultiLine"></asp:TextBox>
                </div>
            </div>
            <hr />
            <br />
            <div class="row">
                <div class="col-8">
                    <asp:Label ID="Label5" runat="server" Text="Add Image"></asp:Label><br />
                    <asp:Image ID="Image1" runat="server" class="img-fluid" alt="Responsive image" Height="220px" Width="750px" />
                    <br />
                    <asp:FileUpload ID="FileUpload1" runat="server" />&nbsp;
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Upload" CausesValidation="False" OnClick="Button1_Click" />
                </div>
            </div>
            <br />
            <hr />
            <div class="row">
                <div class="col-3">
                    <label class="text text-info">ID for this post:</label><p>(Note for feature reference)</p>
                </div>
                <div class="col-2">
                    <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <hr />
            <br />
            <div class="row">
                <div class="col-4">
                    <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Post" OnClick="Button2_Click" />
                </div>
                <div class="col-4">
                    <asp:Button ID="Button3" CssClass="btn btn-warning" runat="server" Text="Cancel" CausesValidation="False" OnClick="Button3_Click" />
                </div>
            </div>

            <br />
            <br />

        </div>
        <footer style="text-align: center;">&copy E-Farming All rights Reserved</footer>

    </form>
</body>
</html>
