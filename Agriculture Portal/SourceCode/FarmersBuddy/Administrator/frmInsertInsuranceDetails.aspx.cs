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

public partial class Administrator_frmInsertInsuranceDetails : System.Web.UI.Page
{
    clsInsuranceDetails objInsurance = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertInsuranceDetails();
    }
    public void InsertInsuranceDetails()
    {
        objInsurance = new clsInsuranceDetails();
        objInsurance.Title = txtTitle.Text.Trim();
        objInsurance.Type = txtType.Text.Trim();
        objInsurance.Objective = txtObjective.Text;
        objInsurance.Eligibility = txtEligibility.Text;
        objInsurance.ApplyProcedure = txtProcedure.Text;
        objInsurance.DateOfStart = txtDate.Text;
        objInsurance.Others = txtOthers.Text;
        objInsurance.Address = txtAddress.Text;
        int i = objInsurance.InsertInsuranceDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Fertilizer Details Stored')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }

    }
}
