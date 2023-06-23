<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ViewOrderDetails.aspx.cs" Inherits="WinterStore.ViewOrderDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid mt-2 shadow-lg bg-white rounded-4" style=" width: 60%; border: 2px solid black;">
            <table class="table table-borderless" style="color:black;">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                    <h3 class="text-center"><i class="bi bi-clipboard-heart mr-2"></i>Order Details</h3>
                    </td>
                    <%--## Order ID ##--%>
                </tr>
                <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">Order ID :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_oid" ForeColor="green" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <%--Order Date--%>
                 <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">Order Date :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_odate" runat="server" Text=""></asp:Label>
                       
                    </td>
                   
                </tr>
                <%--## customer name ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Customer Name :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_name" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>

                <%--## Product Name ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Product Name :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_pname" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>
                    <%--## Product Image ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Product Image :</label>
                    </td>
                    <td class="col" style="text-align: center">
<asp:Image ID="pimage"  runat="server" Height="90px" Width="90px" />
                    </td>
                   
                </tr>
                  <%--## Amount ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Amount :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_amount" runat="server" Text=""></asp:Label>
                      
                    </td>
                   
                </tr>
                 <%--## order Address ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Address :</label>
                    </td>
                    <td class="col" style="text-align: center">
                    
                        <asp:Label CssClass="form-control" ID="lbl_address" runat="server" Text=""></asp:Label>
                     
                    </td>
                  
                </tr>
                  <%--## Payment method ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Payment Method :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_pmethod" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>   
                <%--## Payment Status ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Payment Status :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_pstatus" runat="server" Text=""></asp:Label>
                    </td>
                   
                </tr>

                <%--## Transaction id ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Transaction ID :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_tid" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>  
                <%--## Order Status ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Order Status :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:Label CssClass="form-control" ID="lbl_ostatus" runat="server" Text=""></asp:Label>
                    </td>
                    
                </tr>
               
            </table>

        </div>
</asp:Content>
