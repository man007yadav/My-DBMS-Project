<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" EnableEventValidation="false"  Theme="Theme1"
    AutoEventWireup="true" CodeFile="frmAddGovtLoans.aspx.cs" Inherits="Administrator_frmAddGovtLoans"
    Title="Untitled Page" %>

<%@ Register Src="../UserControls/BrowseDocFile.ascx" TagName="BrowseDocFile" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3 style="text-decoration: underline; text-align: center">
            Insert Government Loan Details</h3>
        <br />
        <fieldset id="field1" runat="server" style="width: 580px">
            <legend>Insert Loan Details</legend>
            <table>
                <tr>
                    <td>
                        LoanName
                    </td>
                    <td>
                        <asp:TextBox ID="txtLoanName" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVLoanName" runat="server" ControlToValidate="txtLoanName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Objective
                    </td>
                    <td>
                        <asp:TextBox ID="txtObjective" TextMode="MultiLine" runat="server" Height="50px"
                            Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVObjective" runat="server" ControlToValidate="txtObjective"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Coverage
                    </td>
                    <td>
                        <asp:TextBox ID="txtCoverage" runat="server" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVCoverage" runat="server" ControlToValidate="txtCoverage"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Eligibility
                    </td>
                    <td>
                        <asp:TextBox ID="txtEligibility" runat="server" TextMode="MultiLine" Height="50px"
                            Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVEligibilty" runat="server" ControlToValidate="txtEligibility"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Terms
                    </td>
                    <td>
                        <asp:TextBox ID="txtTerms" runat="server" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVTerms" runat="server" ControlToValidate="txtTerms"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Repayment
                    </td>
                    <td>
                        <asp:TextBox ID="txtRepayment" runat="server" TextMode="MultiLine" Height="50px"
                            Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVRepayments" runat="server" ControlToValidate="txtRepayment"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        RateOfInterest
                    </td>
                    <td>
                        <asp:TextBox ID="txtRoI" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVROI" runat="server" ControlToValidate="txtRoI"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Others
                    </td>
                    <td>
                        <asp:TextBox ID="txtOthers" runat="server" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVOthers" runat="server" ControlToValidate="txtOthers"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
        <fieldset id="Field2" runat="server" style="width: 580px">
            <legend>Upload Govt Loan File</legend>
            <table>
                <tr>
                    <td>
                        <uc1:BrowseDocFile ID="BrowseDocFile1" runat="server" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field3" runat="server" style="width: 580px">
            <legend>Submit Data</legend>
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" />
                        <asp:Button ID="btnReset" runat="server" Text="Reset" CausesValidation="false" OnClientClick="clearForm(this.form);" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
