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

public partial class frmDisplayGovtSchemes : System.Web.UI.Page
{
    clsGovtSchems objScheme = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Field2.Visible = false;

            GetGovtSchemeNames();
        }
    }
    public void GetGovtSchemeNames()
    {
        objScheme = new clsGovtSchems();
        DataSet dsScheme = objScheme.GetSchemeTitles();
        if (dsScheme.Tables[0].Rows.Count > 0)
        {
            ddlSchemeName.DataTextField = "SchemeName";
            ddlSchemeName.DataValueField = "SchemeId";
            ddlSchemeName.DataSource = dsScheme.Tables[0];
            ddlSchemeName.DataBind();
            ddlSchemeName.Items.Insert(0, "Select SchemeName");
        }
    }
    protected void ddlSchemeName_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetGovtSchemeDetailsById();
    }
    public void GetGovtSchemeDetailsById()
    {
        objScheme = new clsGovtSchems();
        objScheme.SchemeId = Convert.ToInt32(ddlSchemeName.SelectedItem.Value);
        DataSet dsScheme = objScheme.GetGovtSchemeDetailsById();
        if (dsScheme.Tables[0].Rows.Count > 0)
        {
            lblSchemeName.Text = dsScheme.Tables[0].Rows[0]["SchemeName"].ToString();
            lblObjective.Text = dsScheme.Tables[0].Rows[0]["Objective"].ToString();
            lblEligibility.Text = dsScheme.Tables[0].Rows[0]["Eligibility"].ToString();
            lblBeneficiaries.Text = dsScheme.Tables[0].Rows[0]["Beneficiaries"].ToString();
            lblBenefits.Text = dsScheme.Tables[0].Rows[0]["Benefits"].ToString();
            lblAddress.Text = dsScheme.Tables[0].Rows[0]["ContactDetails"].ToString();
            lblGovtOrder.Text = dsScheme.Tables[0].Rows[0]["GovtOrderNo"].ToString();
            lblDateOfStart.Text = dsScheme.Tables[0].Rows[0]["DateOfReg"].ToString();
            Field2.Visible = true;
        }
        else
        {
            lblMsg.Text = "NO Data Found";
        }
    }
}
