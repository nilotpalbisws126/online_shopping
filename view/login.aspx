<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" enableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: center;
            font-size: xx-large;
        }
        .style5
        {
            width: 254px;
        }
        .style7
        {
            color: #FF0000;
        }
    .style8
    {
        width: 468px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

       <div>
    
        <br />
        <br />
        <br />
        <br />
    
        <table align="center" class="loginform">
            <tr>
                <td class="style4" colspan="3">
                    <strong>Sign in</strong>
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style8">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Username</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="27px" 
                        ontextchanged="TextBox1_TextChanged" Width="210px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" CssClass="style7" 
                        ErrorMessage="Enter your username">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;</td>
                <td class="style5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" Height="40px" 
                        ontextchanged="TextBox1_TextChanged" Width="220px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" CssClass="style7" 
                        ErrorMessage="Enter your password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:CheckBox ID="CheckBox2" runat="server" CssClass="cell_right" 
                        Text="Remember me" TextAlign="Left" Visible="False" />
&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server" 
                        NavigateUrl="~/registration/forget_pass.aspx">Forgot Password ??</asp:HyperLink>
                </td>
                <td class="style5">
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="89px" 
                        ImageUrl="~/registration/login.png" onclick="ImageButton2_Click" 
                        Width="171px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
&nbsp;&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" 
                        ShowSummary="False" />
                    Not a user? Sign up&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/registration/Registration.aspx" style="color: #0000FF">here</asp:HyperLink>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>

</asp:Content>


