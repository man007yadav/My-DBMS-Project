<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1"
    AutoEventWireup="true" CodeFile="frmInsertZones.aspx.cs" Inherits="Administrator_frmZones" EnableEventValidation="false" 
    Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <br />
        <h3 style="text-decoration: underline; text-align: center">
            Insert Zonal Details of Karnataka State</h3>
        <br />
        <br />
        <br />
        <fieldset id="Field1" runat="server" style="width: 580px">
            <table>
                <tr>
                    <td>
                        Zonal Name
                    </td>
                    <td>
                        <asp:TextBox ID="txtZonalName" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVZonalName" runat="server" ControlToValidate="txtZonalName"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        Districts
                    </td>
                    <td>
                        <asp:TextBox ID="txtDistricts" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVDistricts" runat="server" ControlToValidate="txtDistricts"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        HeadQuarter
                    </td>
                    <td>
                        <asp:TextBox ID="txtHeadQuarter" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVHead" runat="server" ControlToValidate="txtHeadQuarter"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        GeoArea
                    </td>
                    <td>
                        <asp:TextBox ID="txtGeoArea" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVGeo" runat="server" ControlToValidate="txtGeoArea"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        NoOfMandals
                    </td>
                    <td>
                        <asp:TextBox ID="txtNoOfMandals" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVMandsls" runat="server" ControlToValidate="txtNoOfMandals"
                            ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                    <td>
                    </td>
                    <td>
                        NoOfRegions
                    </td>
                    <td>
                        <asp:TextBox ID="txtNoOfRegions" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RFVRegions" ControlToValidate="txtNoOfRegions" ErrorMessage="*"
                            runat="server"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="field2" runat="server" style="width: 580px">
            <table>
                <tr>
                    <td>
                        <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                            onclick="btnSubmit_Click" /><asp:Button ID="btnReset"
                            runat="server" CausesValidation="false" Text="Reset" OnClientClick="clearForm(this.form);" /></td>
                                                                                              
                </tr>
                
                <tr><td><asp:HyperLink ID="hyp1" runat="server" Text="VisitZones" NavigateUrl="~/Administrator/frmZoneDetails.aspx"></asp:HyperLink></td></tr>
                
            </table>
        </fieldset>
    </center>
</asp:Content>
