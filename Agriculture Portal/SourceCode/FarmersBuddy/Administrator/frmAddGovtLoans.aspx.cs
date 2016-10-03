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

public partial class Administrator_frmAddGovtLoans : System.Web.UI.Page
{
    clsGovtLoans objLoans = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertBankLoanDeatils();
    }
    public void InsertBankLoanDeatils()
    {
        objLoans = new clsGovtLoans();
        objLoans.LoanName = txtLoanName.Text.Trim();
        objLoans.Objective = txtObjective.Text;
        objLoans.Coverage = txtCoverage.Text;
        objLoans.Eligibility = txtEligibility.Text;
        objLoans.Terms = txtTerms.Text;
        objLoans.Repayments = txtRepayment.Text;
        objLoans.ROI = txtRoI.Text.Trim();
        objLoans.Others = txtOthers.Text;
        objLoans.LoanFileContent = (byte[])Session["DocFileContent"];
        objLoans.FileName = Session["DocFileName"].ToString();
        int i = objLoans.InsertBankLoanDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Loan Deatils Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
}
