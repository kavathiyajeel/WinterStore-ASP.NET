<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="ViewAllProducts.aspx.cs" Inherits="WinterStore.ViewAllProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     GridView1.PageIndex = e.NewPageIndex;
            GridView1.DataBind();
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" container-fluid mt-2">
        <div class="row" >
        <div class="col-2">
            <h3>Filter: </h3>
        </div>
        <div class="col-4">
            <asp:DropDownList ID="Gender" CssClass="form-select" runat="server"  >
                <asp:ListItem Value="Men">Male</asp:ListItem>
                <asp:ListItem Value="Women">Female</asp:ListItem>
                <asp:ListItem Value="Boys">Boys</asp:ListItem>  
                <asp:ListItem Value="Girls">Girls</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-4">
            <asp:DropDownList ID="Category" CssClass="form-select" runat="server"  >
                <asp:ListItem Value="Sweatshirts">Sweatshirts</asp:ListItem>
                <asp:ListItem Value="Jackets">Jackets</asp:ListItem>
                <asp:ListItem Value="Hoddie">Hoddies</asp:ListItem>
                <asp:ListItem Value="Tshirts">Tshirts</asp:ListItem>
                <asp:ListItem>Sweaters</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-2">
            <h3 class="mt" >
                <asp:HyperLink ID="itemAdd" NavigateUrl="~/Addproduct.aspx" CssClass="btn btn-success text-light" runat="server">+ Add</asp:HyperLink>
            </h3>
        </div>
            </div>
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="100%"    CssClass="table" >
        <Columns>
            <asp:TemplateField HeaderText="ProductId">
                <ItemTemplate>
                    <asp:Label ID="txt_id" runat="server" Text='<%# Eval("pid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductName">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("pname") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
                        <asp:TemplateField HeaderText="ProductIdealFor">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("pidealfor") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductCategory">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("pcategory") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductPrice">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("pprice") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="ProductImage">
                <ItemTemplate>
                    <asp:Image ID="pimage" src='<%#Eval("pimage") %>' runat="server" Height="90px" Width="90px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IsActive">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("isActive") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Actions" HeaderStyle-CssClass="text-center">
                <ItemTemplate>
                    
                    <asp:HyperLink ID="EditLink" CssClass="btn btn-outline-warning" NavigateUrl='<%# ("~/UpdateProduct.aspx?id=") + Eval("pid") %>' runat="server">Edit</asp:HyperLink>
                    
                    <asp:Button ID="Delete" CssClass="btn btn-outline-danger"  runat="server"  Text="Delete" />
                </ItemTemplate>

                <HeaderStyle CssClass="text-center"></HeaderStyle>
            </asp:TemplateField>

        </Columns>
       
    </asp:GridView>
</asp:Content>
