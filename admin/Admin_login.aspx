<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_login.aspx.cs" Inherits="admin_Admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 38%;
            height: 187px;
        }
        .style4
        {
            text-align: center;
            font-size: xx-large;
        }
        .style6
        {
            width: 210px;
        }
        .style5
        {
            width: 254px;
        }
        .style7
        {
            color: #FF0000;
        }
        .style3
        {
            text-align: center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
    
        <table align="center" class="style1">
            <tr>
                <td class="style4" colspan="3">
                    Admin Login</td>
            </tr>
            <tr>
                <td class="style6">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Username</td>
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
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password&nbsp;</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" 
                        ontextchanged="TextBox2_TextChanged" TextMode="Password" Width="210px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" CssClass="style7" 
                        ErrorMessage="Enter your password">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Remember me" 
                        oncheckedchanged="CheckBox1_CheckedChanged" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                    </td>
                <td class="style5">
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="68px" 
                        ImageUrl="~/registration/login.png" onclick="ImageButton2_Click" 
                        Width="168px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3" colspan="3">
                    <asp:Label ID="Label1" runat="server" style="color: #FF0000"></asp:Label>
&nbsp;&nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" 
                        ShowSummary="False" />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
