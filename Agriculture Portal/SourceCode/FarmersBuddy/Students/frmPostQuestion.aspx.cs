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

public partial class Students_frmPostQuestion : System.Web.UI.Page
{
    clsQuestionAnswers objQuestion = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtQuestion.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        PostANewQuestion();
    }
    public void PostANewQuestion()
    {
        if (txtQuestion.Text != "")
        {
            objQuestion = new clsQuestionAnswers();
            objQuestion.Question = txtQuestion.Text.Trim();
            objQuestion.UserId = Convert.ToInt32(Session["UserLoginId"]);
            int i = objQuestion.PostANewQuestion();
            if (i > 0)
            {
                Page.RegisterClientScriptBlock("admin", "<script>alert('Your Question Posted, Wait for Result')</script>");
                txtQuestion.Text = "";
                txtQuestion.Focus();

            }
            else
            {
                Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
            }
        }
        else
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('Enter Question')</script>");
            txtQuestion.Focus();
        }
    }
}
