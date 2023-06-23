<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="MyProfile.aspx.cs" Inherits="WinterStore.MyProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid mt-2 shadow-lg bg-white rounded-4" style=" width: 60%; border: 2px solid black;">
            <table class="table table-borderless" style="color:black;">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                    <h3 class="text-center"><i class="bi bi-person-square mr-2"></i>My Detail's</h3>

                     
                    </td>
                    <%--## FULLNAME ##--%>
                </tr>
                <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">First Name :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_fname" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>
                 <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">Last Name :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_lname" runat="server" Text=""></asp:Label>
                       
                    </td>
                   
                </tr>
                <%--## email ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Email Address :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_email" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>

                <%--## Address ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Address :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_add" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>
                    <%--## City ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">City :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_city" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>
                 <%--## State ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">State :</label>
                    </td>
                    <td class="col" style="text-align: center">
                    
                        <asp:Label CssClass="form-control" ID="lbl_state" runat="server" Text=""></asp:Label>
                     
                    </td>
                  
                </tr>
                  <%--## Pincode ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Pincode :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_pincode" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>

                <%--## mobile no ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Mobile No :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_phone" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
                <%--## Button ##--%>
                <tr class="row">
                    <td class="col" style="text-align: center">
                        <asp:Button ID="Button1" CssClass="btn btn-warning" Width="30%" runat="server" Text="Edit" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>

        </div>
</asp:Content>
