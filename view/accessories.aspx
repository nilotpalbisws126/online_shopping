<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="accessories.aspx.cs" Inherits="view_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
    RepeatColumns="4" RepeatDirection="Horizontal" 
    onselectedindexchanged="DataList1_SelectedIndexChanged" 
    CssClass="aboutCat" Font-Size="Medium" Height="80%" Width="100%">
        <ItemTemplate>
            <div class="style1">
                <br />
            &nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="aboutCat" Height="235px" 
                ImageUrl='<%# Eval("img") %>' Width="265px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
            product name:
                <asp:Label ID="product_nameLabel" runat="server" 
                Text='<%# Eval("product_name", "{0}") %>'></asp:Label>
                <br />
                <br />
            price:
                <asp:Label ID="priceLabel" runat="server" 
                Text='<%# Eval("price", "{0:N}") %>' />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="actionButton" 
                ImageUrl="~/view/Button-ViewDetails.gif" onclick="ImageButton1_Click" 
                PostBackUrl='<%#"productDetail.aspx?product_id="+Eval("product_id") %>' />
                <br />
                <asp:Label ID="Label2" runat="server" Text='<%# Eval("product_id", "{0}") %>' 
                Visible="False"></asp:Label>
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
        SelectCommand="SELECT product_name, img, price, product_id FROM products WHERE (product_id LIKE 'a%') OR (product_id LIKE 'A%')">
    </asp:SqlDataSource>
</p>
</asp:Content>

