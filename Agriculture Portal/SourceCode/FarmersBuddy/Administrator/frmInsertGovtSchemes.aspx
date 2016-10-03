<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmInsertGovtSchemes.aspx.cs" Inherits="Administrator_frmInsertGovtSchemes" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Insert Government Scheme Details</h3><br />
<fieldset id="Field1" runat ="server" style="width:280px">
<table>
<tr>
<td>SchemeName</td><td><asp:TextBox ID="txtSchemeName" Width="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVSchemeName" runat ="server" ControlToValidate="txtSchemeName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>Objective</td><td><asp:TextBox ID="txtObjective" TextMode="MultiLine" Height="50px" Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVObjective" runat ="server" ControlToValidate ="txtObjective" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Eligibility</td><td><asp:TextBox ID="txtEligibility" TextMode="MultiLine" Height="50px" Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVEligibility" runat ="server" ControlToValidate ="txtEligibility" ErrorMessage ="*" ></asp:RequiredFieldValidator></td>
</tr>
<tr>
<td>Beneficiaries</td><td><asp:TextBox ID="txtBeneficiaries" TextMode="MultiLine" Height="50px" Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVBeneficiareis" runat ="server" ControlToValidate ="txtBeneficiaries" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Benefits</td><td><asp:TextBox ID="txtBenefits" TextMode="MultiLine" Height="50px" Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVBenefits" runat ="server" ControlToValidate ="txtBenefits" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>


<tr>
<td>ContactDetails</td><td><asp:TextBox ID="txtContactDetails" TextMode="MultiLine" Height="50px" Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVContactDetails" runat ="server" ControlToValidate ="txtContactDetails" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>GovtOrderNo</td><td><asp:TextBox ID="txtOrderNo"  Width ="300px" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVGovtOrderNo" runat ="server" ControlToValidate ="txtOrderNo" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>DateOfReg</td><td><asp:TextBox ID="txtDate" runat ="server" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDate">
    </cc1:CalendarExtender>
    </td><td><asp:RequiredFieldValidator ID="RFVDate" runat ="server" ControlToValidate ="txtDate" ErrorMessage="*"></asp:RequiredFieldValidator></td>
</tr>

<tr><td></td>
<td><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnReset" runat ="server" 
        Text="Reset" CausesValidation ="false" onclick="btnReset_Click" /></td>
</tr>

</table>
</fieldset>
</center>
</asp:Content>

