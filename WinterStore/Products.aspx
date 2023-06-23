<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="WinterStore.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container px-4 py-5" id="featured-3">
    <h2 class="pb-2 border-bottom">Products Section</h2>
    <div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
      <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <img src="Images/addproduct.png" style="height:70%;width:70%"/>
        </div>
        <h3 class="fs-2">Add Products</h3>
        <p>Add New Products </p>
<asp:HyperLink ID="hyper1" Style="width:50%;margin:auto" CssClass="btn btn-block btn-primary" runat="server" Text="Add" NavigateUrl="~/AddProduct.aspx" />

      </div>
    <%-- <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <img src="Images/addproduct.png" style="height:70%;width:70%"/>
        </div>
        <h3 class="fs-2">Update Products</h3>
        <p>Update / Modify Products Details </p>
       <asp:HyperLink ID="HyperLink1" Style="width:50%;margin:auto" CssClass="btn btn-block btn-primary" runat="server" Text="Update" NavigateUrl="~/UpdateProduct.aspx" />

      </div>--%>
        <div class="feature col">
        <div class="feature-icon d-inline-flex align-items-center justify-content-center text-bg-primary bg-gradient fs-2 mb-3">
          <img src="Images/ViewProducts.png" style="height:70%;width:70%"/>
        </div>
        <h3 class="fs-2">View All Products</h3>
        <p>Get List Of All Products Available </p>
       <asp:HyperLink ID="HyperLink2" Style="width:50%;margin:auto" CssClass="btn btn-block btn-primary" runat="server" Text="View Products" NavigateUrl="~/ViewAllProducts.aspx" />

      </div>
    </div>
  </div>


</asp:Content>
