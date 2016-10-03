<%@ Page Language="C#" MasterPageFile="~/Students/StudentMasterPage.master" AutoEventWireup="true" CodeFile="frmDisplayVideo.aspx.cs" Inherits="Students_frmDisplayVideo" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Author Details for this Training Video</legend>
<table>
<tr>
<td><asp:DetailsView ID="DVAuthor" runat ="server" AutoGenerateRows="False" 
        GridLines="None" Width="153px" >
<Fields>
      <asp:TemplateField >
        <ItemTemplate>
        <asp:Image ID="img1" runat ="server" Height="70px" Width ="70px" ImageUrl='<%# "Handler.ashx?SNo=" + Eval("OfficerId") %>' />
        </ItemTemplate>
        </asp:TemplateField>

    <asp:BoundField DataField="OfficerId" HeaderText="OfficerId" 
        InsertVisible="False" ReadOnly="True" SortExpression="OfficerId" Visible ="false"    />
    <asp:BoundField DataField="FName" HeaderText="FName" SortExpression="FName" />
    <asp:BoundField DataField="MName" HeaderText="MName" SortExpression="MName" />
        
        <asp:BoundField DataField="Address" HeaderText="Address" 
        SortExpression="Address" />
    <asp:BoundField DataField="EmailId" HeaderText="EmailId" 
        SortExpression="EmailId" />
    <asp:BoundField DataField="PhoneNo" HeaderText="PhoneNo" 
        SortExpression="PhoneNo" />
  
    </Fields>
    
</asp:DetailsView>
    
    </td>
</tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="width:600px">
<legend>Watch the Video</legend><br />
<table>
<tr><td><asp:Label ID="lblVideo" runat ="server" ></asp:Label></td></tr>
<tr><td colspan ="2"><asp:GridView ID="GridView1" runat="server" BackColor="White" 
        BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        ForeColor="Black" GridLines="Vertical" AutoGenerateColumns="False" 
        PageSize="1">
        <footerstyle backcolor="#CCCC99" />
        <rowstyle backcolor="#F7F7DE" />
        <Columns>
            <asp:templatefield>
                <ItemTemplate>
                    <object id="player" classid="clsid:6BF52A52-394A-11D3-B153-00C04F79FAA6" 
                        height="250" width="300">
                        <param name="url" value='<%# "VideoHandler.ashx?id= " + Eval("ScheduleId") %>' />
                        <param name="showcontrols" value="true" />
                        <param name="autostart" value="true" />
                    </object>
                </ItemTemplate>
            </asp:templatefield>
        </Columns>
        <pagerstyle backcolor="#F7F7DE" forecolor="Black" horizontalalign="Right" />
        <selectedrowstyle backcolor="#CE5D5A" font-bold="True" forecolor="White" />
        <headerstyle backcolor="#6B696B" font-bold="True" forecolor="White" />
        <alternatingrowstyle backcolor="White" />
    </asp:GridView></td></tr>
</table>
</fieldset>
</center>
</asp:Content>

