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

public partial class Students_frmDisplayAnswers : System.Web.UI.Page
{
    clsQuestionAnswers objQuestions = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetQuestionsByUserId();
        }
    }
    public void GetQuestionsByUserId()
    {
        objQuestions = new clsQuestionAnswers();
        objQuestions.UserId = Convert.ToInt32(Session["UserLoginId"]);
        DataSet dsQuestions = objQuestions.GetQuestionsByUserId();
        if (dsQuestions.Tables[0].Rows.Count > 0)
        {
            GRVPostedQuestions.DataSource = dsQuestions.Tables[0];
            GRVPostedQuestions.DataBind();
        }
    }
    protected void GRVPostedQuestions_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Field2.Visible = true;
        objQuestions = new clsQuestionAnswers();
         objQuestions.QuestionId = Convert.ToInt32(e.CommandArgument.ToString());
        DataSet dsAnswers = objQuestions.GetPostedAnswersByQuestionId();
        if (dsAnswers.Tables[0].Rows.Count > 0)
        {
            GRVAnswers.DataSource = dsAnswers.Tables[0];
            GRVAnswers.DataBind();
        }
        DataSet dsQuestion = objQuestions.GetQuestionById();
        lblQuestion.Text = dsQuestion.Tables[0].Rows[0][0].ToString();
    }
    
}
