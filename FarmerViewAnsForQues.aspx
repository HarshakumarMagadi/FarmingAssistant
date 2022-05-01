<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FarmerViewAnsForQues.aspx.cs" Inherits="FarmerViewAnsForQues" %>

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
        <div>
            <div class="alert alert-success" role="alert">
                <asp:Image ID="Image3" CssClass="rounded-circle" runat="server" ImageUrl="~/imgs/logomyagri.png" Height="82px" Width="98px" />
                <label style="font-family: Gautami; font-size: larger; color: black;">Farming Asistant...</label>
               
            </div>
            <hr /><br />
              <p class="text text-success font-weight-bold">View Answers for your recent posts..</p>
            <div class="row">
                <div class="col-xl-12">
                    <div class="container-fluid">
                     <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table id="productSizes" class="table table-bordered">
                            <tr class="d-flex">
                                <th class="col-sm-1">ID</th>
                                <th class="col-sm-1">Your Name</th>
                                <th class="col-sm-1">Mobile no.</th>
                                <th class="col-sm-2">Question</th>
                                <th class="col-sm-2">Description</th>
                               <th class="col-sm-2">Image</th>
                                <th class="col-sm-2">Suggestion/Answer</th>
                                <th class="col-sm-1">Status</th>
                                
                              
                              
                            </tr>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr class="d-flex">
                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Text='<%#Eval("id") %>' BorderStyle="none"></asp:TextBox>

                            </td>
                          
                            
                            <td class="col-sm-1">
                                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text='<%#Eval("name").ToString().ToUpper() %>' BorderStyle="none"></asp:TextBox>

                            </td>
                            <td class="col-sm-1">
                              <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text='<%#Eval("mobile") %>' BorderStyle="None" ></asp:TextBox>
                                
                            </td>
                            <td class="col-sm-2">
                                <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text='<%#Eval("ques") %>' BorderStyle="None" TextMode="MultiLine"></asp:TextBox>
                              
                            </td>
                            <td class="col-sm-2">
                                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine" ReadOnly="true" Text='<%#Eval("desc") %>' BorderStyle="None"></asp:TextBox></td>
                           
                            <td class="col-sm-2"> <asp:Image ID="img" runat="server" Width="150px" ImageUrl='<%#Eval("id","~/Handler2.ashx?id={0}")%>' /></td>
                            <%--'<%# "Handler2.ashx?id="+ Eval("id","mobile") %>'    
                      
                                --%>
                                <td class="col-sm-2">
                               <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true" Text='<%#Eval("ans")%>' BorderStyle="None" TextMode="MultiLine"></asp:TextBox>

                                </td>
                       <td class="col-sm-1">
                             
                               <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true" Text='<%#Eval("status") %>' BorderStyle="None"></asp:TextBox>

                            </td>
                            </tr>
                       
                       <tr><hr /></tr>
                    </ItemTemplate>
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
                </div>
            </div>
        </div>
            <div class="row">
                <div class="col-6">
                    <a href="farmerhomepage.aspx" class="btn btn-danger">Back</a>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
