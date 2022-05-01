<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerViewMarketPrices.aspx.cs" Inherits="FarmerViewMarketPrices" %>

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

</head>
<body>
    <form id="form1" runat="server">
        <div class=" ml-lg-5 mr-lg-5">
            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
                <p class="fa fa-user-circle ml-xl-n5 float-right" aria-hidden="true">
                    <asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label>
                </p>


            </div>
            <hr />
            <p class="text text-success">View latest Market Prices..</p>
            <p>
                Mandi  prices  of  all  APMC  mandi  across  India  are  published  here  in  an  easy  to  refer  format  for  the  farmers.
Farmers can also follow the market price trends of his crop of interest and make the right call about the justified price for his harvest.
            </p><hr />
         
            <p class="text text-info">Explore Market price by Filtering...</p>
            <div class="row">
                <div class="col-1">
                   <p class="fa fa-filter fa-1x ml-4 text-dark">Filter</p>
                </div>
              
                <div class="col-2">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Selected="True">--select District--</asp:ListItem>
                        <asp:ListItem>Ramanagara</asp:ListItem>
                        <asp:ListItem>Tumakur</asp:ListItem>
                        <asp:ListItem>Bangalure</asp:ListItem>

                    </asp:DropDownList>
                </div>
                
                <div class="col-2">
                    <asp:DropDownList ID="DropDownList2" runat="server" class="form-control">
                        <asp:ListItem Selected="True">--select crop--</asp:ListItem>
                        <asp:ListItem>banana</asp:ListItem>
                        <asp:ListItem>beans</asp:ListItem>
                        <asp:ListItem>tomato</asp:ListItem>
                        <asp:ListItem>onion</asp:ListItem>
                        <asp:ListItem>paddy</asp:ListItem>
                        <asp:ListItem>chilly</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <%--<div class="col-2">
                    <asp:TextBox ID="TextBox10" runat="server" TextMode="Date" CssClass="form-control") %>'"></asp:TextBox>
                    </div>--%>
                <div class="col-2">
                    <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Go!" OnClick="Button1_Click" />
                </div>
                <div class="col-2">
                    <asp:Button ID="Button2" class="btn btn-info" runat="server" Text="clear filters" OnClick="Button2_Click"/>
                </div>
            </div>
            <br /><br />
        <div class="row">
            <div class="col-lg-12">

                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table class="table table-bordered">

                            <tr class="text-success d-sm-flex">
                                <th class="col-sm-1">District</th>
                                <th class="col-sm-2">Address/Mandi/Area</th>
                                <th class="col-sm-1">Commodity</th>
                                <th class="col-sm-1">Minimum Price</th>
                                <th class="col-sm-1">Maximum Price</th>
                                <th class="col-sm-1">Unit</th>
                                <th class="col-sm-1">commodity Arivals</th>
                                <th class="col-sm-1">Updated on</th>
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="d-sm-flex">
                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%#Eval("district") %>' BorderStyle="None"></asp:TextBox></td>
                            <td class="col-sm-2">
                                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%#Eval("mandi") %>' BorderStyle="None"></asp:TextBox>
                                <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%#Eval("taluk") %>' BorderStyle="None"></asp:TextBox>

                            </td>
                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("commodity").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox></td>

                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Text='<%#Eval("minprice") %>' BorderStyle="None"></asp:TextBox></td>
                            <td class="col-sm-1">

                                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Text='<%#Eval("maxprice") %>' BorderStyle="None"></asp:TextBox></td>
                            <td class="col-sm-1">

                                <asp:TextBox ID="TextBox9" runat="server" ReadOnly="true" Text='<%#Eval("unit") %>' BorderStyle="None"></asp:TextBox></td>

                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Text='<%#Eval("arivals") %>' BorderStyle="None"></asp:TextBox></td>

                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="true" Text='<%#Eval("updatedon") %>' BorderStyle="None"></asp:TextBox></td>

                        </tr>


                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
            </div>
        </div>
            <a class="btn btn-danger" href="farmerhomepage.aspx">Back</a>
        </div>
    </form>
</body>
</html>
