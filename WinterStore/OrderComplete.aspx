<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="OrderComplete.aspx.cs" Inherits="WinterStore.OrderComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-2 mb-2 shadow-lg bg-white rounded" style="width: 80%; border: 2px solid black;">
        <table class="table table-borderless" style="color: black;">
            <tr class="row">
                <td class="col text-center">
                    <asp:Image ID="Image1" ImageAlign="Middle" Width="40%" CssClass="figure-img" ImageUrl="~/Images/oc.gif" runat="server" />
                </td>
            </tr>
            <tr class="row">
                <td class="col text-center" >
                    <asp:Label ID="Label1" runat="server" ForeColor="Green" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr class="row">
                <td class="col text-center" >
                    <asp:HyperLink ID="HyperLink1" CssClass="btn btn-info" runat="server" NavigateUrl="~/Home.aspx">Continue Shopping </asp:HyperLink>  
                </td>
            </tr>
        </table>

    </div>
</asp:Content>
