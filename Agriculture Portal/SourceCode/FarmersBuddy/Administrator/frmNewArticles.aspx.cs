using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Administrator_frmNewArticles : System.Web.UI.Page
{
    clsArticles objArticles = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetArticleInformation();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertNewArticles();
    }
    public void InsertNewArticles()
    {
        objArticles = new clsArticles();
        objArticles.Title = txtTitle.Text.Trim();
        objArticles.Content = (byte[])Session["DocFileContent"];
        objArticles.FileName = Session["DocFileName"].ToString();
        int i = objArticles.InsertNewArticle();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Article Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
    public void GetArticleInformation()
    {
        objArticles = new clsArticles();
        DataSet dsArticle = objArticles.GetArticleInformation();
        if (dsArticle.Tables[0].Rows.Count > 0)
        {
           // ViewState["ArticleContent"] = dsArticle.Tables[0].Rows[0]["ContentOfArticle"];
           // ViewState["FileName"] = dsArticle.Tables[0].Rows[0]["FileName"];
            ViewState["dsArticle"] = dsArticle;
            grvArticles.DataSource = dsArticle.Tables[0];
            grvArticles.DataBind();
        }
    }

    protected void grvArticles_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {

            DataSet ds = (DataSet)ViewState["dsArticle"];
            DataRow drow = ds.Tables[0].Select("ArticleId=" + grvArticles.Rows[e.NewEditIndex].Cells[0].Text)[0];
            
            
            byte[] fileContent = (byte[])drow[2];
            if (fileContent != null)
            {
                string FileName = (string)drow [3];
                string[] splitFileName = FileName.Split('.');
                int Len = splitFileName.Length;
                string FileExtention = "." + splitFileName[Len - 1].ToUpper();
                string FilePath = UIUtilities.GetTempFolderName() + FileName;
                if (FileExtention == ".DOC" || FileExtention == ".DOCX")
                {

                    Response.ContentType = "application/vnd.ms-word";
                    Response.AddHeader("content-disposition", "attachment;filename=" + FileName);
                }

                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.BinaryWrite(fileContent);
                Response.End();
            }
            else
            {
            }
        }
        catch (Exception ex)
        {

        }
    }
}
