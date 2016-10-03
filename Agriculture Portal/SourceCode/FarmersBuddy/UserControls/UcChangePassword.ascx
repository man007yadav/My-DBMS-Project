<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UcChangePassword.ascx.cs"
    Inherits="UserControls_UcChangePassword" %>
<style type="text/css">
    .style5
    {
        font-size: large;
        font-weight: bold;
        color: White;
        text-align: center;
    }
    .style6
    {
        height: 25px;
    }
    .style7
    {
        height: 25px;
        font-weight: bold;
        font-size: x-small;
        font-family: Verdana;
        color: #E7B642;
    }
    .style8
    {
        font-size: x-small;
        font-weight: bold;
        font-family: Verdana;
        color: #E7B642;
    }
</style>
<center>
    <table border="1" style="border-color: #5A5D5A; border-width: 1px; width: 49%;">
        <tr>
            <td bgcolor="#E7B642" class="style5">
                Change Password
            </td>
        </tr>
        <tr>
            <td>
                <br />
                <center>
                    <table>
                        <tr>
                            <td style="text-align: right" class="style7">
                                Login Name
                            </td>
                            <td style="text-align: left" class="style6">
                                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                            </td>
                            <td class="style6">
                                <asp:RequiredFieldValidator ControlToValidate="txtUsername" ID="RequiredFieldValidator1"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td class="style6">
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="style8">
                               Old Password
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtPassword" ID="RequiredFieldValidator2"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: right" class="style8">
                               New Password
                            </td>
                            <td style="text-align: left">
                                <asp:TextBox ID="txtNewPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ControlToValidate="txtNewPassword" ID="RequiredFieldValidator3"
                                    runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                        <td>
                        
                        </td>
                        <td>
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                                onclick="btnSubmit_Click" />
                            &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnClear" runat="server" Text="Clear" 
                                CausesValidation="False" />
                        </td>
                        <td></td><td></td>
                        </tr>
                        
                    </table>
                </center>
            </td>
        </tr>
    </table>
    <asp:Label ID="lblMsg" runat="server" 
        style="font-weight: 700; font-size: x-small; font-family: Verdana; color: #FF0000" ></asp:Label>
</center>
