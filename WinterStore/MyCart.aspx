<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MyCart.aspx.cs" Inherits="WinterStore.MyCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
               <div class="container-fluid mt-2 mb-2 shadow-lg bg-white rounded" style="width:80%;border: 2px solid black;">
            <table class="table table-borderless" style="color:black;">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                    <h3 class="text-center"><i class="bi bi-cart4 mr-2"></i>MyItems</h3>
                    </td>
                </tr>
                </table>
   
        <table class="table table-borderless" style="color:black;">
              
               
              <tr class="row">
              
                  <td class="col">
                      <asp:Label ID="Label3" runat="server" Text="ProductImage"></asp:Label>
                  </td>
                  <td class="col-2">
                      <asp:Label ID="Label7" runat="server" Text="ProductName"></asp:Label>
                  </td>
                  <td class="col">
                      <asp:Label ID="Label5" runat="server" Text="Price"></asp:Label>
                  </td>
                  <td class="col">
                      <asp:Label ID="Label6" runat="server" Text="Quantity"></asp:Label>
                  </td>
                  <td class="col">
                      <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
                  </td>  
                  <td class="col">
                      <asp:Label ID="Label9" runat="server" Text="Action"></asp:Label>
                  </td>
              </tr>
            </table>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1" >
       <ItemTemplate>
         <div class="row mt-1">
             <div class="col">
                 <asp:Image ID="Image1" src='<%# Eval("pimage") %>' Height="90px" Width="90px" runat="server" />
             </div>
             <div class="col-2">
                 <asp:Label ID="Label1" runat="server" ><%# Eval("pname") %></asp:Label>
             </div>
              <div class="col">
                 <asp:Label ID="Label2" runat="server" ><%# Eval("pprice") %></asp:Label>
             </div>
              <div class="col">
                 <asp:Label ID="Label8" runat="server" ><%# Eval("CartQuantity") %></asp:Label>

             </div>
              <div class="col">
                 <asp:Label ID="Label9" runat="server" ><%# Eval("Cartprice") %></asp:Label>

             </div>
             <div class="col">
                 <asp:HyperLink ID="HyperLink2" CssClass="btn btn-outline-danger" NavigateUrl='<%# ("~/RemoveCartItem.aspx?id=") + Eval("CartID") %>' runat="server">Remove</asp:HyperLink>

             </div>
         </div>
    <hr />
       </ItemTemplate>
       
    </asp:Repeater>
        
      
  
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT p.*,c.*
FROM Products p
JOIN Cart c
ON p.pid = c.CartProductId
where (c.CartCustomerID = @CartCustomerID)">
                <SelectParameters>
                    <asp:SessionParameter Name="CartCustomerID" SessionField="id" Type="Int32" />
                </SelectParameters>
                   </asp:SqlDataSource>
                   <%--<div class="row mb-3">
                       <div class="col text-right">
                            <asp:Button ID="Button1" runat="server" Text="CheckOut" CssClass="btn btn-success" OnClick="Button1_Click"  />

                       </div>
                   </div>--%>
  
    </div>
</asp:Content>
