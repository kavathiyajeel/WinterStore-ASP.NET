<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="WinterStore.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body style="background-image:url(Images/bg2.jpg); background-size:cover">
    <form id="form1" runat="server">
                     <div class="container-fluid mt-3 rounded-4" style="margin:auto  ; width: 70%; border: 2px solid white">
            <table class="table table-responsive table-borderless " style="color:black">
                <%--Heading--%>
                <tr class="row">
                    <td class="col">
                        <h3 class="text-center">Registration</h3>
                    </td>
                    <%--## FULLNAME ##--%>
                </tr>
                <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">First Name :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:TextBox CssClass="form-control" placeholder="Nirav" ID="txt_fname" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a name" ControlToValidate="txt_fname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                 <tr class="row">
                    <td class="col" style="text-align: center">
                        <label class="form-label" runat="server">Last Name :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:TextBox CssClass="form-control" placeholder="Patel" ID="txt_lname" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Please enter a name" ControlToValidate="txt_lname" ForeColor="Red" SetFocusOnError="True" Display="Dynamic"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <%--## email ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Email Address :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:TextBox placeholder="abc@gmail.com" CssClass="form-control" TextMode="Email" ID="txt_email" runat="server"></asp:TextBox>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email" Display="Dynamic" ForeColor="Red" ControlToValidate="txt_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Email cannot be empty" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <%--## Password ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Password :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:TextBox placeholder="8-10 Characters" CssClass="form-control" TextMode="Password" ID="txt_password" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password cannot be empty" ControlToValidate="txt_password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <%--## Confirm Password ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Confirm Password :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:TextBox placeholder="re-enter password" CssClass="form-control" TextMode="Password" ID="txt_cpassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password didn`t match" ControlToCompare="txt_password" ControlToValidate="txt_cpassword" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Re-enter your password" ControlToValidate="txt_cpassword" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td> 
                </tr>

                <%--## Address ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Address :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:TextBox placeholder="Address line 1" CssClass="form-control" rows="3" TextMode="Multiline" ID="txt_add" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Address can`t be empty" ControlToValidate="txt_add" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                    <%--## City ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">City :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:TextBox placeholder="ex - Ahemdabad" CssClass="form-control"  ID="txt_city" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="city field can`t be empty" ControlToValidate="txt_city" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <%--## State ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">State :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:TextBox placeholder="ex - Gujarat" CssClass="form-control"  ID="txt_state" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="state field can`t be empty" ControlToValidate="txt_state" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                  <%--## Pincode ##--%>
                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Pincode :</label>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:TextBox CssClass="form-control" placeholder="ex - 360020"  ID="txt_pincode" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="zip field can`t be empty" ControlToValidate="txt_pincode" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <%--## mobile no ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center">
                        <label class="form-label" runat="server">Mobile No :</label>
                    </td>
                    <td class="col " style="text-align: center">
                        <asp:TextBox placeholder="Enter mobile no" CssClass="form-control" ID="txt_phone" runat="server"></asp:TextBox>
                    </td>
                    <td class="col" style="text-align: center">
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Enter 10 digit number" ControlToValidate="txt_phone" Display="Dynamic" ForeColor="Red" MaximumValue="9999999999" MinimumValue="1111111111"></asp:RangeValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Mobile no cannot be empty" ControlToValidate="txt_phone" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <%--## Button ##--%>

                <tr class="row">
                    <td class="col " style="text-align: center"></td>
                    <td class="col " style="text-align: center">
                        <asp:Button ID="submit" runat="server" CssClass="btn" Backcolor="#ebf4fb" Width="40%" Text="Register" OnClick="submit_Click"   />
                    </td>
                </tr>
                 <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   <label class="form-label" runat="server">Already have an account</label>
               </td>
               <td class="col-md-6" style="text-align:center">
                 <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Login.aspx" CssClass="btn " Backcolor="#ebf4fb" Width="60%"  runat="server" >Sign In </asp:HyperLink>
                  
               </td>
               </tr>

            </table>

        </div>

    </form>
</body>

</html>
