<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WinterStore.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="container-fluid mt-2 mb-4 rounded-4" style="margin: auto; width: 70%;">
        <section>
        <%--Contact Form section--%>
        <div class="col-md-12 mt-3">

            <div class="card">
                <div class="card-header">
                    <h5 class="text-center"><i class="bi bi-person-lines-fill"></i>Contact Us</h5>
                </div>
                <div class="card-body">
                    <table class="table table-borderless text-center" style="color: black;">
                        <%--Heading--%>

                        <tr class="row">
                            <td class="col-md-3" style="text-align: center">
                                <label class="form-label" runat="server">Full Name :</label>
                            </td>
                            <td class="col-md-6" style="text-align: center">
                                <asp:TextBox CssClass="form-control" placeholder="Nirav" ID="txt_fname" runat="server"></asp:TextBox>
                            </td>
                            <td class="col-md-3" style="text-align: center">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a name" ControlToValidate="txt_fname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                            </td>
                        </tr>

                        <%--## email ##--%>

                        <tr class="row">
                            <td class="col-md-3" style="text-align: center">
                                <label class="form-label" runat="server">Email Address :</label>
                            </td>
                            <td class="col-md-6" style="text-align: center">
                                <asp:TextBox placeholder="abc@gmail.com" CssClass="form-control" TextMode="Email" ID="txt_email" runat="server"></asp:TextBox>
                            </td>
                            <td class="col-md-3" style="text-align: center">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" Display="Dynamic" ForeColor="Red" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be empty" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="row">

                            <td class="col-md-3" style="text-align: center">
                                <label class="form-label" runat="server">Message :</label>
                            </td>
                            <td class="col-md-6" style="text-align: center">
                                <asp:TextBox placeholder="Issue" CssClass="form-control" TextMode="multiline" ID="txt_msg" Rows="3" runat="server"></asp:TextBox>
                            </td>
                            <td class="col-md-3" style="text-align: center">
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid Email" Display="Dynamic" ForeColor="Red" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Message cannot be empty" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>

                        <%--## mobile no ##--%>

                        <tr class="row">
                            <td class="col-md-3" style="text-align: center">
                                <label class="form-label" runat="server">Mobile No :</label>
                            </td>
                            <td class="col-md-6" style="text-align: center">
                                <asp:TextBox placeholder="Enter mobile no" CssClass="form-control" ID="txt_phone" runat="server"></asp:TextBox>
                            </td>
                            <td class="col-md-3" style="text-align: center">
                                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter 10 digit number" ControlToValidate="txt_phone" Display="Dynamic" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1111111111"></asp:RangeValidator>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mobile no cannot be empty" ControlToValidate="txt_phone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <%--## Button ##--%>

                        <tr class="row">
                            <td class="col " style="text-align: center"></td>
                            <td class="col " style="text-align: center">
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-outline-info" Text="Submit" OnClick="Button1_Click" />
                            </td>
                            <td class="col " style="text-align: center"></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
    </section>
           </div>
</asp:Content>
