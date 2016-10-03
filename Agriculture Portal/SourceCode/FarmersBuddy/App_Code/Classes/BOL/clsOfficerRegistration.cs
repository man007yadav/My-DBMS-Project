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
/// Summary description for clsOfficerRegistration
/// </summary>
public class clsOfficerRegistration:clsStudentRegistration 
{
	public clsOfficerRegistration()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Experience { get; set; }
    public int OfficerId { get; set; }

    public int InsertOfficerDetails(out string Result)
    {
        SqlParameter[] p = new SqlParameter[14];
        p[0] = new SqlParameter("@FName", FName);
        p[1] = new SqlParameter("@LName", LName);
        p[2] = new SqlParameter("@MName", MName);
        p[3] = new SqlParameter("@DOB", DOB);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);
        p[7] = new SqlParameter("@ImageContent", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);
        p[9] = new SqlParameter("@UserName", UserName);
        p[10] = new SqlParameter("@Password", Password);
        p[11] = new SqlParameter("@OfficerId", SqlDbType.Int);
        p[11].Direction = ParameterDirection.Output;
        p[12] = new SqlParameter("@Out", SqlDbType.VarChar, 150);
        p[12].Direction = ParameterDirection.Output;
        p[13] = new SqlParameter("@Experience", Experience);
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertOfficerMaster", p);
        Result = p[12].Value.ToString();
        return Convert.ToInt32(p[11].Value);

    }
    public int UpdateOfficerProfile()
    {
        SqlParameter[] p = new SqlParameter[9];
        p[0] = new SqlParameter("@OfficerId", OfficerId);
        p[1] = new SqlParameter("@FName", FName);
        p[2] = new SqlParameter("@LName", LName);
        p[3] = new SqlParameter("@MName", MName);
        p[4] = new SqlParameter("@Address", Address);
        p[5] = new SqlParameter("@EmailId", EmailId);
        p[6] = new SqlParameter("@PhoneNo", PhoneNo);
        p[7] = new SqlParameter("@Photo ", Photo);
        p[8] = new SqlParameter("@ImageFile", ImageFile);

        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_UpdateOfficerProfile", p);
        return i;

    }
    public DataSet GetOfficerProfile()
    {
        SqlParameter p = new SqlParameter("@OfficerId", OfficerId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetOffierProfile", p);
    }
}
