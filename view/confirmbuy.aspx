<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="confirmbuy.aspx.cs" Inherits="view_confirmbuy" enableEventValidation="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" CssClass="aboutCat" ShowFooter="True" 
        onselectedindexchanged="GridView1_SelectedIndexChanged" 
        DataKeyNames="grndtot,customer_id">
        <Columns>
            <asp:CommandField ButtonType="Image" DeleteImageUrl="~/view/buynow.gif" 
                ShowDeleteButton="True" />
            <asp:TemplateField HeaderText="Your Total Price is :" SortExpression="grndtot">
                
                <ItemTemplate>
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("grndtot", "{0:N}") %>' session="grndtot"></asp:Label>
                    &nbsp;/-<br />
                    <br />
                    <strong>Do you Want to proceed ??</strong>
                </ItemTemplate>
                <FooterTemplate>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        imageurl="~/view/cancel-button-png-hi.png" Height="58px" 
                        PostBackUrl="~/view/cart.aspx" Width="206px"/>
                </FooterTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
        SelectCommand="spselect" SelectCommandType="StoredProcedure" 
        InsertCommand="spbuy" InsertCommandType="StoredProcedure" 
        
        ProviderName="<%$ ConnectionStrings:online_shoppingConnectionString.ProviderName %>" 
        DeleteCommand="spbuy" DeleteCommandType="StoredProcedure">
        <DeleteParameters>
            <asp:Parameter Name="customer_id" Type="String" />
            <asp:Parameter Name="grndtot" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="customer_id" Type="String" />
            <asp:Parameter Name="grndtot" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="customer_id" SessionField="username" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>


    <br />
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="aboutCat"></asp:Label>
    <br />


</asp:Content>

