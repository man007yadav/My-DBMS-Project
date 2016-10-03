<%@ Page Language="C#" MasterPageFile="~/AgricultureOfficer/OfficerMasterPage.master" Theme="Theme1" AutoEventWireup="true" EnableEventValidation="false" CodeFile="frmProfileManagement.aspx.cs" Inherits="AgricultureOfficer_frmProfileManagement" Title="Untitled Page" %>

<%@ Register src="../UserControls/BindImage.ascx" tagname="BindImage" tagprefix="uc1" %>

<%@ Register src="../UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Agricultural Officer Profile</h3>
<br />
<br />
<fieldset id="Field1" runat ="server" style="width: 580px">
<table>
<tr><td>
Officer Id</td><td><asp:Label ID="lblOfficerId" runat ="server" ></asp:Label></td></tr>
<tr><td>FirstName</td><td><asp:TextBox ID="txtFirstName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVFirstName" runat ="server" ControlToValidate ="txtFirstName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td><td>MiddleName</td><td><asp:TextBox ID="txtMiddleName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVMiddleName" runat ="server" ControlToValidate ="txtMiddleName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>
<tr><td>LastName</td><td><asp:TextBox ID="txtLastName" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVLastName" runat ="server" ControlToValidate ="txtLastName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td><td>Address</td><td><asp:TextBox ID="txtAddress" runat ="server" TextMode="MultiLine" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVAddress" runat ="server" ControlToValidate ="txtAddress" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
</tr>

<tr><td>PhoneNo</td><td><asp:TextBox ID="txtPhone" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVPhone" runat ="server" ControlToValidate ="txtPhone" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
<td></td><td>EmailId</td><td><asp:TextBox ID="txtEmailId" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVEmailId" ErrorMessage ="*" runat ="server" ControlToValidate ="txtEmailId"></asp:RequiredFieldValidator></td>
</tr>
</table>
</fieldset>
<h4>Change Photograph</h4>
<fieldset id="field2" runat ="server" style="width: 580px">
<table><tr><td>
    <uc2:BrowseImage ID="BrowseImage1" runat="server" />
    </td></tr></table>
</fieldset>
<fieldset id="field3" runat ="server" style="width: 580px">
<table><tr><td><asp:Button ID="btnUpdate" runat ="server" Text="Update" 
        onclick="btnUpdate_Click" /><asp:Button ID="btnReset" runat ="server" Text ="Reset" CausesValidation ="false" OnClientClick="clearForm(this.form);"  /></td></tr></table>
</fieldset>
</center>

</asp:Content>

