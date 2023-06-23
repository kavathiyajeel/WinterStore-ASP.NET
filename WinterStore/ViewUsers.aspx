<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewUsers.aspx.cs" Inherits="WinterStore.ViewUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Users">
       <ItemTemplate>
<div class="container-fluid" style="margin:auto;width:50%">
               <div class="card mt-2">
  <h5 class="card-header"><b>Id : </b><%#Eval("CustomerID") %></h5>
  <div class="card-body">
    <h5 class="card-title"><b>Name : </b> <%#Eval("CustomerFirstName") %> <%#Eval("CustomerLastName") %> </h5>
    <p class="card-text">
        <b>Email :</b> <%#Eval("CustomerEmail") %>
        <br />
        <b>Address :</b> <%#Eval("CustomerAddress") %>, <%#Eval("CustomerCity") %>, <%#Eval("CustomerState") %>, <%#Eval("CustomerZip") %> 
    <br />
        <b>Contact :</b> <%#Eval("CustomerPhone") %> <b class="ml-3">isActive : </b><%#Eval("CustomerIsActive") %> 
    <br />
        <b>Date Joined :</b> <%#Eval("CustomerDateAdded") %>
    </p>
  
    <a  href="UpdateUserDetails.aspx?id=<%# Eval("CustomerId") %>" class="btn btn-warning text-light"><i class="bi bi-pencil-square mr-1"></i>Update</a>
    <a href="DeleteUser.aspx?id=<%# Eval("CustomerId") %>" class="btn btn-danger"><i class="bi bi-trash mr-1"></i>Delete</a>
  </div>
</div>
            <hr />

</div>
       </ItemTemplate>
       
    </asp:Repeater>
    <asp:SqlDataSource ID="Users" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM [Customers]"></asp:SqlDataSource>
   
</asp:Content>
