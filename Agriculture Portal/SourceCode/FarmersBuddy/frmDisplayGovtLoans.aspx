<%@ Page Language="C#" MasterPageFile="~/MainMasterPage.master" Theme="Theme1" AutoEventWireup="true"
    CodeFile="frmDisplayGovtLoans.aspx.cs" Inherits="frmDisplayGovtLoans" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <center>
        <h3 style="text-decoration: underline; text-align: center">
            Government Loans for Agriculture</h3>
        <br />
        <fieldset id="Field1" runat="server" style="width: 600px">
            <legend>Details of Government Loans</legend>
            <table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
                <tr>
                    <td bgcolor="#E7B642">
                        <br />
                        <center>
                            Agricultural Loan Details
                        </center>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <br />
                        <br />
                        <table>
                            <tr align="center">
                                <td style="height: 17px">
                                </td>
                                <td align="center" style="height: 17px">
                                    Select Loan Type
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td align="center">
                                    <asp:DropDownList ID="ddlLoanName" runat="server" Width="150px" AutoPostBack="True"
                                        OnSelectedIndexChanged="ddlLoanName_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td>
                                    <asp:RequiredFieldValidator ControlToValidate="ddlLoanName" ID="RequiredFieldValidator3"
                                        runat="server" ErrorMessage="*" InitialValue="--Select Scheme--"></asp:RequiredFieldValidator>
                                </td>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <br />
                        <fieldset id="Field2" runat="server">
                            <table width="80%" border="1" style="border-color: #5A5D5A; border-width: 1px;">
                                <tr>
                                    <td bgcolor="#E7B642" colspan="2">
                                        <br />
                                        <center>
                                            <asp:Label ID="lblLoanName" runat="server"></asp:Label></center>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29%">
                                        Objective
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Label ID="lblObjective" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29%">
                                        Eligibility
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Label ID="lblEligibility" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 29%">
                                        Coverage
                                    </td>
                                    <td style="height: 20px; width: 109px">
                                        <asp:Label ID="lblCoverage" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29%">
                                        Terms
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Label ID="lblTerms" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29%">
                                        RepayMent
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Label ID="lblRepayment" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 20px; width: 29%">
                                        RateOfInterest
                                    </td>
                                    <td style="height: 20px; width: 109px">
                                        <asp:Label ID="lblROI" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 29%">
                                        Others
                                    </td>
                                    <td style="width: 109px">
                                        <asp:Label ID="lblOthers" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" align="center">
                                        <asp:LinkButton ID="Link1" runat="server" OnClick="Link1_Click"></asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#E7B642" colspan="2">
                                        <br />
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                    </td>
                </tr>
                <tr>
                    <td>
                        <center>
                            <asp:Label ID="lblMsg" runat="server"></asp:Label></center>
                    </td>
                </tr>
                <tr>
                    <td bgcolor="#E7B642">
                        <br />
                    </td>
                </tr>
                <tr align="left">
                    <td align="left">
                        <asp:LinkButton ID="lnk1" runat="server" OnClick="lnk1_Click">Banks in agricultural sector</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </fieldset>
        <fieldset id="Field3" runat="server" visible="false"  style="width: 600px">
            <legend>Bank Details</legend>
            <table>
                <tr>
                    <td>
                        <p>
                            Banks in agricultural sector</p>
                        <p>
                            Nationalisation of banks was a major step for channelising credit to various sectors
                            of economy of which agriculture is a major sector. A dynamic and growing agricultural
                            sector needs adequate finance through banks to accelerate the overall growth. The
                            government has directed the banks to double their flow of credit to agriculture
                            sector in three years commencing from the year 2004-05. With the government’s keen
                            interest and special budget allocation for agricultural in the 11th five-year plan,
                            it is now in the hands of the farmer to reap the benefit of the schemes offered
                            by the banks. Following is a list of offers of credit from some of the nationalised
                            banks.</p>
                        <p>
                            Allahabad Bank (www.allahabadbank.com) * Kisan Shakti Yojana Scheme * Farmers are
                            free to utilise the loan at their own choice * No margin is required * 50% of the
                            loan amount may be utilized for personal/domestic purposes including repayment of
                            debt to money lenders
                        </p>
                        <p>
                            Andhra Bank (www.andhrabank-india.com) * Andhra Bank Kisan Green card * Coverage
                            under Personal Accident Insurance Scheme (PAIS)
                        </p>
                        <p>
                            Bank Of Baroda (www.bankofbaroda.com) * Purchase of second hand tractors scheme
                            for dry-land farming * Working capital needs to dealers/distributors/traders of
                            agrl. Inputs/livestock inputs * Hiring agrl. machinery * Development of horticulture
                            * Working capital for units engaged in dairy, piggery, poultry, sericulture etc.
                            * Financing Scheduled Caste/Scheduled Tribes for purchase of farm implements, tools,
                            pair of bullocks, creation of irrigation facilities.
                        </p>
                        <p>
                            Bank of India (www.bankofindia.com) * Star Bumiheen Kisan Card – for share croppers,
                            tenant farmers and oral lessees * Kisan Samadhan card – Kisan credit card for crop
                            production and other related investments * BOI Shtabti Krishi Vikas Card – electronic
                            card for anywhere anytime banking for farmers * Funding for contract farming in
                            hybrid seed production, cotton industry, sugarcane industry etc. * Special schemes
                            for SHGs and to empower women folk * Star Swarojkar Prashikshan Sansthan (SSPS),
                            a new initiative to provide entrepreneurial training tofarmers * Crop loans : Upto
                            Rs. 3 lakhs at the rate of 7% per annum * Collateral security: loans up to Rs. 50,
                            000, no collateral required, but for above Rs. 50, 000, RBI directives are followed.
                        </p>
                        <p>
                            Dena Bank (www.denabank.com) * Dena bank is most active in Gujarat, Maharashtra,
                            Chhattisgarh and UT of Dadra and Nagar haveli. * Dena Kisan Gold Credit Card Scheme
                            * Maximum credit limit up to Rs. 10 lakh * Provision of 10% towards domestic expenses
                            including education of children * Longer repayment period up to 9 years * Loan is
                            available for any type of investment in farm such as farm implements, tractors,
                            sprinklers/drip irrigation systems, oil engine, electric pump sets, etc. * Short
                            term crop loan up to Rs. 3 lakhs @ 7% * Disposal of loans within 15 days of application
                            * No collateral up to Rs. 50, 000 for farm loans and up to Rs. 5 lakhs for setting
                            up agri-clinic and agri-business units.
                        </p>
                        <p>
                            Indian Bank (www.indianbank.in) * Production Credit : Crop loans, Tie-up with sugar
                            mills & Kisan Credit Card Scheme, Crop loans to tenant farmers, share croppers and
                            oral lessees * Agricultural Investment Credit : Land development, minor irrigation,
                            micro irrigation, farm mechanization, plantation and horticulture * Agricultural
                            Structured Loans : Kisan Bike, Agri- Vendors Bike, Agri. Clinics and Agri Business
                            Centres * Group Lending for Agricultural Development: Loan to joint liability groups
                            / Self Help Groups * New Agricultural Avenues: Contract farming, Organic farming,
                            rural godowns, cold storage, medicinal and aromatic plants, bio-fuel crops etc..
                        </p>
                        <p>
                            Oriental Bank of Commerce (www.obcindia.com) * Oriental green Card (OGC) Scheme
                            * Composite Credit Scheme for Agricultural lending * Setting up of cold storages/godowns
                            * Financing commission agents
                        </p>
                        <p>
                            Punjab National Bank (www.pnbkrishi.com) * PNB Kisan Sampuranrin Yojana * PNB Kisan
                            Icha Purti Yojana * Growing potatoes/fruits against pledge of cold storage receipts
                            * Self propelled Combine Harvestors * Development of Forestry nursery * Wasteland
                            development * Mushroom/Prawn culture and mushroom spawn production * Purchase nad
                            maintenance of milch animals * Dairy Vikas Card Scheme * Schemes for pisciculture,
                            piggery, bee-keeping etc.
                        </p>
                        <p>
                            State Bank of Hyderabad (www.sbhyd.com) * Crop loans and Agrl. Gold loans * Marketing
                            of agricultural produce * Cold storage/private warehouse * Minor irrigation & Dug
                            well scheme / development of old well scheme * Land development finance * Purchase
                            of tractor, power tiller and implements * Purchase of Agrl. Land/fallow/wastelands
                            * Vehicle loans for farmers * Drip irrigation and sprinklers * Self Help Group *
                            Agri Clinics and Agri Business Centres * Yuva Krishi Plus Scheme
                        </p>
                        <p>
                            State Bank of India (www.statebankofindia.com) * Crop loan Scheme (ACC) * Storing
                            produce in their own premises and renewal of loans for next season * Kisan Credit
                            Card Scheme * Land Development Schemes * Minor Irrigation Schemes * Purchase of
                            combine Harvestor * Kisan Gold Card Scheme * Krishi Plus Scheme- for customized
                            hiring of tractor to rural youth * Arthias Plus Scheme – for Commission agents *
                            Broiler Plus Scheme – Broiler farming * Lead Bank Scheme
                        </p>
                        <p>
                            Syndicate Bank (www.syndicatebank.com) * Syndicate Kisan Credit card (SKCC) * Solar
                            Water Heater Scheme * Agri-clinics and Agri-business centres
                        </p>
                        <p>
                            Vijaya Bank (www.vijayabank.com) * Loans to Self Help groups * Vijaya Kisan Card
                            * Vijaya Planters Card * KVIC Margin Money Scheme for Artisans and Village Industries
                            Links for other Banks
                        </p>
                        <p>
                            &nbsp;Bank of Punjab (www.bankofpunjab.com)
                        </p>
                        <p>
                            &nbsp;Bank of Rajasthan (www.bankofrajasthan.com)
                        </p>
                        <p>
                            &nbsp;Canara Bank (www.canbankindia.com)
                        </p>
                        <p>
                            Central bank of India (www.centralbankofindia.co.in)
                        </p>
                        <p>
                            &nbsp;Corporation Bank (www.corpbank.com)
                        </p>
                        <p>
                            &nbsp;Indian Bank (www.indianbank.in)
                        </p>
                        <p>
                            &nbsp;Indian Overseas Bank (www.iob.com)&nbsp;
                        </p>
                        <p>
                            Industrial Development bank of India (www.idbibank.com)
                        </p>
                        <p>
                            &nbsp;Jammu &amp; Kashmir Bank Ltd (www.jkbank.net)
                        </p>
                        <p>
                            State Bank of Mysore (www.mysorebank.com)
                        </p>
                        <p>
                            Union Bank of India (www.unionbankofindia.co.in)
                        </p>
                        <p>
                            United Bank of India (www.unitedbankofindia.com)
                        </p>
                        <p>
                            Axis Bank (www.utibank.com)
                        </p>
                    </td>
                </tr>
            </table>
        </fieldset>
    </center>
</asp:Content>
