<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmDisplayInsuranceSchemes.aspx.cs" Inherits="frmDisplayInsuranceSchemes" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Fertilsers Info</h3>
<br />
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Details of Fertilisers</legend>
<table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">

            <tr>
                <td bgcolor="#E7B642" style="width: 566px">
                    <br />
                    <center >
                        Fertilisers Details </center>
                </td>
            </tr>
                        <tr>
                <td align="center" style="width: 566px" >
                    <br />
                    <br />
                    <table >
                   
                    <tr align="center" ><td style="height: 17px"></td><td align ="center" 
                            style="height: 17px" >Select Fertiliser</td></tr>
                             <tr>
                             
                            <td></td>
                            <td align="center" >
                                <asp:DropDownList ID="ddlSchemeName" runat="server" Width="370px" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="ddlSchemeName_SelectedIndexChanged"></asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="ddlSchemeName" ID="RequiredFieldValidator3" 
                                    runat="server" ErrorMessage="*" InitialValue="--Select Fertiliser--"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                    
                   
                        
                        
                        
                        </table>
                    <br />
                    <fieldset id="Field2" runat ="server" >
                    <table width="450px" border="1" style="border-color: #5A5D5A; border-width: 1px;">
                    <tr>
                    <td bgcolor="#E7B642" colspan="2">
                    <br />
                    <center ><asp:Label ID="lblInsuranceName" runat ="server" ></asp:Label></center>
                </td>
                    </tr>
                    <tr>
                    <td style="height: 24px; width: 31%">Type</td><td style="width: 170px; height: 24px;"><asp:Label ID="lblType" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="height: 18px; width: 31%">Suitable for soil</td><td style="width: 170px; height: 18px;"><asp:Label ID="lblObjective" runat ="server" ></asp:Label></td>
                    </tr>
                    
                    <tr>
                    <td style="height: 32px; width: 31%">Suitable for crop</td><td style="width: 170px; height: 32px;"><asp:Label ID="lblEligibility" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="height: 32px; width: 31%">Contents of fertilizer</td><td style="width: 170px; height: 32px;"><asp:Label ID="lblApply" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="height: 27px; width: 31%">Price</td><td style="width: 170px; height: 27px;"><asp:Label ID="lblDateOfStart" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="height: 28px; width: 31%">Available Address</td><td style="width: 170px; height: 80px;"><asp:Label ID="lblAddress" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td style="height: 26px; width: 31%">Other information</td><td style="width: 170px; height: 80px;"><asp:Label ID="lblOthers" runat ="server" ></asp:Label></td>
                    </tr>
                    
                                        <tr>
                <td bgcolor="#E7B642" colspan="2" style="height: 29px">
                    <br />
                </td>
            </tr>
                    </table> 
                    </fieldset>
                </td>
            </tr>
            <tr>
                <td style="width: 566px; height: 31px;">
                    <center>
                        <asp:Label ID="lblMsg" runat="server"></asp:Label></center>
                </td>
            </tr>
            <tr>
                <td bgcolor="#E7B642" style="width: 566px">
                    <br />
                </td>
            </tr>
        </table>
</fieldset>
</center>
</asp:Content>

