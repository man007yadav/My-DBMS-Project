<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"
    AutoEventWireup="true" CodeFile="frmCropInformation.aspx.cs" Inherits="Administrator_frmCropInformation"
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3 style="text-decoration: underline; text-align: center">
            Insert Major Crop Information</h3>
        <fieldset id="Field1" runat="server" style="width: 580px">
            <legend>Crop Types</legend>
            <table>
                <tr>
                    <td>
                        CropTypeName
                    </td>
                    <td>
                        <asp:TextBox ID="txtTypeName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVTypeName" runat="server" ControlToValidate="txtTypeName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Description
                    </td>
                    <td>
                        <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDescription" runat="server" ControlToValidate="txtDescription"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" />
                        <asp:Button ID="btn2" runat="server" Text="Click For Insert Crop Info" CausesValidation="false"
                            OnClick="btn2_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
        <br />
        <fieldset id="Field2" runat="server" style="width: 580px" visible="false">
            <legend>Crop Details</legend>
            <table>
                <tr>
                    <td>
                        CropName
                    </td>
                    <td>
                        <asp:TextBox ID="txtCropName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVCropName" runat="server" ControlToValidate="txtCropName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Climate
                    </td>
                    <td>
                        <asp:TextBox ID="txtClimate" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVClimate" runat="server" ControlToValidate="txtClimate"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Soil
                    </td>
                    <td>
                        <asp:TextBox ID="txtSoil" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVSoil" runat="server" ControlToValidate="txtSoil"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Rotation
                    </td>
                    <td>
                        <asp:TextBox ID="txtRotation" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVRotation" runat="server" ControlToValidate="txtRotation"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Irrigation
                    </td>
                    <td>
                        <asp:TextBox ID="txtIrrigation" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVIrrigation" runat="server" ControlToValidate="txtIrrigation"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Yield
                    </td>
                    <td>
                        <asp:TextBox ID="txtYield" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVYield" runat="server" ControlToValidate="txtYield"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        Storage
                    </td>
                    <td>
                        <asp:TextBox ID="txtStorage" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVStorage" runat="server" ControlToValidate="txtStorage"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        CropTypeId
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlCropType" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVCropType" runat="server" ControlToValidate="ddlCropType"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                    </td>
                    <td>
                        <asp:Button ID="btn3" runat="server" Text="Submit" onclick="btn3_Click" />
                        <asp:Button ID="btnReset" runat="server"
                            Text="Reset" CausesValidation="false" onclick="btnReset_Click" />
                        <asp:Button ID="btnBack" runat="server" Text="Back" CausesValidation="false" OnClick="btnBack_Click" />
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
