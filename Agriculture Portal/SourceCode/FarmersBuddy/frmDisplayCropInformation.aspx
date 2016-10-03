<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmDisplayCropInformation.aspx.cs" Inherits="frmDisplayCropInformation" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Crops Information</h3>
<br />
<fieldset id="Field3" runat ="server" style="width:600px" >
<table>
<tr><td>
    <img src="Images/karnataka-agriculture-map.jpg" /></td></tr>
</table>
</fieldset>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Crops Information</legend>
<table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">

            <tr>
                <td bgcolor="#E7B642">
                    <br />
                    <center >
                        Crops Information </center>
                </td>
            </tr>
                        <tr>
                <td align="center" >
                    <br />
                    <br />
                    <table >
                   
                    <tr align="center" ><td style="height: 17px"></td><td align ="center" 
                            style="height: 17px" >Select Crop Type</td></tr>
                             <tr>
                             
                            <td></td>
                            <td align="center" >
                                <asp:DropDownList ID="ddlCropType" runat="server" Width="150px" 
                                    AutoPostBack="True" 
                                    onselectedindexchanged="ddlCropType_SelectedIndexChanged" ></asp:DropDownList>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="ddlCropType" ID="RequiredFieldValidator3" 
                                    runat="server" ErrorMessage="*" InitialValue="--Select Scheme--"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr align="center" ><td style="height: 17px"></td><td align ="center" 
                            style="height: 17px" >Select Crop Name</td></tr>
                            <tr><td></td>
                            <td align="center" ><asp:DropDownList ID="ddlCropName" runat ="server" 
                                    Width="150px" AutoPostBack="True" 
                                    onselectedindexchanged="ddlCropName_SelectedIndexChanged" ></asp:DropDownList></td>
                            <td><asp:RequiredFieldValidator ID="RFVCropName" runat ="server" ControlToValidate ="ddlCropName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>
                            </tr>
                    
                   
                        
                        
                        
                        </table>
                    <br />
                    <fieldset id="Field2" runat ="server" >
                    <table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
                    <tr>
                    <td bgcolor="#E7B642" colspan="2">
                    <br />
                    <center ><asp:Label ID="lblCropName" runat ="server" ></asp:Label></center>
                </td>
                    </tr>
                    <tr>
                    <td>Climate</td><td style="width: 247px"><asp:Label ID="lblClimate" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td>Soil</td><td style="width: 247px"><asp:Label ID="lblSoil" runat ="server" ></asp:Label></td>
                    </tr>
                    
                    <tr>
                    <td>Rotation</td><td style="width: 247px"><asp:Label ID="lblRotation" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td>Irrigation</td><td style="width: 247px"><asp:Label ID="lblIrrigation" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td>Yield</td><td style="width: 247px"><asp:Label ID="lblYield" runat ="server" ></asp:Label></td>
                    </tr>
                    <tr>
                    <td>Storage</td><td style="width: 247px"><asp:Label ID="lblStorage" runat ="server" ></asp:Label></td>
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

