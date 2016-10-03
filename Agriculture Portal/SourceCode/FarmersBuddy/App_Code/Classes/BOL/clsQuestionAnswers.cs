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
/// Summary description for clsQuestionAnswers
/// </summary>
public class clsQuestionAnswers
{
	public clsQuestionAnswers()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int QuestionId { get; set; }
    public string Question { get; set; }
    public int UserId { get; set; }
    public int AnswerId { get; set; }
    public string Answer { get; set; }
    public int PostANewQuestion()
    {
        SqlParameter[] p = new SqlParameter[2];
        p[0] = new SqlParameter("@Question", Question);
        p[1] = new SqlParameter("@UserId", UserId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_PostQuestions", p);
        return i;
    }
    public DataSet GetQuestions()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetQuestions", null);

    }
    public int InsertAnswers()
    {
        SqlParameter[]p=new SqlParameter[3];
        p[0] = new SqlParameter("@Answer", Answer);
        p[1] = new SqlParameter("@QuestionId", QuestionId);
        p[2] = new SqlParameter("@UserId", UserId);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertAnswers", p);
        return i;

    }
    public DataSet GetQuestionById()
    {
        SqlParameter p = new SqlParameter("@QuestionId", QuestionId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetQuestion", p);
    }
    public DataSet GetQuestionsByUserId()
    {
        SqlParameter p = new SqlParameter("@UserId", UserId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetQuestionsByUserId", p);
    }

    public DataSet GetPostedAnswersByQuestionId()
    {
        SqlParameter p = new SqlParameter("@QuestionId", QuestionId);
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetPostedAnswersByQuestionId", p);
        
    }
}
