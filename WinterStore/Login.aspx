<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WinterStore.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body  style="background-image:url(Images/lgbg2.jpg); background-size:cover">
    <form id="form1" runat="server">
        <div  class="container-fluid me-auto mt-5 rounded-4" style="margin:auto ;width:50%;border:2px solid black;" >
        <table class="table table-responsive table-borderless" >
          <%--Heading--%>
        <tr class="row" >
            <td class="col">
                <h3 class="text-center">Login</h3>
            </td>
          
        </tr>
       
            <%--## email ##--%>

             <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   <label class="form-label">Email Address :</label>
               </td>
               <td class="col-md-6" style="text-align:center">
                   <asp:TextBox placeholder="abc@gmail.com" CssClass="form-control" TextMode="Email" ID="txt_email" runat="server"></asp:TextBox>
               </td>
               </tr>
             <%--## Password ##--%>

             <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   <label class="form-label">Password :</label>
               </td>
               <td class="col-md-6" style="text-align:center">
                   <asp:TextBox placeholder="8-10 Characters" CssClass="form-control" TextMode="Password" ID="txt_password"  runat="server"></asp:TextBox>
               </td>
                 </tr>
                                      <%--## Show Password ##--%>

             <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   
               </td>
               <td class="col-md-6" style="text-align:center">
                   <input id="shpass" runat="server" type="checkbox" onchange="document.getElementById('txt_password').type = this.checked?'text':'password'" />Show Password</td>
               </tr>
               
                               <%--## Button ##--%>

             <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   
               </td>
               <td class="col-md-6" style="text-align:center">
                   <asp:Button ID="formSubmit" runat="server" BackColor="#2596be" ForeColor="white" CssClass="btn" Width="40%" Text="Login" OnClick="formSubmit_Click"  />
               </td>
               </tr>
             
           
                          <%--## Login ##--%>

             <tr class="row">
               <td class="col-md-6" style="text-align:center">
                   <label class="form-label">New here</label>
               </td>
               <td class="col-md-6" style="text-align:center">
                 <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registration.aspx" CssClass="btn " Width="60%"  runat="server" BackColor="#2596be" ForeColor="white">Sign Up </asp:HyperLink>
                  
               </td>
               </tr>
           
           
       </table>

</div>
    </form>
    <script src="css/bootstrap.bundle.js"></script>
</body>
</html>
