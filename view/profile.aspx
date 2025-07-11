<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="view_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <span class="style1"><strong>&nbsp; </strong>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CssClass="aboutCat" DataKeyNames="customer_id" DataSourceID="SqlDataSource2" 
            ShowFooter="True">
            <Columns>
                <asp:BoundField DataField="customer_id" HeaderText="Hello" ReadOnly="True" 
                    SortExpression="customer_id" />
            </Columns>
            <PagerTemplate>
                <span class="style1">
                <asp:Label ID="Label9" runat="server" Text='<%# Eval("customer_id") %>'></asp:Label>
                </span>
            </PagerTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
            SelectCommand="SELECT [customer_id] FROM [customer] WHERE ([customer_id] = @customer_id)">
            <SelectParameters>
                <asp:SessionParameter Name="customer_id" SessionField="username" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        </span></p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="customer_id" DataSourceID="SqlDataSource1" Height="279px" 
            onpageindexchanging="DetailsView1_PageIndexChanging" Width="669px" 
            CssClass="aboutCat">
            <Fields>
                <asp:TemplateField HeaderText="First Name" SortExpression="f_name">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("f_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("f_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("f_name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Last Name" SortExpression="l_name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("l_name") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("l_name") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("l_name") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Gender" SortExpression="gender">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("gender") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("gender") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="User name" SortExpression="customer_id">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("customer_id") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("customer_id") %>'></asp:Label>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("customer_id") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="email">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("email") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address1" SortExpression="address1">
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("address1") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("address1") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("address1") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address2" SortExpression="address2">
                    <ItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Bind("address2") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("address2") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("address2") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Contact Number" SortExpression="mobno">
                    <ItemTemplate>
                        <asp:Label ID="Label8" runat="server" Text='<%# Bind("mobno") %>'></asp:Label>
                    </ItemTemplate>
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("mobno") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("mobno") %>'></asp:TextBox>
                    </InsertItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="zipcode" HeaderText="zipcode" 
                    SortExpression="zipcode" />
                <asp:CommandField ShowEditButton="True" ButtonType="Image" 
                    CancelImageUrl="~/view/cancel_button - Copy.png" 
                    EditImageUrl="~/view/edit-button.png" 
                    UpdateImageUrl="~/view/update_button_.png" />
            </Fields>
        </asp:DetailsView>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:online_shoppingConnectionString %>" 
            
            SelectCommand="SELECT [l_name], [gender], [customer_id], [email], [address1], [address2], [mobno], [f_name], [zipcode] FROM [customer] WHERE ([customer_id] = @customer_id)" 
            DeleteCommand="DELETE FROM [customer] WHERE [customer_id] = @customer_id" 
            InsertCommand="INSERT INTO [customer] ([l_name], [gender], [customer_id], [email], [address1], [address2], [mobno], [f_name], [zipcode]) VALUES (@l_name, @gender, @customer_id, @email, @address1, @address2, @mobno, @f_name, @zipcode)" 
            
            UpdateCommand="UPDATE [customer] SET [l_name] = @l_name, [gender] = @gender, [email] = @email, [address1] = @address1, [address2] = @address2, [mobno] = @mobno, [f_name] = @f_name, [zipcode] = @zipcode WHERE [customer_id] = @customer_id">
            <DeleteParameters>
                <asp:Parameter Name="customer_id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="l_name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="customer_id" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address1" Type="String" />
                <asp:Parameter Name="address2" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="f_name" Type="String" />
                <asp:Parameter Name="zipcode" Type="Int64" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="customer_id" SessionField="username" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="l_name" Type="String" />
                <asp:Parameter Name="gender" Type="String" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="address1" Type="String" />
                <asp:Parameter Name="address2" Type="String" />
                <asp:Parameter Name="mobno" Type="String" />
                <asp:Parameter Name="f_name" Type="String" />
                <asp:Parameter Name="zipcode" Type="Int64" />
                <asp:Parameter Name="customer_id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" 
            NavigateUrl="~/view/change_pass.aspx" CssClass="aboutCat">click to change your password </asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="aboutCat" 
            NavigateUrl="~/view/order.aspx">Click here to check order status</asp:HyperLink>
    </p>
</asp:Content>

