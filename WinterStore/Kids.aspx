<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="Kids.aspx.cs" Inherits="WinterStore.Kids" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:DataList ID="DataList1" runat="server"  DataSourceID="MensProduct"  RepeatColumns="3" RepeatDirection="Horizontal" Height="100%"   CssClass="card h-100 mt-1" style="width: 90%;margin:auto" GridLines="Both" >
            <ItemTemplate >
             <div class="col mb-2">
                 <a style="text-decoration:none;color:black" href="ProductDetails.aspx?id=<%# Eval("pid") %>" >
                <div class="card">
                    <img src='<%# Eval("pimage") %>' style="height:40%;width:40%;margin:auto" class="card-img-top mt-1" alt="ProductImage" />
                    <div class="card-body">
                        <asp:Label ID="Label1" class="card-title" runat="server" Text='<%# Eval("pname") %>' Font-Size="12"></asp:Label>
                    </div>
                    <div class="col">
                       
                        <asp:Label ID="Label2" class="card-title text-muted mr-2" Font-Strikeout="true" Text="₹" runat="server" Font-Size="12"> <i class="bi bi-currency-rupee"></i><%# Eval("pmrp") %></asp:Label>
                        <asp:Label ID="Label3" class="card-title" runat="server" Text="₹" Font-Size="14"><%# Eval("pprice") %></asp:Label>

                    </div>
                    <br />
                </div>
                     </a>
            </div>
            </ItemTemplate>
            <SeparatorTemplate>
 <hr style="border-radius:0px"/>
</SeparatorTemplate>

        

        </asp:DataList>
        <asp:SqlDataSource ID="MensProduct" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect %>" SelectCommand="SELECT pid, pname, pdesc, pcategory, pmrp, pprice, pimage FROM Products WHERE (pidealfor != 'Men')and (pidealfor != 'Women') and (isActive = 0)"></asp:SqlDataSource>
    
</asp:Content>
