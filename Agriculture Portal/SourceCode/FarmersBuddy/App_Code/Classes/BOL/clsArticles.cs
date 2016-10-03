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
/// Summary description for clsArticles
/// </summary>
public class clsArticles
{
	public clsArticles()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string Title { get; set; }
    public byte[] Content { get; set; }
    public string FileName { get; set; }
    public int InsertNewArticle()
    {
        SqlParameter[] p = new SqlParameter[3];
        p[0] = new SqlParameter("@Title", Title);
        p[1] = new SqlParameter("@Content", Content);
        p[2] = new SqlParameter("@FileName", FileName);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_PostNewArticles", p);
        return i;
    }

    public DataSet GetArticleInformation()
    {
        return SqlHelper.ExecuteDataset(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_GetPostedArticles", null);
    }
}
