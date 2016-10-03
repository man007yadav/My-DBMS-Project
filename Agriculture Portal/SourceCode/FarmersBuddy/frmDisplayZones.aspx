<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" AutoEventWireup="true" CodeFile="frmDisplayZones.aspx.cs" Inherits="frmDisplayZones" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<h3 style="text-align: center; text-decoration: underline">&nbsp;AGRO-Climatic Zones of Karnataka</h3>
<p  style="margin-left:10px; width: 627px;"; align="justify">
     Based on the climate parameters i.e., rainfall and temperature, the State is broadly divided into 9 distinct Agro-Climatic Zones.  The agriculture planning for each zone is supported with the research and recommendations of a Regional Agriculture Research Station of ANGRAU set up with in the particular zone.
<br/>
	In an attempt to plan the agricultural operations in much more focused way, these 9 agro climatic zones have been divided into 322 farming situations, which are unique in terms of micro-environment and need specific practices under each situation.      
 <br/><br/>           
</p>
<table><tr><td><asp:Image ID="AgroImage" runat ="server" ImageUrl="~/Images/karnataka-agriculture-map.jpg" Width="657px" /></td></tr></table>

<hr />
<table border="1" cellpadding="0"  cellspacing="0" style="border-collapse: collapse" bordercolor="#db6a1c" width="95%" align="center">


 
 <tr style="text-align:center">
  <td  >SNo.</td>
  <td   ><strong>&nbsp;Zone Name</strong></td>
  <td   >&nbsp;Districts</td>
  <td  >Head Quarters</td>
  <td   >Geographical area (in lacs ha)</td>
  <td  >No.of mandals</td>
  <td style="width: 53px"  >No.of Res.Stations.</td>
 
  </tr>
 
 
 <tr >
  <td >1</td>
  <td >North Coastal 
Zone
</td>
  <td >Srikakulam, Vizianagaram,Nugu  </td>
  <td >Anakapalle</td>
  <td >18.5</td>
  <td >88</td>
  <td style="width: 53px" >5</td>
  </tr>

 <tr >
  <td >2</td>
  <td >Godavari Zone</td>
  <td >East Godavari, West Godavari</td>
  <td >Maruteru</td>
  <td >17.5</td>
  <td >96</td>
  <td style="width: 53px" >6</td>
  </tr>

 <tr >
  <td >3</td>
  <td >Krishna Zone</td>
  <td >Krishna, Kanva, Prakasam</td>
  <td >Lam</td>
  <td >37.70</td>
  <td >161</td>
  <td style="width: 53px" >12</td>
   </tr>

 <tr>
  <td >4</td>
  <td >Southern Zone</td>
  <td >Kattepur, Kadapa, Payaswani</td>
  <td >Hubli</td>
  <td >41.70</td>
  <td >161</td>
  <td style="width: 53px" >8</td>
  </tr>


 <tr>
  <td >5</td>
  <td >Northern Hubli Zone</td>
  <td >Dharma, Ambligola, Varada</td>
  <td >Jagtial</td>
  <td >35.50</td>
  <td >144</td>
  <td style="width: 53px" >6</td>
  </tr>


 <tr>
  <td >6</td>
  <td >Central Hubli Zone</td>
  <td >Sagara, Tunga, Medak</td>
  <td >Kolluru</td>
  <td >30.60</td>
  <td >132</td>
  <td style="width: 53px" >7</td>
  </tr>


 <tr>
  <td >7</td>
  <td >Southern Hubli Zone</td>
  <td >Sita, Nalgonda, Yagachi</td>
  <td >Palem</td>
  <td >39.30</td>
  <td >164</td>
  <td style="width: 53px" >6</td>
  </tr>


 <tr>
  <td >8</td>
  <td >Scarce Rainfall zone</td>
  <td >Kurnool, Anantapur</td>
  <td >Nandyal</td>
  <td >36.2</td>
  <td >117</td>
  <td style="width: 53px" >5</td>
  </tr>


 <tr>
  <td >9</td>
  <td >High Altitude & Tribal Areas Zone </td>
  <td >High Altitude & Tribal Areas of Srikakulam, East Godavari, Madamagsur and Sagara districts </td>
  <td >Chintapalli</td>
  <td >18.0</td>
  <td >40</td>
  <td style="width: 53px" >3</td>
  </tr>



 <tr>

  <td  colspan="4"><b>Total</b></td>
  <td ><b>275.00</b></td>
  <td ><b>1103</b></td>
  <td style="width: 53px" ><b>58</b></td>

  </tr>
 
</table>
<hr />
</center>
</asp:Content>

