<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DealerViewAllPosts.aspx.cs" Inherits="DealerViewAllPosts" %>

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
        <div class="container">
            <div>
                View All your posts..
                <hr />
                   <asp:GridView ID="gridView"  runat="server"
        AutoGenerateColumns="False" HeaderStyle-Font-Bold="true"
        onrowcancelingedit="gridView_RowCancelingEdit"
        onrowediting="gridView_RowEditing"
        
        OnRowDataBound="gridView_RowDataBound"
        onrowupdated="gridView_RowUpdated" 
        onrowupdating="gridView_RowUpdating" onrowdeleting="gridView_RowDeleting" 
        onrowdeleted="gridView_RowDeleted" OnSelectedIndexChanged="gridView_SelectedIndexChanged" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal">
<Columns>
    <asp:TemplateField HeaderText="Name">
      <ItemTemplate>
         <asp:Label ID="id" runat="server"   Text='<%#Eval("name") %>'/>
     </ItemTemplate>
</asp:TemplateField> 
<asp:TemplateField HeaderText="Contact number">
      <ItemTemplate>
         <asp:Label ID="mandi" runat="server" width="100px"  Text='<%#Eval("mobile") %>'/>
     </ItemTemplate>
    <EditItemTemplate>
         <asp:TextBox ID="txt" width="100px"  runat="server" Text='<%#Eval("mobile") %>'/>
     </EditItemTemplate>
 </asp:TemplateField> 


 
  <asp:TemplateField HeaderText="Commodity ">
      <ItemTemplate>
         <asp:Label ID="fname" runat="server" width="100px" Text='<%#Eval("nameofcommodity") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt1" width="100px"  runat="server" Text='<%#Eval("nameofcommodity") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
 
 <asp:TemplateField HeaderText="Units ">
      <ItemTemplate>
         <asp:Label ID="lblcoast" runat="server" width="100px"  Text='<%#Eval("unit") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt2" width="50px"  runat="server" Text='<%#Eval("unit") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
 
  <asp:TemplateField HeaderText="Quantity ">
      <ItemTemplate>
         <asp:Label ID="lblcorp" runat="server" width="100px"  Text='<%#Eval("quantity") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt3" width="300px"  runat="server" Text='<%#Eval("quantity") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
 
  <asp:TemplateField HeaderText="Price ">
      <ItemTemplate>
         <asp:Label ID="lbld" runat="server" width="100px"  Text='<%#Eval("price") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt4" width="150px"  runat="server" Text='<%#Eval("price") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
 
  <asp:TemplateField HeaderText="Shipping Address">
      <ItemTemplate>
         <asp:Label ID="lblr" runat="server" width="150px"  Text='<%#Eval("shipplace") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt5" width="150px"  runat="server" Text='<%#Eval("shipplace") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
 
 <asp:TemplateField HeaderText=" Updatedon ">
      <ItemTemplate>
         <asp:Label ID="lb" runat="server" width="150px"  Text='<%#Eval("datetime") %>'/>
     </ItemTemplate>
     <EditItemTemplate>
         <asp:TextBox ID="txt6" width="150px"  runat="server" TextMode="DateTimeLocal" Text='<%#Eval("datetime") %>'/>
     </EditItemTemplate>
 </asp:TemplateField>
  
 
 

 
 <asp:TemplateField>
    <EditItemTemplate >
        <asp:Button ID="ButtonUpdate" class="btn btn-success" runat="server" CommandName="Update"  Text="Update"  />
        <asp:Button ID="ButtonCancel" class="btn btn-warning" runat="server" CommandName="Cancel"  Text="Cancel" />
    </EditItemTemplate>    
    <ItemTemplate>
        <asp:Button ID="ButtonEdit" class="btn btn-primary" runat="server" CommandName="Edit"  Text="Edit"  />
         <asp:Button ID="ButtonDelete" class="btn btn-danger" runat="server" CommandName="Delete"  Text="Delete"  />
    </ItemTemplate>
    
    
  
    
 </asp:TemplateField>
 
 </Columns>

            <FooterStyle BackColor="White" ForeColor="#333333" />

<HeaderStyle Font-Bold="True" BackColor="#336666" ForeColor="White"></HeaderStyle>
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />

</asp:GridView>
        <div>
            <asp:Label ID="lblmsg" runat="server" Text="Label"></asp:Label>
        </div>
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/DealersHomePage.aspx" Font-Size="Medium" >Back</asp:LinkButton>
 
            </div>
        </div>
    </form>
</body>
</html>
