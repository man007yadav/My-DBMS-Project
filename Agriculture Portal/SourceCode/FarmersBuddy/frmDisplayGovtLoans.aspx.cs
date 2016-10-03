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

public partial class frmDisplayGovtLoans : System.Web.UI.Page
{
    clsGovtLoans objLoans = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Field2.Visible = false;
            GetLoanTitles();
        }
    }
    public void GetLoanTitles()
    {
        objLoans = new clsGovtLoans();
        DataSet dsLoans = objLoans.GetLoanTitles();
        if (dsLoans.Tables[0].Rows.Count > 0)
        {
            ddlLoanName.DataTextField = "LoanName";
            ddlLoanName.DataValueField = "LoanId";
            ddlLoanName.DataSource = dsLoans.Tables[0];
            ddlLoanName.DataBind();
            ddlLoanName.Items.Insert(0, "Select Loan Name");
        }
    }
    public void GetGovtLoanDetailsByLoanId()
    {
        if (ddlLoanName.SelectedIndex != 0)
        {
            objLoans = new clsGovtLoans();
            objLoans.LoanId = Convert.ToInt32(ddlLoanName.SelectedItem.Value);
            DataSet dsLoans = objLoans.GetLoanDetailsByLoanId();
            if (dsLoans.Tables[0].Rows.Count > 0)
            {
                lblLoanName.Text = dsLoans.Tables[0].Rows[0]["LoanName"].ToString();
                lblObjective.Text = dsLoans.Tables[0].Rows[0]["Objective"].ToString();
                lblEligibility.Text = dsLoans.Tables[0].Rows[0]["Eligibility"].ToString();
                lblCoverage.Text = dsLoans.Tables[0].Rows[0]["Coverage"].ToString();
                lblTerms.Text = dsLoans.Tables[0].Rows[0]["Terms"].ToString();
                lblRepayment.Text = dsLoans.Tables[0].Rows[0]["RepaymentSchedule"].ToString();
                lblROI.Text = dsLoans.Tables[0].Rows[0]["RateOfInterest"].ToString();
                lblOthers.Text = dsLoans.Tables[0].Rows[0]["Others"].ToString();
                Link1.Text = "LoanFileContent";
                Field2.Visible = true;


            }
            else
            {
                lblMsg.Text = "No Data Avaliable";
            }
        }
        else
        {
            Page.RegisterClientScriptBlock("Loan", "<script>alert('Select Loan Type')</script>");
            Field2.Visible = false;
            
        }

    }
    protected void ddlLoanName_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetGovtLoanDetailsByLoanId();
    }
    protected void Link1_Click(object sender, EventArgs e)
    {
        try
        {
            objLoans=new clsGovtLoans ();
            objLoans.LoanId=Convert.ToInt32 (ddlLoanName.SelectedItem.Value);
            DataSet ds = objLoans.GetLoanDetailsByLoanId();
            if (ds.Tables[0].Rows.Count != 0)
            {
                byte[] FileContent = (byte[])ds.Tables[0].Rows[0][9];
                string FileName = (string)ds.Tables[0].Rows[0][10];
                string[] fileSplit = FileName.Split('.');
                int Loc = fileSplit.Length;
                string FileExtention = "." + fileSplit[Loc - 1].ToUpper();

                int i = 0;
                if (FileExtention == ".DOC" || FileExtention == ".DOCX")
                {
                    Response.ContentType = "application/vnd.ms-word";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".XL" || FileExtention == ".XLS" || FileExtention == ".XLSX")
                {
                    Response.ContentType = "application/vnd.ms-excel";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".PDF")
                {
                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                else if (FileExtention == ".TXT")
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AddHeader("content-disposition", "inline;filename=" + FileName);
                    i = 1;
                }
                if (i == 1)
                {
                    Response.Charset = "";
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);
                    Response.BinaryWrite(FileContent);
                    Response.End();
                }
                else
                    lblMsg.Text = "Problom in downloading the file..";

            }
        }
        catch (Exception ex)
        {

            lblMsg.Text = ex.Message;
        }
    }

    protected void lnk1_Click(object sender, EventArgs e)
    {
        if (Field3.Visible == false)
        {
            Field3.Visible = true;
        }
        else
        {
            Field3.Visible = false;
        }
    }
}
