<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmDisplayGovtSchemes.aspx.cs" Inherits="frmDisplayGovtSchemes" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Government Schemes  
    Agricultural Sector</h3>
<br />
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Government Schemes</legend>
<table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">

            <tr>
                <td bgcolor="#E7B642">
                    <br />
                    <center >
                        Government Schemes </center>
                </td>
            </tr>
                        <tr>
                <td align="center" >
                    <br />
                    <br />
                    <table >
                   
                    <tr align="center" ><td style="height: 17px"></td><td align ="center" 
                            style="height: 17px" >Select Scheme</td></tr>
                             <tr>
                             
                            <td></td>
                            <td align="center" >
                                <asp:DropDownList ID="ddlSchemeName" runat="server" Width="370px" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="ddlSchemeName_SelectedIndexChanged"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="ddlSchemeName" ID="RequiredFieldValidator3" 
                                    runat="server" ErrorMessage="*" InitialValue="--Select Scheme--"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                    
                   
                        
                        
                        
                        </table>
                    <br />
                    <fieldset id="Field2" runat ="server" >
                    <table border="1" style="border-color: #5A5D5A; border-width: 1px; width: 100%;">
                    <tr>
                    <td bgcolor="#E7B642" colspan="2">
                    <br />
                    <center ><asp:Label ID="lblSchemeName" runat ="server" ></asp:Label></center>
                </td>
                    </tr>
                    
                    <tr>
                    <td style="width: 185px">Objective</td><td><asp:Label ID="lblObjective" runat ="server" ></asp:Label></td>
                    </tr>
                    
                    <tr>
                    <td style="width: 185px; height: 20px;">Eligibility</td><td style="height: 20px"><asp:Label ID="lblEligibility" runat ="server" ></asp:Label></td>
                    </tr>
                    
                    <tr>
                    <td style="width: 185px; height: 20px">Beneficiaries</td><td style="height: 20px"><asp:Label ID="lblBeneficiaries" runat ="server" ></asp:Label></td>
                    </tr>
                    
                    <tr>
                    <td style="width: 185px">Benefits</td><td><asp:Label ID="lblBenefits" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="width: 185px; height: 20px">DateOfRegistration</td><td style="height: 20px"><asp:Label ID="lblDateOfStart" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="width: 185px">ContactAddress</td><td><asp:Label ID="lblAddress" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="width: 185px">Govt.Order No</td><td><asp:Label ID="lblGovtOrder" runat ="server" ></asp:Label></td>
                    </tr>
                    
                                        <tr>
                <td bgcolor="#E7B642" colspan="2">
                    <br />
                </td>
            </tr>
                    </table> 
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td>
                    <center>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td bgcolor="#E7B642">
                    <br />
                </td>
            </tr>
        </table>
</fieldset>
</center>
</asp:Content>

