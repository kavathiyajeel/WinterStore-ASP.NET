    <%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="WinterStore.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid rounded-3 mt-3" style="margin: auto; width: 60%; background-color: #455c71">
        <asp:Label ID="error" ForeColor="Red" runat="server" Text=""></asp:Label>
        <table class="table table-borderless" style="border: none; color: white">
            <tr class="row">
                <td class="col">
                    <h2 class="text-center"><i class="bi bi-bag-plus-fill mr-2"></i>Add Product</h2>
                </td>
            </tr>
            <tr class="row">
                <td class="col-md-6">
                    <label class="form-label">Product Name</label>
                    <asp:TextBox ID="Pname" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Yellow" ControlToValidate="Pname" runat="server" ErrorMessage="Name can't be empty"></asp:RequiredFieldValidator>
                </td>
                <td class="col-md-6">
                    <label class="form-label">Product Brand</label>
                    <asp:TextBox ID="Pbrand" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ForeColor="Yellow" ControlToValidate="Pbrand" runat="server" ErrorMessage="Brand can't be empty"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr class="row">
                <td class="col-md-6">
                    <label class="form-label">Product Description</label>
                    <asp:TextBox ID="Pdescription" Columns="4"
                        Rows="2" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ForeColor="Yellow" ControlToValidate="Pdescription" runat="server" ErrorMessage="Description can't be empty"></asp:RequiredFieldValidator>

                </td>
                <td class="col-md-6">
                    <label class="form-label">Product Image (*jpeg/jpg png)</label>
                    <asp:FileUpload ID="Pimage" CssClass="form-control" runat="server" />
                </td>

            </tr>
            <tr class="row">
                <td class="col-md-3">
                    <label class="form-label">Product Category</label>
                    <asp:DropDownList ID="Pcategory" CssClass=" form-select" runat="server">
                        <asp:ListItem>Sweatshirt</asp:ListItem>
                        <asp:ListItem>Jackets</asp:ListItem>
                        <asp:ListItem>Tshirts</asp:ListItem>
                        <asp:ListItem>Hoddie</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="col-md-3">
                    <label class="form-label">Ideal For</label>
                    <asp:DropDownList ID="Idealfor" CssClass="form-select" runat="server">
                        <asp:ListItem>Men</asp:ListItem>
                        <asp:ListItem>Women</asp:ListItem>
                        <asp:ListItem>Kids</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="col-md-3">
                    <label class="form-label">Mrp</label>
                    <asp:TextBox ID="Pmrp" TextMode="number" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ForeColor="Yellow" ControlToValidate="Pmrp" runat="server" ErrorMessage="Mrp can't be empty"></asp:RequiredFieldValidator>

                </td>
                <td class="col-md-3">
                    <label class="form-label">Price</label>
                    <asp:TextBox ID="Pprice" runat="server" TextMode="number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ForeColor="Yellow" ControlToValidate="Pprice" runat="server" ErrorMessage="Price can't be empty"></asp:RequiredFieldValidator>

                </td>

            </tr>
            <tr class="row">
                <td class="col-md-4"></td>
                <td class="col-md-4">
                    <asp:Button ID="add" CssClass="btn btn-outline-light btn-block " runat="server" Text="Add" OnClick="add_Click1" />
                </td>
                <td class="col-md-4"></td>

            </tr>
        </table>

    </div>
</asp:Content>
