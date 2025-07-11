<%@ Page Title="" Language="C#" MasterPageFile="~/view/site.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="view_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" type="text/css" href="engine7/style.css" />
	<script type="text/javascript" src="engine7/jquery.js"></script>
 <link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script> 

    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="wowslider-container7">
	<div class="ws_images"><ul>
		<li><img src="data7/images/assam_silk_pat__mekhela_chadar__saree.png" alt="Assam Silk (Pat - Mekhela Chadar & Saree)" title="Assam Silk (Pat - Mekhela Chadar & Saree)" id="wows7_0"/></li>
		<li><img src="data7/images/manipuri_shawl.png" alt="Manipuri Shawl" title="Manipuri Shawl" id="wows7_1"/></li>
		<li><a href="http://wowslider.com/vf"><img src="data7/images/traditional_dress_of_the_bodosdokhna.jpg" alt="full screen slider" title="Traditional dress of the Bodos-Dokhna" id="wows7_2"/></a></li>
		<li><img src="data7/images/assamese_jewellery.png" alt="Assamese Jewellery" title="Assamese Jewellery" id="wows7_3"/></li>
      
	</ul></div>
	<div class="ws_thumbs">
<div>
		<a href="#" title="Assam Silk (Pat - Mekhela Chadar & Saree)"><img src="data7/tooltips/assam_silk_pat__mekhela_chadar__saree.png" alt="" /></a>
		<a href="#" title="Manipuri Shawl"><img src="data7/tooltips/manipuri_shawl.png" alt="" /></a>
		<a href="#" title="Traditional dress of the Bodos-Dokhna"><img src="data7/tooltips/traditional_dress_of_the_bodosdokhna.jpg" alt="" /></a>
		<a href="#" title="Assamese Jewellery"><img src="data7/tooltips/assamese_jewellery.png" alt="" /></a>
	</div>
</div>
<span class="wsl"><a href="http://wowslider.com/vu">image carousel</a> by WOWSlider.com v7.2</span>
	<div class="ws_shadow"></div>
</div>	
<p>
  <script type="text/javascript" src="engine7/wowslider.js"></script>
</p>
<p>
  <script type="text/javascript" src="engine7/script.js"></script></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img src="files/coming-soon.png" width="927" height="109"></p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table width="800" height="504" border="1" align="left">
  <tr>
    <td width="377"><img src="files/Banarasi Saree.jpg" width="400" height="500"></td>
    <td width="407"><img src="files/More-Mischief-Black-Sherwani.jpg" width="400" height="500"></td>
  </tr>
</table>
<table width="500" height="506" border="1">
  <tr>
    <td><div id="wowslider-container1">
	<div class="ws_images"><ul>
		<li><img src="data1/images/off_white_handloom_pure_kanchipuram.jpg" alt="Off White Handloom Pure Kanchipuram" title="Off White Handloom Pure Kanchipuram" id="wows1_0"/></li>
		<li><a href="http://wowslider.com/vf"><img src="data1/images/green_kanchipuram_sarees.jpg" alt="full screen slider" title="Green Kanchipuram Sarees" id="wows1_1"/></a></li>
		<li><img src="data1/images/samyakk_offwhite__red_kanchipuram_saree.jpg" alt="Samyakk Off-White & Red Kanchipuram Saree" title="Samyakk Off-White & Red Kanchipuram Saree" id="wows1_2"/></li>
	</ul></div>
	<div class="ws_bullets"><div>
		<a href="#" title="Off White Handloom Pure Kanchipuram"><img src="data1/tooltips/off_white_handloom_pure_kanchipuram.jpg" alt="Off White Handloom Pure Kanchipuram"/>1</a>
		<a href="#" title="Green Kanchipuram Sarees"><img src="data1/tooltips/green_kanchipuram_sarees.jpg" alt="Green Kanchipuram Sarees"/>2</a>
		<a href="#" title="Samyakk Off-White & Red Kanchipuram Saree"><img src="data1/tooltips/samyakk_offwhite__red_kanchipuram_saree.jpg" alt="Samyakk Off-White & Red Kanchipuram Saree"/>3</a>
	</div></div><span class="wsl"><a href="http://wowslider.com/vu">image carousel</a> by WOWSlider.com v7.2</span>
	<div class="ws_shadow"></div>
	</div>	
	<script type="text/javascript" src="engine1/wowslider.js"></script>
	<script type="text/javascript" src="engine1/script.js"></script>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<br />




    <br />
    <br />
    <br />
&nbsp;&nbsp;
    <asp:ImageButton ID="ImageButton4" runat="server" Height="141px" 
        ImageUrl="~/view/our_products.gif" Width="420px" />




    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
    RepeatColumns="4" RepeatDirection="Horizontal" 
    onselectedindexchanged="DataList1_SelectedIndexChanged" 
    CssClass="aboutCat" Font-Size="Medium" Height="80%" Width="90%">
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
        SelectCommand="SELECT TOP (8) product_name, img, price, product_id FROM products">
    </asp:SqlDataSource>





    &nbsp;&nbsp;&nbsp;





    <asp:ImageButton ID="ImageButton5" runat="server" 
        ImageUrl="~/view/button_image_view_all_products.gif" postbackurl="~/view/products.aspx"/>
    <br />
    <br />





</asp:Content>

