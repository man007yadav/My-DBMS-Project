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
/// Summary description for clsCropInformation
/// </summary>
public class clsCropInformation
{
	public clsCropInformation()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string CropTypeId { get; set; }
    public string CropTypeName { get; set; }
    public string Description { get; set; }
    public string CropName { get; set; }
    public string Climate { get; set; }
    public string Soil { get; set; }
    public string Rotation { get; set; }
    public string Irrigation { get; set; }
    public string Yield { get; set; }
    public string Storage { get; set; }
    public int CropId { get; set; }

    public int InsertCropTypeInfo()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@TypeName", CropTypeName);
        p[1] = new SqlParameter("@Description", Description);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertCropTypes", p);
        return i;
    }
    public DataSet GetCropTypes()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetCropTypes", null );
    }

    public int InsertCropDetails()
    {
        SqlParameter[]p=new SqlParameter [8];
        p[0] = new SqlParameter("@CropName", CropName);
        p[1] = new SqlParameter("@Climate", Climate);
        p[2] = new SqlParameter("@Soil", Soil);
        p[3] = new SqlParameter("@Rotation", Rotation);
        p[4] = new SqlParameter("@Irrigation", Irrigation);
        p[5] = new SqlParameter("@Yield", Yield);
        p[6] = new SqlParameter("@Storage", Storage);
        p[7] = new SqlParameter("@CropTypeId", CropTypeId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertCropDetails", p);
        return i;
    }
    public DataSet GetCropNames()
    {
        SqlParameter p = new SqlParameter("@CropTypeId", CropTypeId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GerCropNames", p);
    }

    public DataSet GetCropInformationByCropId()
    {
        SqlParameter p = new SqlParameter("@CropId", CropId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetCropInformation", p);
    }
}
