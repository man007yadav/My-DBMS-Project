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

public partial class frmCropProductTechniques : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnk1_Click(object sender, EventArgs e)
    {
        Field2.Visible = true;
        Field3.Visible = false;
        Field4.Visible = false;
    }
    protected void lnk2_Click(object sender, EventArgs e)
    {
        Field2.Visible = false;
        Field3.Visible = true ;
        Field4.Visible = false;
    }
    protected void lnk3_Click(object sender, EventArgs e)
    {
        Field2.Visible = false ;
        Field3.Visible = false;
        Field4.Visible = true;
    }
}
