<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="order.aspx.cs" Inherits="view_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
            ForeColor="Red" Text="Pending Request"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" CssClass="aboutCat" DataKeyNames="customer_id,product_id" 
        DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" 
        Height="202px" onselectedindexchanged="GridView1_SelectedIndexChanged" 
        Width="1010px">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="product_id" 
                SortExpression="product_id" />
            <asp:BoundField DataField="product_name" HeaderText="product_name" 
                SortExpression="product_name" />
            <asp:BoundField DataField="qnty" HeaderText="quantity" SortExpression="qnty" />
            <asp:BoundField DataField="dte" HeaderText="Date" SortExpression="dte" />
            <asp:CommandField HeaderText="Cancel Request" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
            DeleteCommand="spcancelreq" DeleteCommandType="StoredProcedure" 
            SelectCommand="spordersel" SelectCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="customer_id" Type="String" />
                <asp:Parameter Name="product_id" Type="String" />
            </DeleteParameters>
            <SelectParameters>
                <asp:SessionParameter Name="customer_id" SessionField="username" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>



</asp:Content>

