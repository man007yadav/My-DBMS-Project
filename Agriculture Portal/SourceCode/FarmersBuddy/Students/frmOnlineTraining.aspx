<%@ Page Language="C#" MasterPageFile="~/Students/StudentMasterPage.master" AutoEventWireup="true" CodeFile="frmOnlineTraining.aspx.cs" Inherits="Students_frmOnlineTraining" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">Welcome to OnLine Training</h3><br />
<fieldset id="Field0" runat ="server" style="width:600px">
<legend>GuideLines for Online Training</legend>
<p>Online Education provides the students with anytime/anyplace instructions. Unlike the face-to-face, oncampus
classroom – our time/our place – or video or face-to-face distance delivery – our time/their place
– online education is a method of course delivery unbound by time or location allowing students to access
instruction from a computer via the internet, 24 hours a day, seven days a week.</p>
<p>This should identify the course as fitting into a definite program, identifying the
course rotation and delivery timelines relative to online format. It should further identify the Training goals
and objectives</p>
<p>This is a very important item and is often over looked in traditional courses, but
cannot be overlooked in online Training. Every synchronous chat, every synchronous activity, electronic
office hours, all direct communication need to be planned and identified.</p>
<p>This is a very important item and is often over looked in traditional videos, but
cannot be overlooked in online education. Every synchronous chat, every synchronous activity, electronic
office hours, all direct communication need to be planned and identified.</p>
</fieldset>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Training Classes For Today</legend>
<table>
<tr><td style="width: 308px"><asp:GridView ID="GRVTraining" runat ="server" AutoGenerateColumns="false" 
        ShowHeader="false" onrowediting="GRVTraining_RowEditing" Width="326px" >
<Columns>
<asp:BoundField DataField="ScheduleId" />
<asp:BoundField DataField="Title" />
<asp:BoundField DataField="ArrangedDate" />
<asp:CommandField EditText="PlayVideo" ShowEditButton ="true" />

</Columns>
    <EditRowStyle Font-Bold="True" />
</asp:GridView></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

