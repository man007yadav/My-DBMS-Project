<%@ WebHandler Language="C#" Class="VideoHandler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public class VideoHandler : IHttpHandler {
    
    public void ProcessRequest (HttpContext context)
    {
        context.Response.ContentType = "text/plain";
        //context.Response.Write("Hello World");
        string connectionString = ConfigurationManager.ConnectionStrings["CnStr"].ConnectionString;

        SqlConnection connection = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT TrainingVideo, VideoFileName,ScheduleId FROM tbl_OnlineTrainingSchedule WHERE ScheduleId= @id", connection);
        cmd.Parameters.Add("@id", SqlDbType.VarChar,50).Value = context.Request.QueryString["id"];
        try
        {
            connection.Open();
            SqlDataReader reader = cmd.ExecuteReader(CommandBehavior.Default);
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    context.Response.ContentType = reader["VideoFileName"].ToString();
                    context.Response.BinaryWrite((byte[])reader["TrainingVideo"]);
                }
            }
        }
        finally
        {
            connection.Close();
        }
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}