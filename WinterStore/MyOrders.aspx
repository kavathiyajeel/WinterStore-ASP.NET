<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="WinterStore.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid mt-2 mb-2 shadow-lg bg-white rounded" style="width:80%;border: 2px solid black;">
            <table class="table table-borderless" style="color:black;">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                    <h3 class="text-center"><i class="bi bi-box-seam mr-2"></i>My Orders</h3>
                    </td>
                </tr>
                </table>
   
        <table class="table table-borderless" style="color:black;">
              
               
              <tr class="row">
              
                  <td class="col">
                      <asp:Label ID="Label3" runat="server" Text="OrderID"></asp:Label>
                  </td>
                  <td class="col-2">
                      <asp:Label ID="Label7" runat="server" Text="OrderDate"></asp:Label>
                  </td>
                  <td class="col">
                      <asp:Label ID="Label5" runat="server" Text="CustomerName"></asp:Label>
                  </td>  
                  <td class="col">
                      <asp:Label ID="Label14" runat="server" Text="OrderAmount"></asp:Label>
                  </td>
                  <td class="col">
                      <asp:Label ID="Label6" runat="server" Text="OrderStatus"></asp:Label>
                  </td>
                 
                  <td class="col">
                      <asp:Label ID="Label9" runat="server" Text="Action"></asp:Label>
                  </td>
              </tr>
            </table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
       <ItemTemplate>
         <div class="row mt-1">
             <div class="col-2">
                 <asp:Label ID="Label1" runat="server" ><%# Eval("OrderID") %></asp:Label>
             </div>
              <div class="col">
                 <asp:Label ID="Label2" runat="server" ><%# Eval("OrderDate") %></asp:Label>
             </div>
              <div class="col">
                 <asp:Label ID="Label8" runat="server" ><%# Eval("CustomerFirstName") %> &nbsp;<%# Eval("CustomerLastName") %></asp:Label>
             </div>
                   <div class="col">
                 <asp:Label ID="Label4" runat="server" ><%# Eval("OrderTotal") %></asp:Label>

             </div>
              <div class="col">
                 <asp:Label ID="Label9" runat="server" ><%# Eval("OrderStatus") %></asp:Label>

             </div>
             <div class="col">
                 <asp:HyperLink ID="HyperLink2" CssClass="btn btn-outline-success" NavigateUrl='<%# ("~/ViewOrderDetails.aspx?id=") + Eval("OrderID") %>' runat="server">View Details</asp:HyperLink>

             </div>
         </div>
    <hr />
       </ItemTemplate>
       
    </asp:Repeater>
        
      
  
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT o.*,c.*
FROM Orders o
JOIN Customers c
ON o.OrderCustomerID = c.CustomerID
where (o.OrderCustomerID = @OrderCustomerID)">
                <SelectParameters>
                    <asp:SessionParameter Name="OrderCustomerID" SessionField="id" Type="Int32" />
                </SelectParameters>
                   </asp:SqlDataSource>
                  
  
    </div>
</asp:Content>
