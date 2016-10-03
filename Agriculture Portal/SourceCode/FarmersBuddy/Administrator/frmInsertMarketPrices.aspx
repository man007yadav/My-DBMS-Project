<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" EnableEventValidation="false"  Theme="Theme1" AutoEventWireup="true" CodeFile="frmInsertMarketPrices.aspx.cs" Inherits="Administrator_frmInsertMarketPrices" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Insert Market Prices for Crops</h3>
<fieldset id="Field1" runat ="server" style="width:580px">
<legend>Market Prices</legend>
<table>
<tr>
<td>MarketName</td><td><asp:TextBox ID="txtMarketName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVMarketName" runat ="server" ControlToValidate ="txtMarketName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>District</td><td><asp:DropDownList ID="ddlDistrict" runat ="server" >
    <asp:ListItem>Select Dist.</asp:ListItem>
    <asp:ListItem>Anantapur</asp:ListItem>
    <asp:ListItem>Chittoor</asp:ListItem>
    <asp:ListItem>Cuddapah</asp:ListItem>
    <asp:ListItem>EGodvari</asp:ListItem>
    <asp:ListItem>Guntur</asp:ListItem>
    <asp:ListItem>Karimnagar</asp:ListItem>
    <asp:ListItem>Khammam</asp:ListItem>
    <asp:ListItem>Krishna</asp:ListItem>
    <asp:ListItem>Kurnool</asp:ListItem>
    <asp:ListItem>MahabubNagar</asp:ListItem>
    <asp:ListItem>Medak</asp:ListItem>
    <asp:ListItem>Nalgonda</asp:ListItem>
    <asp:ListItem>Nizamabad</asp:ListItem>
    <asp:ListItem>Nellore</asp:ListItem>
    <asp:ListItem>Prakasam</asp:ListItem>
    <asp:ListItem>Rangareddy</asp:ListItem>
    <asp:ListItem>Srikakulam</asp:ListItem>
    <asp:ListItem>Visakhapatnam</asp:ListItem>
    <asp:ListItem>Vizianagaram</asp:ListItem>
    <asp:ListItem>Warangal</asp:ListItem>
    <asp:ListItem>WestGodavari</asp:ListItem>
    </asp:DropDownList></td><td><asp:RequiredFieldValidator ID="RFVDistrict" runat ="server" ControlToValidate ="ddlDistrict" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr><td>Commodity</td><td><asp:TextBox ID="txtCommodity" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVCommodity" runat ="server" ControlToValidate="txtCommodity" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Variety</td><td><asp:TextBox ID="txtVariety" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVVariety" runat ="server" ControlToValidate ="txtVariety" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Quantity</td><td><asp:TextBox ID="txtQuantity" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RfvQuantity" runat ="server" ControlToValidate="txtQuantity" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Min Price</td><td><asp:TextBox ID="txtMinPrice" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVMInPrice" runat ="server" ControlToValidate="txtMinPrice" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Max Price</td><td><asp:TextBox ID="txtMaxPrice" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVMaxPrice" ErrorMessage ="*" runat ="server" ControlToValidate ="txtMaxPrice"></asp:RequiredFieldValidator></td>
<td></td>
<td>Model Price</td><td><asp:TextBox ID="txtModelPrice" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVModelPrice" runat ="server" ControlToValidate ="txtModelPrice" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr><td>Reg.Date</td><td><asp:TextBox ID="txtDate" runat ="server" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDate">
    </cc1:CalendarExtender>
    </td><td><asp:RequiredFieldValidator ID="RFVDate" runat ="server" ControlToValidate ="txtDate" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="width:580px">
<legend>Submiting Values</legend>
<table>
<tr>
<td><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnReset" runat ="server" 
        Text ="Reset" onclick="btnReset_Click" CausesValidation ="false"   /></td>
</tr>

</table>
</fieldset>
</center>
</asp:Content>

