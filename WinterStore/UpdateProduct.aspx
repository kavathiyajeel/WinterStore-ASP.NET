<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="UpdateProduct.aspx.cs" Inherits="WinterStore.UpdateProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid rounded-3 mt-3" style="margin: auto; width: 60%; background-color: #455c71">
        <table class="table table-borderless" style="border: none; color: white">
            <tr class="row">
                <td class="col">

                    <h2 class="text-center"><i class="bi bi-pencil-square mr-2"></i>Update/Modify Product Detail's</h2>
                </td>
            </tr>
            <tr class="row">
                <td class="col-md-6">
                    <label class="form-label">Product Name</label>
                    <asp:TextBox ID="Pname" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="col-md-6">
                    <label class="form-label">Product Brand</label>
                    <asp:TextBox ID="Pbrand" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr class="row">
                <td class="col-md-6">
                    <label class="form-label">Product Description</label>
                    <asp:TextBox ID="Pdescription" Columns="4"
                        rows="3" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="col-md-6">
                    <label class="form-label">Product Image (*jpeg/jpg png)</label>
                    <asp:FileUpload ID="Pimage" CssClass="form-control" runat="server" />
                </td>

            </tr>
            <tr class="row">
                <td class="col-md-6">
                    <label class="form-label">Product Category</label>
                    <asp:DropDownList ID="Pcategory" CssClass=" form-select" runat="server">
                         <asp:ListItem Value="Sweatshirts">Sweatshirts</asp:ListItem>
                <asp:ListItem Value="Jackets">Jackets</asp:ListItem>
                <asp:ListItem Value="Hoddie">Hoddies</asp:ListItem>
                <asp:ListItem Value="Sweaters">Sweaters</asp:ListItem>
                <asp:ListItem Value="Tshirts">Tshirts</asp:ListItem>
                    </asp:DropDownList>
                </td>
                 <td class="col-md-6">
                    <label class="form-label">Ideal For</label>
                    <asp:DropDownList ID="Idealfor" CssClass="form-select" runat="server">
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                        <asp:ListItem>Boys</asp:ListItem>
                        <asp:ListItem>Girls</asp:ListItem>
                    </asp:DropDownList>
                </td></tr>
                <tr class="row">
                <td class="col-md-4">
                    <label class="form-label">Mrp</label>
                    <asp:TextBox ID="Pmrp" TextMode="number" runat="server" CssClass="form-control"></asp:TextBox>
                </td>
                <td class="col-md-4">
                    <label class="form-label">Price</label>
                    <asp:TextBox ID="Pprice" runat="server" TextMode="number" CssClass="form-control"></asp:TextBox>
                </td> 
                <td class="col-md-4">
                    <label class="form-label">IsActive</label>
                    <asp:TextBox ID="isActive" runat="server" TextMode="number" CssClass="form-control"></asp:TextBox>
                </td>
               
            </tr>
            <tr class="row">
                <td class="col-md-4"></td>
                <td class="col-md-4">
                    <asp:Button ID="Button1" CssClass="btn btn-outline-light btn-block " runat="server" Text="Update" OnClick="Button1_Click"  />
                                 </td>
                <td class="col-md-4"></td>

            </tr>
        </table>

    </div>
</asp:Content>
