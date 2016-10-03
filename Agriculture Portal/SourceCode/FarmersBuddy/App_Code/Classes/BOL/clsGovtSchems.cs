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
/// Summary description for clsGovtSchems
/// </summary>
public class clsGovtSchems
{
	public clsGovtSchems()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int SchemeId { get; set; }
    public string SchemeName { get; set; }
    public string Objective { get; set; }
    public string Eligibility { get; set; }
    public string Beneficaries { get; set; }
    public string Benefits { get; set; }
    public string ContactDetails { get; set; }
    public string GovtOrderNo { get; set; }
    public DateTime DateOfReg { get; set; }
    public int InsertGovtSchemeDetails()
    {
        SqlParameter[]p=new SqlParameter [8];
        p[0] = new SqlParameter("@SchemeName", SchemeName);
        p[1] = new SqlParameter("@Objective", Objective);
        p[2] = new SqlParameter("@Eligibility", Eligibility);
        p[3] = new SqlParameter("@Beneficiaries", Beneficaries);
        p[4] = new SqlParameter("@Benefits", Benefits);
        p[5] = new SqlParameter("@ContactDetails", ContactDetails);
        p[6] = new SqlParameter("@GovtOrderNo", GovtOrderNo);
        p[7] = new SqlParameter("@DateOfReg", DateOfReg);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertGovertnemtSchemes", p);
        return i;

    }
    public DataSet GetSchemeTitles()
    {
        string Sqlstat = "select SchemeId,SchemeName from tbl_GovtSchemes";
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.Text, Sqlstat, null);
    }
    public DataSet GetGovtSchemeDetailsById()
    {
        SqlParameter p = new SqlParameter("@SchemeId", SchemeId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetGovtSchemeDetailsById", p);
    }
}
