<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_panel.aspx.cs" Inherits="admin_admin_panel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 67%;
            height: 453px;
        }
        .style2
        {
            font-size: xx-large;
            text-align: center;
            height: 69px;
            background-color: #990000;
        }
        .style3
        {
            width: 141px;
            background-color: #990000;
        }
        .style4
        {
            width: 141px;
            font-size: x-large;
            background-color: #990000;
        }
        .style5
        {
            width: 183px;
            background-color: #990000;
        }
        .style6
        {
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2" colspan="3">
                    <strong style="color: #FFFFFF; background-color: #990000">Admin Panel&nbsp;&nbsp; 
                    (Hi
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                    ) </strong>
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                        style="font-size: medium">log out</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <strong style="color: #FFFFFF; background-color: #990000">Add product</strong></td>
                <td bgcolor="#990000" class="style5">
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="122px" 
                        ImageUrl="~/admin/add.png" onclick="ImageButton1_Click" Width="138px" />
                    <br />
                    <br />
                    <br />
                </td>
                <td bgcolor="#990000" style="color: #800000">
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp;&nbsp; <span class="style6">&nbsp;product id</span><br />
                    <br />
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;&nbsp; <span class="style6">&nbsp;price<br />
                    <br />
                    </span>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                    <span class="style6">&nbsp;&nbsp;&nbsp; product name
                    <br />
                    <br />
                    </span>
                    <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged"></asp:TextBox>
                    <span class="style6">&nbsp;&nbsp;&nbsp; Availability<br />
                    <br />
                    <asp:TextBox ID="TextBox9" runat="server" ontextchanged="TextBox9_TextChanged1"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Description<br />
                    </span><br />
                    <asp:FileUpload ID="FileUpload1" runat="server" style="height: 22px" />
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" style="color: #FFFFFF"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <strong style="color: #FFFFFF; background-color: #990000">Delete product</strong></td>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="78px" 
                        ImageUrl="~/admin/Delete.png" onclick="ImageButton2_Click" 
                        style="text-align: center" Width="100px" />
                </td>
                <td style="color: #FFFFFF; background-color: #990000">
                    <asp:TextBox ID="TextBox8" runat="server" ontextchanged="TextBox8_TextChanged"></asp:TextBox>
&nbsp;&nbsp; product id
                </td>
            </tr>
            <tr>
                <td class="style4">
                    <strong style="color: #FFFFFF; background-color: #990000">Update product</strong></td>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton3" runat="server" Height="149px" 
                        ImageUrl="~/admin/update.png" onclick="ImageButton3_Click" Width="180px" />
                </td>
                <td style="background-color: #990000">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td style="background-color: #990000">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="White" NavigateUrl="~/admin/prod_req.aspx">click to see the product Requets</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    &nbsp;</td>
                <td style="background-color: #990000">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
