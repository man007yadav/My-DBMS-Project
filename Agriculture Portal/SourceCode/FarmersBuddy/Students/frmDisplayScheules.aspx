<%@ Page Language="C#" MasterPageFile="~/Students/StudentMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmDisplayScheules.aspx.cs" Inherits="Students_frmDisplayScheules" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-decoration: underline; text-align: center">Displaying Schedules for Online Training</h3><br /><br />
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Online Training Schedules</legend>
<table>
<tr>
<td><asp:GridView ID="GRVScheduels" runat ="server" AutoGenerateColumns ="false" EmptyDataText="No Schedule Announced" ShowHeader="false" Height="72px" Width="417px"  >
<Columns>
<asp:BoundField DataField="ScheduleId" />
<asp:BoundField DataField ="Title" />
<asp:BoundField DataField="ArrangedDate" />
<asp:BoundField DataField ="Duration" />
<asp:BoundField DataField="Description" />
</Columns>
</asp:GridView></td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="width:600px">
<legend>Visit Online Training</legend>
<table>
    <!--
<tr align="right" >
<td align="right" ><asp:Button ID="btnSubmit" runat ="server" 
        Text="Click Here For Online Training.." CausesValidation ="false" 
        PostBackUrl="~/Students/frmOnlineTraining.aspx" 
        onclick="btnSubmit_Click"  /></td>
</tr>
    -->
      </td>
                                                                        <td>
                                                                            

                                                                         <a href="#">
                                                                            
                                                                           <font face="arial"
                                                                                size="1"><b>
                                                                                    <a class="btn btn-default" href="http://accessagriculture.org/">
                                                                                   Click Here For Online Training.
                                                                                </b></font><br>
                                                                             <br>
                                                                        </td>
</table>
</fieldset>

</center>
</asp:Content>

