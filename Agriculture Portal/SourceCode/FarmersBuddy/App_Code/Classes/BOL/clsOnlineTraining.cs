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
/// Summary description for clsOnlineTraining
/// </summary>
public class clsOnlineTraining
{
	public clsOnlineTraining()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string ScheduleId { get; set; }
    public string Duration { get; set; }
    public string Title { get; set; }
    public DateTime  ArrangeDate { get; set; }
    public string Description { get; set; }
    public byte[] TrainingVideo { get; set; }
    public string VideoFileName { get; set; }
    public int UserId { get; set; }

    public int InsertTrainingVideo()
    {
        SqlParameter[]p=new SqlParameter[7];
        p[0] = new SqlParameter("@Title", Title);
        p[1] = new SqlParameter("@ArrangedDate", ArrangeDate);
        p[2] = new SqlParameter("@Duration", Duration);
        p[3] = new SqlParameter("@Description", Description);
        p[4] = new SqlParameter("@TrainingVideo", TrainingVideo);
        p[5] = new SqlParameter("@VideoFileName", VideoFileName);
        p[6] = new SqlParameter("@UserId", UserId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertOnlineTrainingSchedule", p);
        return i;
    }
    public DataSet GetOnlineTrainingSchedule()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetScheduleDetails", null);
    }
    public DataSet GetTrainingVideos()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetTrainingVideo", null);
    }
    public DataSet GetOfficerInfoForOnlineTraining()
    {
        SqlParameter p = new SqlParameter("@ScheduleId", ScheduleId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetOfficerInfoForOnlineTraining", p);

    }
    public DataSet GetVideoFile()
    {
        SqlParameter p = new SqlParameter("@ScheduleId", ScheduleId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetVideoFile", p);
    }
    public DataSet GetVideoTitle()
    {
        SqlParameter p = new SqlParameter("@ScheduleId", ScheduleId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetVideoName", p);
    }
}
