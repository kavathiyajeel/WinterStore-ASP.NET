<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="WinterStore.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<link href="css/bootstrap.min.css" rel="stylesheet" />--%>
    <style>
        .container-fluid{
              box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
border-radius: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div  class="container-fluid me-auto mt-5 rounded-4 shadow p-3 mb-5 bg-white " style="margin:auto ;width:80%;" >
          <table class="auto-style1">
        <tr class="row">
            <td class="col-md-6">
                <asp:Image ID="Image1" CssClass="m-5" runat="server" Height="80%" Width="60%" />
            </td>
            <td class="col-md-6">
                <table class="h-100">
                    <tr class="row">
                        <td class="col">
                            <h4>ProductDetails : 
                            <asp:Label CssClass="card-title mt-3"  Font-Size="1" ID="La" runat="server" ></asp:Label>

                            </h4>

                            <asp:Label CssClass="card-title mt-3" Font-Bold="true" Font-Size="15" ID="pname" runat="server" ></asp:Label>
                        </td>
                    </tr>
                    <tr class="row mt-3">
                            <td class="col">
                            <asp:Label CssClass="card-title" Font-Bold="true"  Font-Size="13" ID="label1" runat="server" >Manufacturer&nbsp;:</asp:Label>
                        </td>
                        <td class="col">
                            <asp:Label CssClass="card-title"  Font-Size="13" ID="pbrand" runat="server" ></asp:Label>
                        </td>
                    </tr>
                      <tr class="row mt-3">
                        <td class="col">
                            <asp:Label CssClass="card-title"  Font-Size="13" ID="pdesc" runat="server" ></asp:Label>
                        </td>
                    </tr>
                    <tr class="row mt-3">
                      
                        <td class="col">
                           ₹ <asp:Label ID="mrp" runat="server" CssClass="text-muted" Font-Size="15" Font-Strikeout="true" ></asp:Label>
                        </td>
                    </tr>    
                    <tr class="row mt-3">
                       
                        <td class="col">
                           ₹ <asp:Label ID="price" runat="server"  Font-Size="15" Font-Bold="true" ></asp:Label>
                        </td>
                    </tr>
                    <tr class="row mt-3">
                        <td class="col">
                            <asp:Button ID="Button2" CssClass="btn btn-success" runat="server" Text="Buynow" OnClick="Button2_Click" />
                        </td>

                    </tr>
                    <tr class="row mt-3">
                        <td class="col-md-4">
                              <asp:DropDownList CssClass="form-control w-50" ID="DropDownList1" runat="server">
                                <asp:ListItem Selected="True">1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>

                        </td>
                        <td class="col">
                            <asp:Button ID="Button1" CssClass="btn btn-warning" runat="server" Text="Add to Cart" OnClick="Button1_Click" />
                        </td>
                      
                       
                    </tr>
                   
                </table>

            </td>
        </tr>
    </table>
          </div>
</asp:Content>
