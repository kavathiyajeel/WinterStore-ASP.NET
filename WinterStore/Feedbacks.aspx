<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="WinterStore.Feedbacks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
       <ItemTemplate>
<div class="container-fluid" style="margin:auto;width:50%">
               <div class="card mt-2">
  <h5 class="card-header"><b>Id : </b><%#Eval("IssueId") %></h5>
  <div class="card-body">
    <h5 class="card-title"><b>Customer Name : </b> <%#Eval("UserName") %></h5>
    <p class="card-text">
        <b>Email :</b> <%#Eval("Email") %>
        
        <b class="ml-4">Contact :</b> <%#Eval("Mobile") %>
<br />
        <b>Date Issue Raised :</b> <%#Eval("DateIssueRegistered") %>
        <br />
        <b>Date Issue Resolved :</b> <%#Eval("DateIssueResolved") %>
        <b class=" ml-4">Status: </b><%#Eval("status") %> 
    <br />
        <div class="container" style="border:1px solid black;border-radius:6px;width:50%">
        <b> Issue  :</b> <%#Eval("Message") %>
            </div>
    </p>
  
    <a  href="IssueResolve.aspx?id=<%# Eval("issueId") %>" class="btn btn-success text-light"><i class="bi bi-check-lg mr-1"></i>Resolved</a>
    <a href="Delete.aspx?id=<%# Eval("IssueId") %>" class="btn btn-danger"><i class="bi bi-trash mr-1"></i>Delete</a>
  </div>
</div>
            <hr />

</div>
       </ItemTemplate>
      <SeparatorTemplate>
          <hr />
      </SeparatorTemplate>
    </asp:Repeater>
  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT * FROM [Issue]"></asp:SqlDataSource>
  
</asp:Content>
