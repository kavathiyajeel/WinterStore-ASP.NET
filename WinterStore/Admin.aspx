<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WinterStore.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <%--Category section--%>
        <div class="text-center mt-2">
            <hr  style="height:2px;border-width:0;color:gray;background-color:gray"/>
        <h3>Features Admin Can Perform</h3>
            <hr style="height:2px;border-width:0;color:gray;background-color:gray" />
    </div>

    <div class="container-fluid mt-2 mb-4" style="margin: auto">
        <div class="row row-cols-1 row-cols-md-3 g-4 ">
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/products.gif" width="50%" class="card-img-top" alt="Mens's Section" />
                    <div class="card-body">
                        <h5 class="card-title">Products Sections</h5>
                       
                    </div>
                    <asp:Hyperlink CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server">Products</asp:Hyperlink>
                    <br />
                </div>
            </div>
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/user1.gif" width="50%" class="card-img-top" alt="Women's Section" />
                    <div class="card-body">
                        <h5 class="card-title">Customers Section</h5>
                    </div>
                                    <asp:Hyperlink CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server">Customers</asp:Hyperlink>
  <br />
                </div>
            </div>
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/orders.gif" width="50%" class="card-img-top" alt="Women's Section" />
                    <div class="card-body">
                        <h5 class="card-title">Orders Section</h5>
                    </div>
                                    <asp:Hyperlink CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server">Orders</asp:Hyperlink>
  <br />
                </div>
            </div>
            <div class="col mb-2">
                <div class="card h-100">
                    <img src="Images/issue.gif" width="50%" class="card-img-top" alt="message Section" />
                    <div class="card-body">
                        <h5 class="card-title">Message Section</h5>
                    </div>
                                           <asp:Hyperlink CssClass="btn btn-outline-dark text-center w-50 m-auto" runat="server">Message</asp:Hyperlink>
   <br />
                </div>
            </div>

        </div>
    </div>
</asp:Content>
