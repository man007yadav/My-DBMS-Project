<%@ Page Language="C#" MasterPageFile="~/Students/StudentMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmPostQuestion.aspx.cs" Inherits="Students_frmPostQuestion" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">Post A Question</h3><br /><br />
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Ask A Question Here</legend>
<table>
<tr>
<td><asp:TextBox ID="txtQuestion" runat ="server" Width="595px" Height="25px" ></asp:TextBox></td>
</tr>
<tr><td align="right" ><asp:Button ID="btnSubmit" runat ="server" 
        Text="Post Question" onclick="btnSubmit_Click" /></td></tr>
</table>
</fieldset>
<br />
<fieldset id="Field2" runat ="server" style="width:600px">
<table>
<tr><td>
    <img src="../Images/a1.gif.gif" height="200px" width="250px" />
    <img src="../Images/fruits-5[1].gif" height="200px" width="250px" />
    </td></tr>
</table>
</fieldset>
</center>
</asp:Content>

