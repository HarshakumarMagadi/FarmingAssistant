<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerForgottPassward.aspx.cs" Inherits="FarmerForgottPassward" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container" style="background-color: white;">

            <div class="alert alert-heading">
             
                <asp:Image ID="Image2" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" BackColor="White" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: large; font-weight: normal; color: #000000;">Farming Asistant...</label>

                <a class="btn btn-link float-lg-right" href="formerlogin.aspx">Back</a>
            </div>
            <hr />
            <p class="text-success">Fargott passward
                <br />
                update/change password using two methods..</p>
            
              
            <p class="text-dark">1.Generating OTP <br />
            2.Answer to ur security question</p>
              
            <hr />
            <br />
            <asp:Label ID="lblReadMsg" runat="server" Text="Label"></asp:Label>
            <p>Select by:</p>
          <div class="row">
              <div class="col-3">
                  <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                      <asp:ListItem Selected="True">--SELECT--</asp:ListItem>
                      <asp:ListItem>By OTP</asp:ListItem>
                      <asp:ListItem>By Secuirity Question</asp:ListItem>
                  </asp:DropDownList>
              </div>
              <div class="col-1"></div>
              <div class="col-2">
                 
                  <asp:Button ID="Button6" runat="server" CssClass="btn btn-info" Text="click" OnClick="Button6_Click" />
              </div>
          </div>
            <br /><hr /><br />
            <asp:Panel ID="Panel3" runat="server">
            <div class="row">
                <div class="col-4">
                    <asp:Label ID="Label1" runat="server" Text="Enter mobile number"></asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter in correct format" ForeColor="Red" ControlToValidate="TextBox1" ValidationExpression="^([6-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-4">
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Retriew Information" OnClick="Button1_Click" />
                    <asp:Button ID="Button5" runat="server" CssClass="btn btn-success" Text="Send OTP" OnClick="Button5_Click" />
                </div>
                
            </div>
                <br />
                <asp:Panel ID="Panel4" runat="server">
                    <div class="row">
                        <div class="col-4">
                            <asp:Label ID="Label6" runat="server" Text="Enter OTP"></asp:Label><asp:TextBox ID="TextBox6"  CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="col-4">
                            <br />
                            <asp:Button ID="Button7" CssClass="btn btn-success" runat="server" Text="submit" OnClick="Button7_Click" />
                        </div>
                    </div>
                </asp:Panel>
                 <br />
            <hr />
            <br />
            </asp:Panel>
           
            <asp:Panel ID="Panel1" runat="server">
                <div class="row">
                    <div class="col-4">
                        <asp:Label ID="Label2" runat="server" Text="Security Question"></asp:Label><asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label3" runat="server" Text="Enter Answer"></asp:Label><asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <asp:Label ID="lblMsg" runat="server" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </div>
                </div>
                <br />
                <div class="row">

                    <div class="col-4">
                        <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Validate Answer" OnClick="Button2_Click" />
                    </div>
                </div>
                <br /><hr /><br />
            </asp:Panel>

            

            <asp:Panel ID="Panel2" runat="server">
                <div class="row">
                    <div class="col-4">
                        <asp:Label ID="Label4" runat="server" Text="New Password"></asp:Label><asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="col-4">
                        <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label><asp:TextBox ID="TextBox5" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="col-4">
                        <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*" ForeColor="Red" Font-Bold="true" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Font-Size="X-Large"></asp:CompareValidator>
                    </div>

                </div>
                <br />
                <hr />
                <br />
                <div class="row">
                    <div class="col-4">
                        <asp:Button ID="Button3" runat="server" CssClass="btn btn-warning" Text="Change Password" OnClick="Button3_Click" />
                    </div>
                    <div class="col-4">
                        <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Text="Cancel" OnClick="Button4_Click" />
                    </div>
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
