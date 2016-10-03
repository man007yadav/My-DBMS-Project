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

public partial class frmDisplayInsuranceSchemes : System.Web.UI.Page
{
    clsInsuranceDetails objInsurance = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Field2.Visible = false;

            GetInsuranceTitles();
        }
    }
    public void GetInsuranceTitles()
    {
        objInsurance = new clsInsuranceDetails();
        DataSet dsInsurance = objInsurance.GetInsuranceTitles();
        if (dsInsurance.Tables[0].Rows.Count > 0)
        {
            ddlSchemeName.DataTextField = "Title";
            ddlSchemeName.DataValueField = "InsuranceId";
            ddlSchemeName.DataSource = dsInsurance.Tables[0];
            ddlSchemeName.DataBind();
            ddlSchemeName.Items.Insert(0, "Select Fertiliser");
           

        }
    }
    protected void ddlSchemeName_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetInsuranceDetailsById();
    }
    public void GetInsuranceDetailsById()
    {
        objInsurance = new clsInsuranceDetails();
        objInsurance.InsruranceId = Convert.ToInt32(ddlSchemeName.SelectedItem.Value);
        DataSet dsInsurance = objInsurance.GetInsuraceDetailsById();
        if (dsInsurance.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            lblInsuranceName.Text = dsInsurance.Tables[0].Rows[0]["Title"].ToString();
            lblType.Text = dsInsurance.Tables[0].Rows[0]["Type"].ToString();
            lblObjective.Text = dsInsurance.Tables[0].Rows[0]["Objective"].ToString();
            lblEligibility.Text = dsInsurance.Tables[0].Rows[0]["Eligibility"].ToString();
            lblApply.Text = dsInsurance.Tables[0].Rows[0]["ApplyProcedure"].ToString();
            lblDateOfStart.Text = dsInsurance.Tables[0].Rows[0]["DateOfStart"].ToString();
            lblOthers.Text = dsInsurance.Tables[0].Rows[0]["Others"].ToString();
            lblAddress.Text = dsInsurance.Tables[0].Rows[0]["AddressForContact"].ToString();
           
        }
        else
        {
            lblMsg.Text = "No Data Found";
            Field2.Visible = false;
        }

    }
}
