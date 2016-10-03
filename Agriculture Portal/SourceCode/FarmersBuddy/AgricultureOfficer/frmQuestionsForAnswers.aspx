<%@ Page Language="C#" MasterPageFile="~/AgricultureOfficer/OfficerMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmQuestionsForAnswers.aspx.cs" Inherits="AgricultureOfficer_frmQuestionsForAnswers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%--<center>
        <h3 style="text-align: center; text-decoration: underline">Providing Solutions</h3>
        <br />
        <fieldset id="Field1" runat="server" style="width:600px">
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GrvQuestion" runat="server" AutoGenerateColumns="false" 
                            onrowcommand="GrvQuestion_RowCommand">
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <table>
                                            <tr>
                                                <td>
                                                    <asp:Image ID="Img1" runat="server" Height="40" Width="40" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="lblHeader" runat="server" Text="Resloved Question"></asp:Label>
                                                    <table>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblQuestion" runat="server" Text="<%#Eval('Question') %>"></asp:Label>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:LinkButton ID="lnkAnswer" runat="server" Text="Give Answer"></asp:LinkButton>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <fieldset id="Filed2" runat="server" style="width: 250px" visible="false">
                                                                    <table>
                                                                        <tr>
                                                                            <td>
                                                                                <asp:TextBox ID="txtAnswer" runat="server" TextMode="MultiLine" Height="190px" Width="190px"></asp:TextBox>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </fieldset>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>--%>
 <center>
  <h3 style="text-align: center; text-decoration: underline">Providing Solutions</h3>
  <fieldset id="Field1" runat ="server" style="width:600px">
  <legend>Questions</legend><br />
  <asp:GridView ID="GrvQuestions" runat ="server" AutoGenerateColumns ="false" 
          GridLines="None" BorderStyle="Ridge" 
          onrowcommand="GrvQuestions_RowCommand" >
  <Columns>
  <asp:BoundField DataField ="Std_Agr_Id" ReadOnly="true"  />
  
  <asp:TemplateField >
  
  <ItemTemplate>
 
  <asp:Image ID="Img1" runat ="server" Height="60px" Width ="60px" ImageUrl='<%# "Handler.ashx?ID=" + Eval("Std_Agr_Id")%>' />
  

  </ItemTemplate>
  </asp:TemplateField>
  
  <asp:BoundField DataField ="Question" />
  <asp:BoundField DataField="std_agar_id" Visible="false" />
  <asp:TemplateField >
  <ItemTemplate>
  <asp:Button ID="btnAnswer" runat ="server" Text ="Provide Answer" CommandArgument='<%# Eval("QuestionId") %>' />
  </ItemTemplate>
  </asp:TemplateField>
  </Columns>
  </asp:GridView>
  
  </fieldset>
  <fieldset id="Field2" runat ="server" style="width:600px" visible ="false" >
  <legend>Type Your Answer Here</legend><br />
  <table>
  <tr><td style="width: 602px"><asp:Label ID="lblQuestion" runat ="server" ></asp:Label></td></tr>
  <tr><td style="width: 602px"><asp:TextBox ID="txtAnswer" runat ="server" TextMode="MultiLine" Height="60px" Width ="590px"></asp:TextBox></td></tr>
  <tr><td align="right" style="width: 602px" ><asp:Button ID="btnAnswer" runat ="server" Text="Submit" 
          onclick="btnAnswer_Click" /></td></tr>
  </table>
  </fieldset>
 </center>

</asp:Content>

