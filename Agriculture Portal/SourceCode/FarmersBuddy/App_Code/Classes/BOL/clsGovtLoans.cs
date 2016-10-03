using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using FormersBuddy.DAL;

/// <summary>
/// Summary description for clsGovtLoans
/// </summary>
public class clsGovtLoans
{
	public clsGovtLoans()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int LoanId { get; set; }
    public string LoanName { get; set; }
    public string Objective { get; set; }
    public string Coverage { get; set; }
    public string Eligibility { get; set; }
    public string Terms { get; set; }
    public string Repayments { get; set; }
    public string ROI { get; set; }
    public string Others { get; set; }
    public byte[] LoanFileContent { get; set; }
    public string FileName { get; set; }

    public int InsertBankLoanDetails()
    {
        SqlParameter[]p=new SqlParameter[10];
        p[0] = new SqlParameter("@LoanName", LoanName);
        p[1] = new SqlParameter("@Objective", Objective);
        p[2] = new SqlParameter("@Coverage", Coverage);
        p[3] = new SqlParameter("@Eligibility", Eligibility);
        p[4] = new SqlParameter("@Terms", Terms);
        p[5] = new SqlParameter("@Repayment", Repayments);
        p[6] = new SqlParameter("@ROI", ROI);
        p[7] = new SqlParameter("@Others", Others);
        p[8] = new SqlParameter("@LoanFileContent", LoanFileContent);
        p[9] = new SqlParameter("@FileName", FileName);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertGovtLoanDetails", p);
        return i;
    }

    public DataSet GetLoanTitles()
    {
        string sqlstat = "Select LoanId,LoanName from tbl_GovtLoans";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, sqlstat, null);
    }
    public DataSet GetLoanDetailsByLoanId()
    {
        SqlParameter p = new SqlParameter("@LoanId", LoanId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetGovtLoanDetails", p);
    }
}
