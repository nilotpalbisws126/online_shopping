<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="cart.aspx.cs" Inherits="view_Default" enableEventValidation="false"  %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="product_id,customer_id" DataSourceID="SqlDataSource1" 
        Height="277px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        Width="505px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
        BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="aboutCat" 
        ShowFooter="True">
        <Columns>
            <asp:TemplateField HeaderText=" YOUR CART" SortExpression="price" 
                ConvertEmptyStringToNull="False" InsertVisible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("price") %>'></asp:TextBox>
                </EditItemTemplate>
                <FooterTemplate>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="50px" 
                        ImageUrl="~/view/order-now-2.gif" 
                        Width="129px" onclick="ImageButton2_Click" />
                </FooterTemplate>
                <ItemTemplate>
                    <br />
                    <asp:Image ID="Image1" runat="server" Height="211px" 
                        ImageUrl='<%# Eval("img") %>' Width="224px" />
                    <br />
                    <br />
                    Price :<asp:Label ID="Label7" runat="server" 
                        Text='<%# Eval("price", "{0:N}") %>'></asp:Label>
                    &nbsp;&nbsp; Product Name:&nbsp;
                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                    <br />
                    <br />
                    Quantity:
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("qnty", "{0}") %>'></asp:Label>
                    &nbsp;&nbsp; Total Price:
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("tot", "{0:N}") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="product name" SortExpression="product_name" 
                Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("product_name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("product_name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="total" SortExpression="tot" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("tot") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("tot") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="customer_id" SortExpression="customer_id" 
                Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("customer_id") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("customer_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Quantity" SortExpression="qnty" Visible="False">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("qnty") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("qnty") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="product_id" SortExpression="product_id" 
                Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_id") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("product_id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ButtonType="Image" 
                DeleteImageUrl="~/view/remove.png" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Bottom" />
            </asp:CommandField>
            <asp:ImageField DataAlternateTextField="img" DataImageUrlField="img" 
                SortExpression="img" Visible="False">
                <ControlStyle Height="100%" Width="100%" />
                <ItemStyle Height="90%" Width="90%" />
            </asp:ImageField>
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
        DeleteCommand="spdel" DeleteCommandType="StoredProcedure" 
        
        SelectCommand="SELECT p.price, p.product_name, c.tot, c.customer_id, c.qnty, p.img, p.product_id FROM cart AS c INNER JOIN products AS p ON c.product_id = p.product_id WHERE (c.customer_id = @customer_id)" 
        onselecting="SqlDataSource1_Selecting">
        <DeleteParameters>
            <asp:Parameter Name="customer_id" Type="String" />
            <asp:Parameter Name="product_id" Type="String" />
        </DeleteParameters>
        <SelectParameters>
            <asp:SessionParameter Name="customer_id" SessionField="username" />
        </SelectParameters>
    </asp:SqlDataSource>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<table class="search-result">
    <tr>
        <td>
            <asp:Label ID="Label11" runat="server" CssClass="aboutCat"></asp:Label>
        </td>
    </tr>
</table>
<br />

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

<td>
    </td>




&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 




</asp:Content>

