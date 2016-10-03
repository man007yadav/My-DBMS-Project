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
/// Summary description for clsAdministration
/// </summary>
public class clsAdministration
{
	public clsAdministration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int Std_Agr_Id { get; set; }
    public DataSet GetNewRegistrationPersons()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetNewRegisterPersons", null);
    }
    public int AcceptRegistration()
    {
        SqlParameter p = new SqlParameter("@Std_Agr_Id", Std_Agr_Id);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_AcceptRegistration", p);
        return i;
    }
}
