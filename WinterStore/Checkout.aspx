<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="WinterStore.Checkout" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-2 mb-2 shadow-lg bg-white rounded" style="width: 80%; border: 1px solid black; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2); border-radius: 5px;">
        <table class="table table-borderless" style="color: black;">
            <tr class="row">
                <td class="col">
                    <h3 class="text-center">Shipping details</h3>
                </td>
            </tr>
            <%--Name--%>
            <tr class="row">
                <td class="col" style="text-align: center">
                    <label class="form-label" runat="server">Name :</label>
                </td>
                <td class="col">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txt_name"></asp:TextBox>
                </td>
            </tr>

            <%--## Address ##--%>
            <tr class="row">
                <td class="col " style="text-align: center">
                    <label class="form-label" runat="server">Address :</label>
                </td>
                <td class="col " style="text-align: center">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txt_add"></asp:TextBox>
                </td>
            </tr>
            <%--## City ##--%>
            <tr class="row">
                <td class="col " style="text-align: center">
                    <label class="form-label" runat="server">City :</label>
                </td>
                <td class="col" style="text-align: center">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txt_city"></asp:TextBox>
                </td>
            </tr>
            <%--## State ##--%>
            <tr class="row">
                <td class="col " style="text-align: center">
                    <label class="form-label" runat="server">State :</label>
                </td>
                <td class="col" style="text-align: center">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txt_state"></asp:TextBox>
                </td>

            </tr>
            <%--## Pincode ##--%>
            <tr class="row">
                <td class="col" style="text-align: center">
                    <label class="form-label" runat="server">Pincode :</label>
                </td>
                <td class="col" style="text-align: center">
                    <asp:TextBox runat="server" CssClass="form-control" ID="txt_pincode"></asp:TextBox>
                </td>
            </tr> 
            <%--## Amount ##--%>
            <tr class="row">
                <td class="col " style="text-align: center">
                    <label class="form-label" runat="server">Amount :</label>
                </td>
                <td class="col">
                    <asp:label  runat="server" CssClass="form-control" ID="txt_amount"></asp:label>
                </td>
            </tr> 
            <%--## Payment Method ##--%>
            <tr class="row">
                <td class="col " style="text-align: center">
                    <label class="form-label" runat="server">Payment Method :</label>
                </td>
                <td class="col" style="text-align: center">
                  <asp:DropDownList ID="Pmethod" CssClass=" form-control" runat="server">
                        <asp:ListItem>Cash on Delivery</asp:ListItem>
                        <asp:ListItem>Paytm</asp:ListItem>
                        <asp:ListItem>Gpay</asp:ListItem>
                        <asp:ListItem>PhonePay</asp:ListItem>
                        <asp:ListItem>OtherUpi</asp:ListItem>
                        <asp:ListItem>Net Banking</asp:ListItem>
                        <asp:ListItem>Credit/Debit Card</asp:ListItem>
                        <asp:ListItem>EMI</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            
                <%--## Submit ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                   
                    </td>
                    <td class="col " style="text-align: center">
                       <asp:Button  runat="server" CssClass="btn btn-success" ID="submit" Text="Place order" OnClick="submit_Click"/>
                    </td>
                </tr>
        </table>
    </div>
</asp:Content>
