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

public partial class Students_frmDisplayVideo : System.Web.UI.Page
{
    clsOnlineTraining objTraining = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        GetOfficerInfoForOnlineTraining();

    }
    public void GetOfficerInfoForOnlineTraining()
    {
        objTraining = new clsOnlineTraining();
        string ScheduleId = Request.QueryString["ScheduleId"].ToString();
        objTraining.ScheduleId = ScheduleId;
        DataSet dsOfficer = objTraining.GetOfficerInfoForOnlineTraining();
        if (dsOfficer.Tables[0].Rows.Count > 0)
        {
            DVAuthor.DataSource = dsOfficer.Tables[0];
            DVAuthor.DataBind();
        }
        GetVideoFile();

    }
    public void GetVideoFile()
    {
        objTraining = new clsOnlineTraining();
        string ScheduleId = Request.QueryString["ScheduleId"].ToString();
        objTraining.ScheduleId = ScheduleId;
        DataSet dsTitle = objTraining.GetVideoTitle();
        lblVideo.Text = "You Are Watching: "+ dsTitle.Tables[0].Rows[0][0].ToString()+"!! Duration: "+ dsTitle.Tables[0].Rows[0][1].ToString ();
        DataSet dsVideo = objTraining.GetVideoFile ();
        if (dsVideo.Tables[0].Rows.Count > 0)
        {
            GridView1.DataSource = dsVideo.Tables[0];
            GridView1.DataBind();
        }

    }
}
