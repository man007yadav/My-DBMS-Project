<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1" AutoEventWireup="true" CodeFile="frmInsertInsuranceDetails.aspx.cs" Inherits="Administrator_frmInsertInsuranceDetails" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <h3 style="text-decoration: underline; text-align: center">
            Insert Fertilizer Details</h3>
        <br />
        <fieldset id="field1" runat="server" style="width: 580px">
            <legend>Insert Insurance Details</legend>
            <table>
                <tr>
                    <td>
                        Fertizer Name</td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVLoanName" runat="server" ControlToValidate="txtTitle"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                
                <tr>
                    <td>
                        Type
                    </td>
                    <td>
                        <asp:TextBox ID="txtType" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVType" runat="server" ControlToValidate="txtType"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Suitable for crop</td>
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
                        Suitable for soil</td>
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
                        Contents&nbsp;
                    </td>
                    <td>
                        <asp:TextBox ID="txtProcedure" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVProcedure" runat="server" ControlToValidate="txtProcedure"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Price</td>
                    <td>
                        <asp:TextBox ID="txtDate" runat="server" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDateOfStart" runat="server" ControlToValidate="txtDate"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Available Address</td>
                    <td>
                        <asp:TextBox ID="txtOthers" runat="server" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVOthers" runat="server" ControlToValidate="txtOthers"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                
                <tr>
                    <td>
                        Other Information
                    </td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Height="50px" Width="300px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVAddress" runat="server" ControlToValidate="txtAddress"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
            </table>
        </fieldset>
        <br />
        
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

