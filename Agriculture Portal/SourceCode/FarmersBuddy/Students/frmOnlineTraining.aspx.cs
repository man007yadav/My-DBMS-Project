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

public partial class Students_frmOnlineTraining : System.Web.UI.Page
{
    clsOnlineTraining objTraining = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOnlineTraining();
        }
    }
    public void GetOnlineTraining()
    {
        objTraining = new clsOnlineTraining();
        DataSet dsTraining = objTraining.GetTrainingVideos();
        if (dsTraining.Tables[0].Rows.Count > 0)
        {
            GRVTraining.DataSource = dsTraining.Tables[0];
            GRVTraining.DataBind();
        }
        else
        {
            GRVTraining.EmptyDataText = "No Training Schedue Arranged for Today.";
            GRVTraining.DataBind();
        }
    }
    protected void GRVTraining_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string ScheduleId = GRVTraining.Rows[e.NewEditIndex].Cells[0].Text;
        Response.Redirect("~/Students/frmDisplayVideo.aspx?ScheduleId="+ScheduleId );
    }
}
