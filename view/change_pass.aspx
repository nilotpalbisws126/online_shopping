<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="change_pass.aspx.cs" Inherits="view_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
        }
        .style3
        {
            width: 223px;
        }
        .style5
        {
            width: 326px;
        }
        .style4
        {
            width: 223px;
            font-size: x-large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">




    <p>
    <br />
</p>
    
        <table class="aboutCat">
            <tr>
                <td class="style2" colspan="3">
                    <strong>Change Password</strong></td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr id="row1" runat="server">
                <td class="style4">
                    Current Password</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox1" runat="server" Height="26px" TextMode="Password" 
                        Width="205px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Required" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    New Password</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox2" runat="server" Height="26px" TextMode="Password" 
                        Width="205px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" ErrorMessage="Required" style="color: #FF0000">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Confirm Password</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Height="26px" TextMode="Password" 
                        Width="205px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Required" style="color: #FF0000">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                        ErrorMessage="Password donot match" style="color: #FF0000">*</asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="35px" 
                        ImageUrl="~/registration/submit.png" onclick="ImageButton1_Click" 
                        Width="132px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" style="color: #FF0000" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    


</asp:Content>

