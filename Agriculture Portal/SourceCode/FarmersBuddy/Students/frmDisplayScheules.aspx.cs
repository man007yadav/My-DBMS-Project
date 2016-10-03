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

public partial class Students_frmDisplayScheules : System.Web.UI.Page
{
    clsOnlineTraining objTraining = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOnlineTrainingSchedule();
        }
    }
    public void GetOnlineTrainingSchedule()
    {
        objTraining = new clsOnlineTraining();
        DataSet dsSchedule = objTraining.GetOnlineTrainingSchedule();
        if (dsSchedule.Tables[0].Rows.Count > 0)
        {
            GRVScheduels.DataSource = dsSchedule.Tables[0];
            GRVScheduels.DataBind();
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
    }
}
