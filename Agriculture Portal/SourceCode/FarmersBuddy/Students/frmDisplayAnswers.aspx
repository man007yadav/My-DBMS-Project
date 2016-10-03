<%@ Page Language="C#" MasterPageFile="~/Students/StudentMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmDisplayAnswers.aspx.cs" Inherits="Students_frmDisplayAnswers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Your Posted Question</legend>
<table style="width: 356px">
<tr><td style="height: 158px; width: 350px"><asp:GridView ID="GRVPostedQuestions" runat ="server" 
        AutoGenerateColumns="false" EmptyDataText="No Question Posted By You!" 
        ShowHeader="false" GridLines="None" 
        onrowcommand="GRVPostedQuestions_RowCommand" Width="350px"  >
<Columns>
<asp:BoundField DataField ="Question"/>
<asp:TemplateField>
<ItemTemplate>
<asp:LinkButton ID="lnk1" runat ="server" Text ="Answers" CommandArgument='<%# Eval("QuestionId") %>'></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>
</Columns>
</asp:GridView></td></tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="width:600px" visible ="false" >
<legend >The List of Answers</legend>
<table>
<tr><td><asp:Label ID="lblQuestion" runat ="server" ></asp:Label></td></tr>
<asp:GridView ID="GRVAnswers" runat ="server" AutoGenerateColumns="false" 
        ShowHeader="false" GridLines="None" >
<Columns >
<asp:BoundField DataField="Answer" />
<asp:BoundField DataField ="DateOfAnswer" />
</Columns>
</asp:GridView>
</table>
</fieldset>

</center>
</asp:Content>

