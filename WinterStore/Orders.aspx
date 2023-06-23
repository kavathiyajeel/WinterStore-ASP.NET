<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="WinterStore.Orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid mt-2 mb-2 shadow-lg bg-white rounded" style="width:95%;border: 2px solid black;">
            <table class="table table-borderless" style="color:black;">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                    <h3 class="text-center"><i class="bi bi-box-seam mr-2"></i>Orders List</h3>
                    </td>
                </tr>
                </table>
   
        <table class="table table-borderless" style="color:black;">
              
               
              <tr class="row">
              
                  <td class="col-md-2">
                      <asp:Label ID="Label3" runat="server" Text="OrderID"></asp:Label>
                  </td>
                  <td class="col-md-1">
                      <asp:Label ID="Label7" runat="server" Text="OrderDate"></asp:Label>
                  </td>
                  <td class="col-md-2">
                      <asp:Label ID="Label5" runat="server" Text="CustomerName"></asp:Label>
                  </td>  
                  <td class="col-md-1">
                      <asp:Label ID="Label14" runat="server" Text="OrderAmount"></asp:Label>
                  </td>
                  <td class="col-md-2">
                      <asp:Label ID="Label6" runat="server" Text="OrderStatus"></asp:Label>
                  </td>
                 
                  <td class="col-md-4">
                      <asp:Label ID="Label9" runat="server" Text="Action"></asp:Label>
                  </td>
              </tr>
            </table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
       <ItemTemplate>
         <div class="row mt-1">
             <div class="col-md-2">
                 <asp:Label ID="Label1" runat="server" ><%# Eval("OrderID") %></asp:Label>
             </div>
              <div class="col-md-1">
                 <asp:Label ID="Label2" runat="server" ><%# Eval("OrderDate") %></asp:Label>
             </div>
              <div class="col-md-2">
                 <asp:Label ID="Label8" runat="server" ><%# Eval("CustomerFirstName") %> &nbsp;<%# Eval("CustomerLastName") %></asp:Label>
             </div>
                   <div class="col-md-1">
                 <asp:Label ID="Label4" runat="server" ><%# Eval("OrderTotal") %></asp:Label>

             </div>
              <div class="col-md-2">
                 <asp:Label ID="Label9" runat="server" ><%# Eval("OrderStatus") %></asp:Label>

             </div>
             <div class="col-md-4">
                 <asp:HyperLink ID="HyperLink2" CssClass="btn btn-outline-warning m-1" NavigateUrl='<%# ("~/UpdateOrder.aspx?status=Shipped&id=") + Eval("OrderID") %>' runat="server">Shipped</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink3" CssClass="btn btn-outline-success m-1" NavigateUrl='<%# ("~/UpdateOrder.aspx?status=Delivered&id=") + Eval("OrderID") %>' runat="server">Delivered</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink4" CssClass="btn btn-outline-danger m-1" NavigateUrl='<%# ("~/UpdateOrder.aspx?status=Cancelled&id=") + Eval("OrderID") %>' runat="server">Cancelled</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink5" CssClass="btn btn-outline-info m-1" NavigateUrl='<%# ("~/UpdateOrder.aspx?status=Returned&id=") + Eval("OrderID") %>' runat="server">Returned</asp:HyperLink>

             </div>
         </div>
    <hr />
       </ItemTemplate>
       
    </asp:Repeater>
        
      
  
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT o.*,c.*
FROM Orders o
JOIN Customers c
ON o.OrderCustomerID = c.CustomerID">
                   </asp:SqlDataSource>
                  
  
    </div>
</asp:Content>
