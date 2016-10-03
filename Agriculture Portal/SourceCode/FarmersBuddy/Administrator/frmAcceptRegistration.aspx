<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" AutoEventWireup="true" CodeFile="frmAcceptRegistration.aspx.cs" Inherits="Administrator_frmAcceptRegistration" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">New Registered Persons</h3>
<br /><br />
<table>
<tr><td>
    <asp:GridView ID="grvNewRegister" runat ="server" 
        AutoGenerateColumns ="False" onrowediting="grvNewRegister_RowEditing" Height="69px" Width="350px" >
<Columns >
<asp:BoundField HeaderText ="Std_Agr_Id" DataField="Std_Agr_Id" 
        SortExpression="Std_Agr_Id"  />

<asp:BoundField HeaderText="UserName" DataField ="UserName" 
        SortExpression="UserName"   />

<asp:BoundField HeaderText ="Role" DataField ="Role" SortExpression="Role" />

<asp:CommandField ShowEditButton="true" EditText="Accept Registration.." />
</Columns>
</asp:GridView>
        </td></tr>
</table>
</center>
</asp:Content>

