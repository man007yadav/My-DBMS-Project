<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" EnableEventValidation="false" Theme="Theme1" AutoEventWireup="true" CodeFile="frmAgricultureOfficerReg.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register src="UserControls/BrowseImage.ascx" tagname="BrowseImage" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <center>
        <h3 style="text-align: center; text-decoration: underline;">
            Agriculture Officer Registration Page</h3>
            <fieldset id="Field1" runat ="server" 
            style="border-style: groove; width: 600px; margin-left: 23px" >
        <table>
            <tr>
                <td>
                    FirstName
                </td>
                <td>
                    <asp:TextBox ID="txtFName" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RFVFName" runat ="server" ControlToValidate ="txtFName" ErrorMessage ="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    MiddleName
                </td>
                <td>
                    <asp:TextBox ID="txtMName" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat ="server" ControlToValidate ="txtMName" ErrorMessage ="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    LastName
                </td>
                <td>
                    <asp:TextBox ID="txtLName" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat ="server" ControlToValidate ="txtLName" ErrorMessage ="*"></asp:RequiredFieldValidator>
                </td>
                <td>
                    DateOfBirth
                </td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                    <cc1:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" Enabled="True"
                        TargetControlID="txtDOB">
                    </cc1:CalendarExtender>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat ="server" ControlToValidate ="txtDOB" ErrorMessage ="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Email Id
                </td>
                <td>
                    <asp:TextBox ID="txtEmailId" runat="server"></asp:TextBox></td>
                    <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat ="server" ControlToValidate ="txtEmailId" ErrorMessage ="*"></asp:RequiredFieldValidator>
                    </td>
                </td>
                <td>
                    Address
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat ="server" ControlToValidate ="txtAddress" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>
                    PhoneNo
                </td>
                <td>
                    <asp:TextBox ID="txtPhoneNo" runat="server"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat ="server" ControlToValidate ="txtPhoneNo" ErrorMessage ="*"></asp:RequiredFieldValidator>
                </td>  
                <td>Experience</td>
                <td><asp:TextBox ID="txtExperience" runat ="server" ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat ="server" ControlToValidate ="txtExperience" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                          
                
            </tr>
        </table>
        </fieldset>
        <fieldset id="Field2" runat ="server" 
            style="border-style: groove; width:600px; margin-left: 23px" >
        <h4 style="text-decoration: underline">Upload Your Photo Here</h4>
        <table>
        <tr><td>
        
            <uc1:BrowseImage ID="BrowseImage1" runat="server" />
        
        </td></tr>
        </table>
        </fieldset>
        <fieldset id="Feild3" runat ="server" 
            style="border-style: groove; width:600px; margin-left: 23px">
        <h4 style ="text-decoration:underline">Login Information</h4>
        <table>
        <tr><td>UserName</td><td><asp:TextBox ID="txtUserName" runat ="server" ></asp:TextBox></td>
        
        <td><asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat ="server" ControlToValidate ="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td><td>Password</td><td><asp:TextBox ID="txtPassword" runat ="server" 
                TextMode="Password" MaxLength="8"  ></asp:TextBox></td>
                <td><asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat ="server" ControlToValidate ="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr><td>Confirm Password</td><td><asp:TextBox ID="txtConform" runat ="server" MaxLength="8" 
                TextMode="Password" ></asp:TextBox></td><td></td><td></td>
        <td><asp:Button ID="btnSubmit" runat ="server" Text ="Submit" 
                onclick="btnSubmit_Click" /><asp:Button ID="btnClear" runat ="server" 
                Text ="Clear" OnClientClick="clearForm(this.form);"  /></td>
        </tr>
        </table>
        <br /><br />
        </fieldset>
    </center>
</asp:Content>

