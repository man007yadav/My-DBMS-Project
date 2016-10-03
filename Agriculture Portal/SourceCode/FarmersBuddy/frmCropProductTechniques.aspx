<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1"  AutoEventWireup="true" CodeFile="frmCropProductTechniques.aspx.cs" Inherits="frmCropProductTechniques" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
<fieldset id="Field1" runat ="server" style="width:600px">
<legend>Crop Production Techniques</legend>
<table>
<tr>
<td>
    <img src="Images/image_article.jpg" /></td>
</tr>
<tr>
<td><asp:LinkButton ID="lnk1" runat ="server" onclick="lnk1_Click" >Drip Irrigation System</asp:LinkButton></td>
</tr>
<tr><td><asp:LinkButton ID="lnk2" runat ="server" onclick="lnk2_Click" >Sprinkler Irrigation System</asp:LinkButton></td></tr>
<tr><td><asp:LinkButton ID="lnk3" runat ="server" onclick="lnk3_Click" >Tissue Culture Banana</asp:LinkButton></td></tr>
</table>
</fieldset>
<fieldset id="Field2" runat ="server" style="width:600px" visible="false" >
<legend>Drip Irrigation</legend>
<table>
<tr>

<td align="center" >
    <img src="Images/Drip_layout.jpg" width="600" />
<p><strong>Drip Irrigation System</strong> </p><p>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

Drip irrigation system delivers water to the crop using a network of mainlines, sub-mains and lateral lines with emission points spaced along their lengths. Each dripper/emitter, orifice supplies a measured, precisely controlled uniform application of water, nutrients, and other required growth substances directly into the root zone of the plant. <br />

Water and nutrients enter the soil from the emitters, moving into the root zone of the plants through the combined forces of gravity and capillary. In this way, the plant’s withdrawal of moisture and nutrients are replenished almost immediately, ensuring that the plant never suffers from water stress, thus enhancing quality, its ability to achieve optimum growth and high yield.<br />


Drip irrigation is today's need because Water - nature's gift to mankind is not unlimited and free forever. World water resources are fast diminishing.<br /><br />

<strong>Benefits of Drip Irrigation Systems</strong><br />
<ul>
    <li>Increase in yield up to 150%.</li>
    <li>Saves water up to 70% compare to flood irrigation. More land can be irrigated with the water thus saved.</li>
    <li>Crop grows consistently, healthier and matures fast.</li>
    <li>Early maturity results in higher and faster returns on investment.</li>
    <li>Fertilizer use efficiency increases by 30%.</li>
    <li>Cost of fertilizers, inter-culturing and labour use gets reduced.</li>
    <li>Fertilizer and Chemical Treatment can be given through Micro Irrigation System itself.</li>
    <li>Undulating terrains, Saline, Water logged, Sandy & Hilly lands can also be brought under productive cultivation.</li>
</ul>
</td>
</tr>
</table>
</fieldset>

<fieldset id="Field3" runat ="server" style="width:600px" visible="false" >
<legend>Sprinkler Irrigation System</legend>
<table>
<tr>
<td align="center" >
    <img src="Images/Sprinkler.jpg" />
<p>
Sprinkler Irrigation System</p>
    <p>
&nbsp;Sprinkler Irrigation is a method of applying irrigation water which is similar to rainfall. Water is distributed through a system of pipes usually by pumping. It is then sprayed into the air and irrigated entire soil surface through spray heads so that it breaks up into small water drops which fall to the ground.

  

Sprinklers provide efficient coverage for small to large areas and are suitable for use on all types of properties. It is also adaptable to nearly all irrigable soils since sprinklers are available in a wide range of discharge capacity.

Suitable for almost all field crops like Wheat, Gram, Pulses as well as Vegetables, Cotton, Soya bean, Tea, Coffee, and other fodder crops.
</p>
</td>
</tr>
</table>
</fieldset>
<fieldset id="Field4" runat ="server" style="width:600px" visible="false" >
<legend>Tissue Culture</legend>
<table>
<tr>
<td align="center" >
    <img src="Images/tissue_culture.jpg" width="500"/>
<p>
The propagation of a plant by using a plant part or single cell or group cell in a test tube under very controlled and hygienic conditions is called "Tissue Culture".</p><p>
Banana is a globally important fruit crop with 97.5 million tones of production. In India it supports livelihood of million of people. With total annual production of 16.91 million tones from 490.70 thousand ha., with national average of 33.5 T/ha. Maharashtra ranks first in production with 60 T/ha. Banana contributes 37% to total fruit production in India.

Banana is one of the major and economically important fruit crop of Maharashtra. Banana occupy 20% area among the total area under crop in India. Maharashtra ranks second in area and first in productivity in India. Jalgaon is a major Banana growing district in Maharashtra which occupy 50,000 hectares area under Banana. But most of Banana is grown by planting suckers. The technology development in agriculture is very fast, it results in developing Tissue Culture Technique.</p><p>
Banana is basically a tropical crop, grows well in temperature range of 13ºC – 38ºC with RH regime of 75-85%. In India this crop is being cultivated in climate ranging from humid tropical to dry mild subtropics through selection of appropriate varieties like Grandnaine. Chilling injury occurs at temperatures below 12ºC. The normal growth of the banana begins at 18ºC, reaches optimum at 27ºC, then declines and comes to a halt at 38ºC. Higher temperature causes sun scorching. High velocity wind which exceeds 80 km phrs damages the crop.
</p>
<p>Soil for banana should have good drainage, adequate fertility and moisture. Deep, rich loamy soil with pH between 6-7.5 are most preferred for banana cultivation. Ill drained, poorly aerated and nutritionally deficient soils are not suitable for banana. Saline solid, calcareous soil are not suitable for Banana cultivation. Avoided soil of low laying areas, very sandy & heavy black cotton with ill drainage.

A soil that is not too acidic & not too alkaline, rich in organic material with high nitrogen content, adequate phosphorus level and plenty of potash are good for banana.</p>
</td>


</tr>
<tr>
<td align="center" >
    <img src="Images/Banana.jpg" />
    <p>

The planted crop gets ready for harvest within 11-12 months of planting. First ratoon crop would be ready by 8-10 month from the harvesting of the main crop and second ratoon by 8-9 months after the second crop.

Thus over a period to 28-30 months, it is possible to harvest three crops i.e. one main crop and two ratoon crops. Under drip irrigation combined with Fertigation yield of Banana as high as 100 T/ha can be obtained with the help of tissue culture technique, even similar yield in the ratoon crops can be achieved if the crop is managed well.</p>
</td>
</tr>
</table>
</fieldset>
</center>
</asp:Content>

