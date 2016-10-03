using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Administrator_frmInsertGovtSchemes : System.Web.UI.Page
{
    clsGovtSchems objScheme = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtSchemeName.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertGovtSchemeDetails();
    }
    public void InsertGovtSchemeDetails()
    {
        objScheme = new clsGovtSchems();
        objScheme.SchemeName = txtSchemeName.Text.Trim();
        objScheme.Objective = txtObjective.Text;
        objScheme.Eligibility = txtEligibility.Text;
        objScheme.Beneficaries = txtBeneficiaries.Text;
        objScheme.Benefits = txtBenefits.Text;
        objScheme.ContactDetails = txtContactDetails.Text;
        objScheme.GovtOrderNo = txtOrderNo.Text;
        objScheme.DateOfReg =Convert.ToDateTime( txtDate.Text.Trim());
        int i = objScheme.InsertGovtSchemeDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Scheme Details Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtSchemeName.Text = "";
        txtObjective.Text = "";
        txtEligibility.Text = "";
        txtBeneficiaries.Text = "";
        txtBenefits.Text = "";
        txtContactDetails.Text = "";
        txtDate.Text = "";
        txtOrderNo.Text = "";
        txtSchemeName.Focus();
    }
}
