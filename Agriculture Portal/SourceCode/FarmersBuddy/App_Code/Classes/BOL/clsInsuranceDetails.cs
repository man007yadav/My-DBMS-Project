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
/// Summary description for clsInsuranceDetails
/// </summary>
public class clsInsuranceDetails:clsGovtLoans 
{
	public clsInsuranceDetails()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Type { get; set; }
    public string ApplyProcedure { get; set; }
    public string  DateOfStart { get; set; }
    public string Title { get; set; }
    public string Address { get; set; }
    public int InsruranceId { get; set; }
    public int InsertInsuranceDetails()
    {
        SqlParameter[] p = new SqlParameter[8];
        p[0] = new SqlParameter("@Title", Title);
        p[1] = new SqlParameter("@Type", Type);
        p[2] = new SqlParameter("@Objective", Objective);
        p[3] = new SqlParameter("@Eligibility", Eligibility);
        p[4] = new SqlParameter("@ApplyProcedure", ApplyProcedure);
        p[5] = new SqlParameter("@DateOfStart", DateOfStart);
        p[6] = new SqlParameter("@Others", Others);
        p[7] = new SqlParameter("@Address", Address);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertInsuranceDetails", p);
        return i;
    }
    public DataSet GetInsuranceTitles()
    {
        string sqlstat = "select InsuranceId,Title from tbl_InsuranceDetails";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, sqlstat, null);
    }
    public DataSet GetInsuraceDetailsById()
    {
        SqlParameter p = new SqlParameter("@InsuranceId", InsruranceId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsuranceDetailsById", p);
    }


}
