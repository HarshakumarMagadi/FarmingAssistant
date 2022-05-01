<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealersHomePage.aspx.cs" Inherits="DealersHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />


    <script src="slides/jquery.js"></script>
    <script src="slides/script.js"></script>
    <link href="slides/Style.css" rel="stylesheet" />

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
    <style>
        #x {
            position: absolute;
            transform: translate(10%,-10%);
            float: right;
            left: 840px;
            top: 34px;
            width: 250px;
            height: 97px;
        }

        .cflag {
            float: right;
        }
    </style>
    <script>
        $(function () {
            $("#posts").hide();
            $("#p").click(function () {
                $("#price").hide();
                $("#posts").slideToggle("100");

            });
        });
        $(function () {
            $("#price").hide();
            $("#mp").click(function () {
                $("#posts").hide();
                $("#price").slideToggle("100");

            });
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="background-color: white; height: 1654px;">

            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
                <div id="x">
                    <p class="fa fa-user-circle" aria-hidden="true">
                        <asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label>
                    </p>
                   &nbsp;&nbsp
                        <%-- <div class="spinner-border text-warning" role="status">
                            <span class="sr-only">Loading...</span>
                        </div>

                    <div class="spinner-border text-light" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>

                    <div class="spinner-border text-success" role="status">
                        <span class="sr-only">Loading...</span>
                    </div>--%>
                    
                   
                </div>

            </div>
             <asp:Button ID="Button3" runat="server" Text="logout" CssClass="btn btn-primary" OnClick="Button3_Click" CausesValidation="False"/>
            <br />
            <asp:Label ID="errormsg" runat="server" CssClass="text-danger float-sm-right" Text=" "></asp:Label>
            <div class="row">
                <div class="col-3">
                    <h3 class="alert alert-dismissible mb-0">Getting Started....</h3>
                    <p class="ml-5  mt-0">Post your requires.</p>
                </div>

                <div class="col-3">
                    <br />
                    <br />
                    <a class="btn btn-outline-dark" id="p" href="#posts" data-toggle="tooltip" data-placement="top" title="Post requierements">Post</a>

                </div>
                <div class="col-3">
                    <br />
                    <br />
                    <a href="#price" class="btn btn-outline-dark" id="mp" data-toggle="tooltip" data-placement="bottom" title="view latest market prices..">View Marketing price</a>

                </div>
                 <div class="col-3">
                    <br />
                    <br />
                    <a href="DealerViewAllPosts.aspx" class="btn btn-outline-dark" id="v" data-toggle="tooltip" data-placement="bottom" title="view your posted posts ..">View All posts</a>

                </div>
            </div>
            <hr />

            <div class="row">
                <div class="col-4">
                    <div id="posts">
                        <p class="text-dark font-weight-bolder">POST</p>
                        <hr />
                        <div class="justify-content-center">
                            <p></p>
                            <label>Name:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ValidationExpression="[a-zA-Z ]+$" ErrorMessage="*" ControlToValidate="TextBox7" ForeColor="Red" Font-Size="XX-Large"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox><br />
                            <label>Mobile number:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Invalid number" ControlToValidate="TextBox6" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter mobile number" ControlToValidate="TextBox6" ForeColor="Red"></asp:RequiredFieldValidator>
                            <br />
                            <label>Name of commodity:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ValidationExpression="[a-zA-Z ]+$" ErrorMessage="*" ControlToValidate="TextBox1" ForeColor="Red" Font-Size="XX-Large">
                                </asp:RegularExpressionValidator><asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox><br />
                                <label>unit:</label>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control" >
                            <asp:ListItem>tons</asp:ListItem>
                            <asp:ListItem>Quintal</asp:ListItem>
                            <asp:ListItem>Kg</asp:ListItem>
                            <asp:ListItem>litre</asp:ListItem>
                            <asp:ListItem>Centilitre</asp:ListItem>
                            <asp:ListItem>Cubic Centimeter</asp:ListItem>
                        </asp:DropDownList><br />
                       
                            <label>Quantity:</label><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox2" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="e.g: 40"></asp:TextBox>
                                <br />
                                <label>Price(per unit):</label><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red" Font-Size="XX-Large" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="e.g: 40"></asp:TextBox>
                                <br />

                                <label>Shipping place:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red" Font-Size="XX-Large"></asp:RequiredFieldValidator><asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                <br />
                                <label>Shipping Date(Requires with in or on):</label><asp:TextBox ID="TextBox4" runat="server" TextMode="DateTimeLocal" CssClass="form-control"></asp:TextBox><br />


                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Post" OnClick="Button1_Click" />
                        </div>
                    </div>
                </div>

                <div class="col-12">
                    <div id="price">
                        <p class="text-dark font-weight-bolder">View Current market prices.</p>


                        <asp:Repeater ID="Repeater1" runat="server">
                            <HeaderTemplate>
                                <table class="table table-responsive table-bordered">

                                    <tr class="text-success">
                                        <th>District/city</th>
                                        <th>Market Area/Mandi Address</th>
                                        <th>Commodity</th>
                                        <th>Unit</th>
                                        <th>Minimum Price</th>
                                        <th>Maximum Price</th>
                                        <th>Arivals</th>
                                        <th>Updated on</th>
                                    </tr>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>

                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%#Eval("district") %>' BorderStyle="None"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%#Eval("mandi") %>' BorderStyle="None"></asp:TextBox>
                                        <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%#Eval("taluk") %>' BorderStyle="None"></asp:TextBox>

                                    </td>
                                    
                                       <td>  <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("commodity").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox></td>

                                       <td>  <asp:TextBox ID="TextBox9" runat="server" ReadOnly="true" Text='<%#Eval("unit") %>' BorderStyle="none"></asp:TextBox></td>

                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Text='<%#Eval("minprice") %>' BorderStyle="None"></asp:TextBox></td>
                                    <td>


                                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Text='<%#Eval("maxprice") %>' BorderStyle="None"></asp:TextBox></td>

                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Text='<%#Eval("arivals") %>' BorderStyle="None"></asp:TextBox></td>

                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" Text='<%#Eval("updatedon") %>' BorderStyle="None"></asp:TextBox></td>

                                </tr>


                            </ItemTemplate>
                            <FooterTemplate>
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
