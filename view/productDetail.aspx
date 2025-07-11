<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="productDetail.aspx.cs" Inherits="view_Default" enableEventValidation="false"  %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:DataList ID="DataList1" runat="server" DataKeyField="product_id" 
        DataSourceID="SqlDataSource1" onitemdatabound="use" RepeatColumns="4" 
        RepeatDirection="Horizontal" 
        onselectedindexchanged="DataList1_SelectedIndexChanged" 
    CssClass="aboutCat">
        <ItemTemplate>
            <div class="style1">
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Image ID="Image1" runat="server" CssClass="images-hovers" Height="423px" 
                    ImageUrl='<%# Eval("img") %>' Width="504px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <strong>product id</strong>:
                <asp:Label ID="product_idLabel" runat="server" 
                    Text='<%# Eval("product_id") %>' />
                <br />
                <br />
                <strong>product name</strong>:
                <asp:Label ID="product_nameLabel" runat="server" 
                    Text='<%# Eval("product_name") %>' />
                <br />
                <br />
                <strong>avail</strong>:
                <asp:Label ID="availLabel" runat="server" Text='<%# Eval("avail") %>' />
                <br />
                <br />
                <strong>price:</strong>
                <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                &nbsp;
                <br />
                <br />
                <strong>Description</strong> :<asp:Label ID="descrip" runat="server" 
                    Text='<%# Eval("descrip") %>'></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" CssClass="actionButton" 
                    Height="167px" ImageUrl="~/view/add-to-cart.jpg" onclick="ImageButton1_Click" 
                    Width="411px" />
                <br />
                <br />
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
        
        
        SelectCommand="SELECT * FROM [products] WHERE ([product_id] = @product_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="product_id" QueryStringField="product_id" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


</asp:Content>

