<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerViewDealers.aspx.cs" Inherits="FarmerViewDealers" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />

    <style>
        #x {
            position: absolute;
            transform: translate(10%,-10%);
        }

        #TextBox1 {
            border: none;
        }

        .auto-style3 {
            float: right;
            left: 1000px;
            top: 34px;
            width: 250px;
            height: 97px;
        }
    </style>
    <script>
        function GetMessage(String s) {
            document.getElementById("TextBox9").innerText = s;

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">

      <div class="ml-lg-4 mr-lg-4">

        <div class="alert alert-success" role="alert">
            <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
            <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
            <div id="x" class="auto-style3">
                <p class="fa fa-user-circle" aria-hidden="true">
                    <asp:Label ID="Label5" CssClass="text-uppercase text-dark" runat="server" Text="Label"> </asp:Label>
                </p>
               
            </div>

        </div>
        <hr />
        <asp:Label ID="Label1" runat="server" Text="List of availble dealers." class="text text-dark font-weight-bolder"></asp:Label>
        
        <asp:Button ID="Button3" runat="server" Text="View all Posts" CssClass="btn btn-success float-lg-right" OnClick="Button3_Click" />
          <br />
            <asp:Panel ID="Panel2" runat="server">
            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered">
                        <tr class="text-danger d-flex">

                            <th class="col-sm-1">Name</th>
                            <th class="col-sm-1">Mobile no.</th>
                            <th class="col-sm-2">Email-id</th>
                            <th class="col-sm-2">Shop Name/co.</th>
                            <th class="col-sm-2">Address</th>
                            <th class="col-sm-2">send text msg</th>
                            <th class="col-sm-1">View his Requires</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="d-flex">
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("name").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox></td>
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%#Eval("mobileno") %>' BorderStyle="None"></asp:TextBox>
                          
                        </td>
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%#Eval("mailid") %>' BorderStyle="None"></asp:TextBox>
                            
<%--                            <asp:HyperLink ID="HyperLink1" runat="server">Mail him</asp:HyperLink>--%>
                        </td>
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox6" runat="server" BorderStyle="None" Text='<%#Eval("shop") %>' ReadOnly="true"></asp:TextBox>
                        </td>
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%#Eval("address") %>' BorderStyle="None" TextMode="MultiLine"></asp:TextBox>
                            <asp:Label ID="labell" runat="server" Text='<%#Eval("district") %>'></asp:Label>
                        </td>
                             
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox5" runat="server" BorderStyle="None" CssClass="text-info" placeholder="Type msg here...." TextMode="MultiLine"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="<---" ControlToValidate="TextBox5" ForeColor="#CC0000" Font-Size="XX-Large" Font-Bold="True" Display="Static"></asp:RequiredFieldValidator><br />
                            <br />
                            <asp:Button ID="Button1" runat="server" Text="send MSG " OnClick="Button1_Click" CssClass="btn btn-sm btn-warning" /></td>
                        <td class="col-sm-1">
                            <asp:Button ID="Button2" class="btn btn-outline-warning" runat="server" Text="View" OnClick="Button2_Click" CausesValidation="False" /></td>

                    </tr>

                   
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
</asp:Panel>
      

        <asp:Panel ID="Panel1" runat="server">
            <asp:Repeater ID="Repeater2" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered">
                        <tr class="text-danger d-flex">

                            <th class="col-sm-1">Name</th>
                            <th class="col-sm-1">Mobile no.</th>
                            <th class="col-sm-1">Commodity</th>
                            <th class="col-sm-1">Unit</th>
                            <th class="col-sm-1">Quantity</th>
                            <th class="col-sm-1">price(per unit)</th>
                            <th class="col-sm-2">Shipping details</th>
                            <th class="col-sm-2">Posted on</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr class="d-flex">
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox11" runat="server" ReadOnly="true" Text='<%#Eval("name").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox></td>
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox12" runat="server" ReadOnly="true" Text='<%#Eval("mobile") %>' BorderStyle="None"></asp:TextBox>


                        </td>
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox13" runat="server" ReadOnly="true" Text='<%#Eval("nameofcommodity") %>' BorderStyle="None"></asp:TextBox>

                        </td>
                        <td class="col-sm-1"> <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Text='<%#Eval("unit") %>' BorderStyle="None"></asp:TextBox></td>
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox14" runat="server" BorderStyle="None" Text='<%#Eval("quantity") %>' ReadOnly="true"></asp:TextBox>
                        </td>
                        <td class="col-sm-1">
                            <asp:TextBox ID="TextBox15" runat="server" ReadOnly="true" Text='<%#Eval("price") %>' BorderStyle="None"></asp:TextBox></td>
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox16" runat="server" BorderStyle="None" CssClass="text-info" ReadOnly="true" Text='<%#Eval("shipplace") %>'></asp:TextBox>
                        </td>
                        <td class="col-sm-2">
                            <asp:TextBox ID="TextBox17" runat="server" BorderStyle="None" CssClass="text-info" ReadOnly="true" Text='<%#Eval("datetime") %>'></asp:TextBox>

                        </td>
                    </tr>

                   
                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
        </asp:Panel>
        <a href="farmerhomepage.aspx" class="btn btn-link">Back</a>
        <%--</div> OnItemDataBound="Repeater1_ItemDataBound"--%>
          </div>
    </form>
</body>
</html>
