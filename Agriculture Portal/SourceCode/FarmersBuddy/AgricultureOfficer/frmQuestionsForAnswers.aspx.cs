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

public partial class AgricultureOfficer_frmQuestionsForAnswers : System.Web.UI.Page
{
    clsQuestionAnswers objQuestions = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (!IsPostBack)
        {
            GetQuestions();
           
        }
    }
    public void GetQuestions()
    {
        objQuestions = new clsQuestionAnswers();
        DataSet dsQuestions = objQuestions.GetQuestions();
        if (dsQuestions.Tables[0].Rows.Count > 0)
        {
            GrvQuestions.DataSource = dsQuestions.Tables[0];
            GrvQuestions.DataBind();
        }
    }
    protected void GrvQuestions_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Field1.Visible = false;
        Field2.Visible = true;
        Session["QuestionId"]= e.CommandArgument.ToString();
        objQuestions = new clsQuestionAnswers();
        objQuestions.QuestionId = Convert.ToInt32(Session["QuestionId"]);
        DataSet ds = objQuestions.GetQuestionById();
        lblQuestion.Text = ds.Tables[0].Rows[0][0].ToString();

    }
    protected void btnAnswer_Click(object sender, EventArgs e)
     {
        if (txtAnswer.Text != "")
        {
            objQuestions = new clsQuestionAnswers();
            objQuestions.QuestionId = Convert.ToInt32(Session["QuestionId"]);
            objQuestions.Answer = txtAnswer.Text.Trim();
            objQuestions.UserId = Convert.ToInt32(Session["UserLoginId"]);
            int i = objQuestions.InsertAnswers();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("admin", "<script>alert('Answer Posted')</script>");
                txtAnswer.Text = "";
            }
            else
            {
                Page.RegisterClientScriptBlock("Admin", "<script>alert('Already One Answer Posted By you')</script>");
                txtAnswer.Text = "";
            }
            Field2.Visible = false;
            Field1.Visible = true;
        }
        else
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Type Your Answer')</script>");
        }
    }
}
