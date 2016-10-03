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

public partial class AgricultureOfficer_frmOnlineTrainingSchedule : System.Web.UI.Page
{
    clsOnlineTraining objTraining = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertOnLineTrainingSchedule();
    }
    public void InsertOnLineTrainingSchedule()
    {
        objTraining = new clsOnlineTraining();
        objTraining.Title = txtTitle.Text.Trim();
        objTraining.ArrangeDate =Convert.ToDateTime( txtDate.Text.Trim());
        objTraining.Duration = txtDuration.Text.Trim();
        objTraining.Description = txtDescription.Text;
        objTraining.TrainingVideo = (byte[])Session["VideoFileContent"];
        objTraining.VideoFileName = Session["VideoFileName"].ToString();
        objTraining.UserId = Convert.ToInt32(Session["UserLoginId"]);
        int i = objTraining.InsertTrainingVideo();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Schedule Announced')</script>");
            
            
        }
        else
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Bad Server Request')</script>");
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        Reset();
    }
    public void Reset()
    {
        txtTitle.Text = "";
        txtDescription.Text = "";
        txtDuration.Text = "";
        txtDate.Text = "";
        txtTitle.Focus();
    }
}
