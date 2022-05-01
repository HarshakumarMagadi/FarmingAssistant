<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerViewSaledDetails.aspx.cs" Inherits="FarmerViewSaledDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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

</head>
<body>
    <form id="form1" runat="server">
        <div class="mr-lg-4 ml-lg-4">
            <div class="alert alert-heading">
              
                <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" BackColor="White" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: large; font-weight: normal; color: #000000;">Farming Asistant...</label>

            </div>
            <hr />
            <p class="text-success">Your Last Sales Details/Transaction Histroy...</p>
            <hr />

            <asp:Repeater ID="Repeater1" runat="server">
                <HeaderTemplate>
                    <table class="table table-responsive table-bordered">

                        <tr class="text-success">
                            <th>Name</th>
                            <th>Mobile no</th>
                            <th>Commodity</th>
                            <th>Unit</th>
                            <th>quantity</th>
                            <th>Coast</th>
                            <th>Total Amount</th>
                        </tr>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>

                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("name").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox></td>

                        <td>
                            <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%#Eval("mobileno") %>' BorderStyle="None"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%#Eval("crop") %>' BorderStyle="None"></asp:TextBox>

                        </td>
                        <td>
                            <asp:TextBox ID="TextBox4" runat="server" ReadOnly="true" Text='<%#Eval("quantity") %>' BorderStyle="None"></asp:TextBox>
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Text='<%#Eval("noQ") %>' BorderStyle="None"></asp:TextBox></td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Text='<%#Eval("coast") %>' BorderStyle="None"></asp:TextBox></td>

                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Text='<%#Eval("amt") %>' BorderStyle="None"></asp:TextBox></td>


                    </tr>


                </ItemTemplate>
                <FooterTemplate>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
            <a href="farmerhomepage.aspx" class="btn btn-danger">Back</a>
        </div>
    </form>
</body>
</html>
