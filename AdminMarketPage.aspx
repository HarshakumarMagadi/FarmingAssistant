<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminMarketPage.aspx.cs" Inherits="AdminMarketPage" %>

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
    <script>
          function printing()
        {
           window.print();
            window.open();
            
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

            <div class="alert alert-heading">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" BackColor="White" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: large; font-weight: normal; color: #000000;">Farming Asistant...</label>


            </div>
            <hr />


            <h3 class="text-secondary">Agro limiteds Marketing co.</h3>
            <h5 class="text-black-50">A Private Organization</h5>
            <h6 class="text-black-50">near govt bustand Magadi-562120</h6>
            <hr />
            <p class="text-success font-weight-bolder">MARKETING...</p>
            <p>Farmer sale their products,prices offered by our company and amount will given by cash.</p>
            <hr />


            <table class="columns">

                <tr>
                    <td>
                        <label>Farmer Name</label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox3" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter correct name" ControlToValidate="TextBox3" ForeColor="Red" ValidationExpression="[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>User_ID/PhoneNo:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Enter Correct mobile Number" ControlToValidate="TextBox1" ForeColor="Red" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                    </td>

                </tr>
                <tr>
                    <td>
                        <label>Crop</label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Enter correct name" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="[a-zA-Z ]+$"></asp:RegularExpressionValidator>
                      
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>Unit</label></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem>Kg</asp:ListItem>
                            <asp:ListItem>Quintal</asp:ListItem>
                            <asp:ListItem>tons</asp:ListItem>
                            <asp:ListItem>litre</asp:ListItem>
                            <asp:ListItem>Centilitre</asp:ListItem>
                            
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>Quantity</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox></td>
                    <td>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Only numbers" ControlToValidate="TextBox5" ForeColor="Red" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator>
 
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Coast</label>

                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>

                    </td>
                    <td>
                        
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Enter in numbers" ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="[0-9]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <p class="text-info">Coast Details</p>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <label>Calculated Price</label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="True" CssClass="form-control"></asp:TextBox></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Class="btn btn-success" Text="Calculate" OnClick="Button1_Click" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>

                </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button2" class="btn btn-success" runat="server" Text="Save" OnClick="Button2_Click" />
                    </td>
                    <td>
                        <asp:Button class="btn btn-warning" ID="Button3" runat="server" Text="Cancel" CausesValidation="False" OnClick="Button3_Click" />
                    </td>
                    <td>
                        <asp:Button class="btn btn-info" ID="Button5" runat="server" Text="Clear" CausesValidation="False" OnClick="Button5_Click"  />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button4" runat="server" Text="Print" CssClass="btn btn-dark" OnClick="Button4_Click" CausesValidation="false" /></td>
                </tr>
            </table>

            <hr />
            <br />
        </div>
    </form>
</body>
</html>
