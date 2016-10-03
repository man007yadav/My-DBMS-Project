<%@ Page Language="C#" MasterPageFile="~/AgricultureOfficer/OfficerMasterPage.master" AutoEventWireup="true" Theme="Theme1" CodeFile="frmOnlineTrainingSchedule.aspx.cs" Inherits="AgricultureOfficer_frmOnlineTrainingSchedule" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<%@ Register src="../UserControls/BrowseVideoFile.ascx" tagname="BrowseVideoFile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">Release Online Training Schedule</h3>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Online Training Info</legend><br />
<table>
<tr>
<td>Training Name</td><td><asp:TextBox ID="txtTitle" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVTitle" runat ="server" ControlToValidate="txtTitle" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>ScheduleDate</td><td><asp:TextBox ID="txtDate" runat ="server" ></asp:TextBox>
    <cc1:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
        Enabled="True" TargetControlID="txtDate">
    </cc1:CalendarExtender>
    </td><td><asp:RequiredFieldValidator ID="RFVDate" runat ="server" ControlToValidate ="txtDate" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr>
<td>Duration</td><td><asp:TextBox ID="txtDuration" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVDuration" runat ="server" ControlToValidate ="txtDuration" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td>
<td>Description</td><td><asp:TextBox ID="txtDescription" runat ="server" TextMode="MultiLine" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVDescription" ErrorMessage ="*" runat ="server" ControlToValidate="txtDescription"></asp:RequiredFieldValidator></td>
</tr>
</table>
</fieldset><br />
<fieldset id="Field2" runat ="server" style="width:600px">
<legend>Upload Training Video</legend>
<table>
<tr><td>
    <uc1:BrowseVideoFile ID="BrowseVideoFile1" runat="server" />
    </td></tr>
</table>
</fieldset>
<fieldset id="Fieldset1" runat ="server" style="width:600px">
<table>
<tr><td align="right" ><asp:Button ID="btnSubmit" runat ="server" Text="Submit" 
        onclick="btnSubmit_Click" /><asp:Button ID="btnReset" runat ="server" 
        Text="Reset" CausesValidation ="false" onclick="btnReset_Click" /></td></tr>
</table>
</fieldset> 
</center>
</asp:Content>

