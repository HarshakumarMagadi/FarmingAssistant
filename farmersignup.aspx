<%@ Page Language="C#" AutoEventWireup="true" CodeFile="farmersignup.aspx.cs" Inherits="farmersignup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        
    </style>
</head>
<body style="background-color: #eaedf1">
    <form id="form1" runat="server">

        <div class="container" style="background-color: white;">
             <div class="alert alert-heading">
                <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" BackColor="White" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: large; font-weight: normal; color: #000000;">Farming Asistant...</label>
            </div>
            <hr />
            <h3 class="text-success font-weight-bolder">Farmer Register</h3>
            <asp:Label ID="Label12" runat="server" Text="Label" CssClass="text-danger float-lg-right" Font-Size="X-Large"></asp:Label>
           <p class="text-info">All Fields are Required....</p>
            <div class="border border-light rounded">
                <br />
                <p class="text-info font-weight-bold ml-2">Personal Details</p>
                <hr />
                <div class="row ml-2">
                    <div class="col-3">

                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>

                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <asp:Label ID="Label2" runat="server" Text="Mobile no"></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" TextMode="Phone" MaxLength="10" placeholder="e.g:9876001177"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*" ValidationExpression="^([6-9]{1})([0-9]{9})$" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <asp:Label ID="Label3" runat="server" Text=" E-mail id"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*" ForeColor="#CC0000" Font-Bold="True" Font-Size="Medium"></asp:RequiredFieldValidator>

                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" TextMode="Email" placeholder="example@gmail.com"></asp:TextBox>

                    </div>
                    <div class="col-1">
                    </div>
                </div>
                <br />


                <div class="row ml-2 mb-4">
                    <div class="col-3">
                        <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox9" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>

                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <asp:Label ID="Label6" runat="server" Text="Gender"></asp:Label><br />
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" Text="Male" class="custom-radio" />
                    
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" Text="Female" ValidationGroup="Gender" class="custom-radio" />
                    </div>
                <div class="col-1"></div>
                <div class="col-3">
                    <asp:Label ID="Label5" runat="server" Text="Adhar number"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="*" ValidationExpression="[0-9]{14}" ControlToValidate="TextBox6" Font-Bold="True" Font-Size="Medium" ForeColor="red"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="14" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-1">
                </div>
                </div>
            </div>
            <br />
            <hr />
            <br />
            <div class="border border-light rounded">
                <br />
                <p class="text-info font-weight-bold ml-2">  Address</p>
                <hr />
                <div class="row ml-2">
                    <div class="col-3">
                        <asp:Label ID="Label11" runat="server" Text="State"></asp:Label>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True">Karnataka</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                    <div class="col-1"></div>
                    <div class="col-3">
                        <asp:Label ID="Label8" runat="server" Text="District"></asp:Label>
                        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                            <asp:ListItem Selected="True">Ramanagara</asp:ListItem>
                            <asp:ListItem>Tumakur</asp:ListItem>
                        </asp:DropDownList>

                    </div>
                </div>
                <br />
                <div class="row ml-2 mb-4">
                    <div class="col-7">
                        <asp:Label ID="Label7" runat="server" Text="Address"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox5" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control" TextMode="MultiLine" Height="120px"></asp:TextBox>

                    </div>
                </div>
            </div>
            <br />
            <hr />
            <br />

            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" TextMode="Password" MaxLength="8"></asp:TextBox>
                    <br />
                    <br />
                    <%--<asp:Button ID="Button3" runat="server" Text="Save" class="btn btn-success" CausesValidation="False" OnClick="Button3_Click" />--%>

                </div>
                <div class="col-1"></div>
                <div class="col-3">
                    <asp:Label ID="Label10" runat="server" Text="Confirm Password"></asp:Label>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control" TextMode="Password" MaxLength="8"></asp:TextBox>

                </div>
                <div class="col-3">
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox7" ControlToValidate="TextBox8" ErrorMessage="Password does not match" ForeColor="#CC0000" Font-Bold="True" Font-Size="Medium"></asp:CompareValidator>

                </div>

                <div class="col-2">
                </div>
            </div>

            <hr />
            <br />

          <!--  <div class="row">
                <div class="col-3">
                    <label class="text-success" style="font-family: 'Times New Roman', Times, serif; font-size: medium; font-weight: bold">
                        Enter OTP:
                            <br />
                        Send to your mobile number</label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                        ControlToValidate="TextBox12" ErrorMessage="Please enter valid OTP number!"
                        ValidationExpression="[0-9]{5}" ForeColor="Red"></asp:RegularExpressionValidator>
                </div>
                <div class="col-1"></div>
                <div class="col-3">
                    <asp:TextBox ID="TextBox12" CssClass="form-control" runat="server" class="form-control"></asp:TextBox>

                </div>


            </div>

            <br />
            <hr />
            <br />-->



            <div class="row">
                <div class="col-3">
                    <asp:Label ID="Label13" runat="server" Text="Sequirity Question"></asp:Label>

                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem>Birth Place</asp:ListItem>
                        <asp:ListItem>Favorite film star</asp:ListItem>
                        <asp:ListItem>food</asp:ListItem>
                    </asp:DropDownList>

                </div>
                <div class="col-1"></div>
                <div class="col-3">
                    <asp:Label ID="Label14" runat="server" Text="Answer"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox10" ErrorMessage="*" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:RequiredFieldValidator>

                    <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
            </div>
            <br />
            <hr />
            <br />
            <div class="row">
                <div class="col-3">
                    <asp:Button class="btn btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />

                </div>
                <div class="col-1"></div>
                <div class="col-3">
                    <asp:Button class=" btn btn-warning" ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" CausesValidation="False" />

                </div>
            </div>
            <br /><br /><br />
        </div>
    

    </form>


</body>
</html>
