<%@ Page Language="C#" MasterPageFile="~/Administrator/AdminMasterPage.master" Theme="Theme1" AutoEventWireup="true" CodeFile="frmNewArticles.aspx.cs" Inherits="Administrator_frmNewArticles" Title="Untitled Page" %>

<%@ Register src="../UserControls/BrowseDocFile.ascx" tagname="BrowseDocFile" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">Posting New Articles</h3>
<fieldset id="Field1" runat ="server" style="width:580px" >
<table>
<tr><td>Article Title</td><td><asp:TextBox ID="txtTitle" runat ="server" ></asp:TextBox></td><td><asp:RequiredFieldValidator ID="RFVTitle" runat ="server" ControlToValidate ="txtTitle" ErrorMessage ="*"></asp:RequiredFieldValidator></td></tr>
<tr><td>ContentFile</td><td>
    <uc1:BrowseDocFile ID="BrowseDocFile1" runat="server" />
    </td></tr>
    <tr><td align="left"  ><asp:Button ID="btnSubmit" runat ="server" 
            Text ="Post Article" onclick="btnSubmit_Click" /></td></tr>
</table>
</fieldset>
<br /><br />
<h3 style="text-align: center; text-decoration: underline">Posted Articles</h3>
<fieldset id="Field2" runat ="server" style="width:580px">
<table>
<tr><td>
    <asp:GridView ID="grvArticles" runat ="server" AutoGenerateColumns="False" 
        Font-Bold="True" Font-Size="X-Small" 
        EmptyDataText="No Article Found" 
         BorderStyle="Outset"  height="200px"
        Width="455px" onrowediting="grvArticles_RowEditing" >
<Columns>
  <asp:BoundField DataField ="ArticleId" HeaderText="Id" ShowHeader="true"  />
    <asp:BoundField DataField="TitleOfArticle" HeaderText="Title" ShowHeader="true"  />
    
    <asp:BoundField DataField="CreatedDate" HeaderText="Published Date" ShowHeader="true"   />      
 <asp:CommandField ShowEditButton="true" EditText="Show Article.." />
           
       
<%--<asp:TemplateField>
<HeaderTemplate>Article File</HeaderTemplate> 
<ItemTemplate>
<asp:LinkButton ID="lnk1"  runat ="server" Text ='<%# Eval("FileName") %>' CommandArgument ='<%# Eval("ArticleId") %>' ></asp:LinkButton>
</ItemTemplate>
</asp:TemplateField>--%>
</Columns> 
  
</asp:GridView>
    </td></tr>
</table>
</fieldset>
</center>
</asp:Content>

