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
using FormersBuddy.DAL;
using System.Data.SqlClient;  
/// <summary>
/// Summary description for clsUserLogin
/// </summary>
public class clsUserLogin:clsStudentRegistration 
{
	public clsUserLogin()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public string Role { get; set; }
    public int Std_Agr_Id { get; set; }
    public int CheckLogin()
    {
        SqlParameter[] p = new SqlParameter[5];
        p[0] = new SqlParameter("@UserName", UserName);
        p[1] = new SqlParameter("@Password", Password);
        p[2] = new SqlParameter("@Std_Agr_Id", SqlDbType.Int );
        p[2].Direction = ParameterDirection.Output;
        p[3]=new SqlParameter("@Flag",SqlDbType.Int);
        p[3].Direction=ParameterDirection.Output;
        p[4] = new SqlParameter("@Role",SqlDbType.VarChar,50);
        p[4].Direction = ParameterDirection.Output;
        SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "Sp_VerifyUserLogin", p);
        Role = p[4].Value.ToString ();
        Std_Agr_Id  = Convert.ToInt32(p[2].Value);
        return Convert.ToInt32(p[3].Value);  
    }
    public DataSet GetUserImage()
    {
        SqlParameter p = new SqlParameter("@Str_Agr_Id", Std_Agr_Id);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetImage", p);
    }
    public int GetUserLoginId()
    {
        SqlParameter p = new SqlParameter("@Std_Agr_Id", Std_Agr_Id);
        int i=Convert.ToInt32 ( SqlHelper.ExecuteScalar(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetLoginUserId", p));
        return i;
    }
    public static DataSet GetOnlineFacultyData()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString , CommandType.StoredProcedure, "sp_GetOnlineFacultyData");
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static DataSet GetOnlineStudentData()
    {
        try
        {
            return SqlHelper.ExecuteDataset(clsConnection.ConnectionString , CommandType.StoredProcedure, "sp_GetOnlineStudentData");
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void ActiveFacultyOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_OfficerOnline set [status]=1 where OfficerId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void InActiveFacultyOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_OfficerOnline set [status]=0 where OfficerId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void ActiveStudentOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_StudentOnline set [status]=1 where StudentId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }

    public static void InActiveStudentOnlineStatus(int Id)
    {
        try
        {
            string str = "Update tbl_StudentOnline set [status]=0 where StudentId=" + Id;
            SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, str);
        }
        catch (Exception ex)
        {
            throw new ArgumentException(ex.Message);
        }
    }
}
