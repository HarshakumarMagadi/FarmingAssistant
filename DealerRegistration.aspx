<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealerRegistration.aspx.cs" Inherits="DealerRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome-free-5.11.2-web/css/all.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

    <title></title>
</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">

        <div class="container" style="background-color: white;">

            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>

                
            </div>
            <hr />
            <strong>
                <asp:Label CssClass="text-success" ID="Label8" runat="server" Text="Buyers Registration"></asp:Label>
            </strong>
            <asp:Label ID="Label12" runat="server" Text=" " CssClass="text-danger float-lg-right"></asp:Label>
            <hr />



            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1" Font-Bold="true" ForeColor="red"></asp:RequiredFieldValidator></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Mobile no"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Phone" MaxLength="10" placeholder="e.g:9876001177"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ForeColor="Red" Font-Bold="true" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
                    <td>&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationExpression="^([6-9]{1})([0-9]{9})$" ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text=" E-mail id"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="Email" CssClass="form-control" placeholder="example@gmail.com"></asp:TextBox>
                    </td>
                    <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#CC0000" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>


                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" />
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" ValidationGroup="Gender" />
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Shop Name"></asp:Label>
                        
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" Font-Bold="true" ControlToValidate="TextBox4" ForeColor="red"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True">Karnataka</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True">Ramanagara</asp:ListItem>
                            <asp:ListItem >Tumkur</asp:ListItem>
                            <asp:ListItem >Banglore</asp:ListItem>
                            <asp:ListItem >Chikkaballapur</asp:ListItem>
                            <asp:ListItem >Hassan</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    </td>
                    <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" Font-Bold="true" ForeColor="Red" ControlToValidate="TextBox7"></asp:RequiredFieldValidator></td>
                    <td>&nbsp;</td>
                </tr>
                <tr> 
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" TextMode="Password" MaxLength="8"></asp:TextBox></td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="*" ForeColor="#CC0000" Font-Bold="True" Font-Size="Medium"></asp:CompareValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
               <%-- <tr>
                    <td>
                        <asp:Button ID="Button3" runat="server" Text="Save" class="btn btn-success" CausesValidation="False" OnClick="Button3_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <label class="text-success" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold">
                            Enter OTP
                            <br />
                            Send to your mobile number</label></td>
                    <td>
                        <asp:TextBox ID="TextBox12" runat="server" class="form-control"></asp:TextBox></td>
                    <td>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                            ControlToValidate="TextBox12" ErrorMessage="Please enter valid OTP number!"
                            ValidationExpression="[0-9]{5}" ForeColor="Red"></asp:RegularExpressionValidator></td>

                </tr>--%>

                <tr>
                    <td>
                        <asp:Button class="btn btn-success" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button class=" btn btn-warning" ID="Button2" runat="server" Text="Cancel" CausesValidation="False" OnClick="Button2_Click" />
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>



        </div>
        <br />

    </form>


</body>
</html>
