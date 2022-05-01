<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHomePage.aspx.cs" Inherits="AdminHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <script src="slides/jquery.js"></script>
    <script src="slides/script.js"></script>
    <link href="slides/Style.css" rel="stylesheet" />
    <title></title>
    <meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
     
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
        

            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
                <div class="ml-lg-n5 float-right">
                    
                    <asp:Button ID="Button2" runat="server" Text="Logout" OnClick="Button2_Click" CssClass="btn btn-outline-info" />

                </div>

            </div>

            <div class="row">
                <div class="col-4">
                     <a class="btn btn-outline-primary"  href="AdminViewAskedQuestions.aspx" data-toggle="tooltip" data-placement="top" title="View Asked quetions">View Problems</a>
                   </div>

                <div class="col-4">
                    <a class="btn btn-outline-primary"  href="AdminMarketPage.aspx" data-toggle="tooltip" data-placement="top" title="marketing area">Marketing</a>
                </div>
                
            </div>
            <hr />
            <div class="row">
                <div class="col-4">
                    <h3 class="alert alert-dismissible mb-0">Getting Started....</h3>
                    <p class="ml-5  mt-0">Add,update Marketprices, solve farmers problems, view complaints...</p>
                </div>

                <div class="col-2">
                    <br />
                    <br />
                    <a class="btn btn-outline-dark" id="p" href="#posts" data-toggle="tooltip" data-placement="top" title="Add latest market price">Add MarketPrice</a>

                </div>
                
            </div>
            <hr />
            <script>
        $(function () {
            $("#post").hide();
            $("#p").click(function () {
                //$("#price").hide();
                $("#post").slideToggle("100");

            });
        });
        
    </script>
            <div class="row">
                <div class="col-5" id="post">
                    <div class="justify-content-center">
                        <p></p>
                        <label>Name of commodity:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[a-zA-Z ]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <label>District:</label>
                        <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" AutoPostBack = "true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            <asp:ListItem Selected="True">Ramanagara</asp:ListItem>
                            <asp:ListItem>Tumakur</asp:ListItem>
                            <asp:ListItem>Banglore</asp:ListItem>
                        </asp:DropDownList>
                        <br />

                        <label>Market Area/Taluk:</label>
                        <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                            <%--<asp:ListItem Selected="True">Magadi</asp:ListItem>
                            <asp:ListItem>channapattana</asp:ListItem>
                            <asp:ListItem>kanakapura</asp:ListItem>--%>
                        </asp:DropDownList>
                        <br />

                        <label>Mandi:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[a-zA-Z, ]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>unit:</label>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" >
                            <asp:ListItem>tons</asp:ListItem>
                            <asp:ListItem>Quintal</asp:ListItem>
                            <asp:ListItem>Kg</asp:ListItem>
                            <asp:ListItem>litre</asp:ListItem>
                            <asp:ListItem>Centilitre</asp:ListItem>
                            <asp:ListItem>Cubic Centimeter</asp:ListItem>
                        </asp:DropDownList><br />
                       
                        <label>Minimum price:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />

                        <label>Maximum price:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <label>Arrivals:</label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[a-zA-Z0-9 ]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <label>updated on:</label><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox><br />
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Update" OnClick="Button1_Click" />
                    </div>
                </div>

            </div>


        </div>
    </form>
</body>
</html>
