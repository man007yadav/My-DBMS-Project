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
/// Summary description for clsRegions
/// </summary>
public class clsRegions
{
	public clsRegions()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ZoneName { get; set; }
    public string Districts { get; set; }
    public string HeadQuarters { get; set; }
    public string GeoArea { get; set; }
    public int NoOfMandals { get; set; }
    public int NoOfRegions { get; set; }
    public int ZoneId { get; set; }
    public int InsertZoneDetails()
    {
        SqlParameter[] p = new SqlParameter[6];
        p[0] = new SqlParameter("@ZoneName", ZoneName);
        p[1] = new SqlParameter("@Districts", Districts);
        p[2] = new SqlParameter("@HeadQuarters", HeadQuarters);
        p[3] = new SqlParameter("@GeographicalArea", GeoArea);
        p[4] = new SqlParameter("@NoOfMandals", NoOfMandals);
        p[5] = new SqlParameter("@NoOfRegions", NoOfRegions);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertZonalDeatils", p);
        return i;
    }
}
