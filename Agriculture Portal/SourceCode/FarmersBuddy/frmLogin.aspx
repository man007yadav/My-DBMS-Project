<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmLogin.aspx.cs" Inherits="frmLogin" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<center>
        
&nbsp;<br /><br /><br /><br /><br />
          
        
        <h6 style="font-size:20px">Farmers' Buddy Portal Login</h6>
        <p></p>
        
<fieldset id="Field1" runat ="server" style="border-style: Double; width: 600px" >
    <table>
     
       

    <tr>
    <td>UserName

    </td>
    <td style="width: 140px">
        <asp:TextBox ID="txtUserName" runat="server" ></asp:TextBox></td>
    <td style="font-size: 11px;">
        <asp:RequiredFieldValidator ID="RFVUserName" runat ="server" ControlToValidate="txtUserName" ErrorMessage ="*"></asp:RequiredFieldValidator></td>

</tr>

<tr>
    <td>Password

    </td>
    <td>
        <asp:TextBox ID="txtPassword" runat ="server" 
    
        MaxLength="8" TextMode="Password" ></asp:TextBox></td><td style="font-size: 11px;"> 
            <asp:RequiredFieldValidator ID="RFVPassword" runat ="server" ControlToValidate ="txtPassword" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td colspan ="3" align="center" ><asp:Button ID="btnSubmit" runat ="server" 
    
        Text ="Login" onclick="btnSubmit_Click" /><asp:Button ID="btnReset" 
        runat ="server" Text ="Reset" CausesValidation ="false" 
        onclick="btnReset_Click"  /></td></tr>
        <tr align="right" >
        <td colspan="2" align="right" ><asp:LinkButton ID="lnkOfficerReg" runat ="server" CausesValidation="false" PostBackUrl="~/frmAgricultureOfficerReg.aspx" >Officer Registration</asp:LinkButton></td>
        </tr>
        <tr align="right" >
        <td colspan="2" align="right" ><asp:LinkButton ID="lnkStudentReg" runat ="server" CausesValidation="false" PostBackUrl="~/frmStudentRegistration.aspx" > Farmer Registration</asp:LinkButton></td>
        </tr>
        
        

<tr>
<td>
<p></p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;  
   

</p><p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

</td>
</tr>
</table>
</fieldset>

</center>
</asp:Content>

