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

public partial class Administrator_frmZones : System.Web.UI.Page
{
    clsRegions objRegions = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtZonalName.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertRegionDeatils();
    }
    public void InsertRegionDeatils()
    {
        objRegions = new clsRegions();
        objRegions.ZoneName = txtZonalName.Text.Trim();
        objRegions.Districts = txtDistricts.Text.Trim();
        objRegions.HeadQuarters = txtHeadQuarter.Text.Trim();
        objRegions.GeoArea = txtGeoArea.Text.Trim();
        objRegions.NoOfMandals =Convert.ToInt32( txtNoOfMandals.Text.Trim());
        objRegions.NoOfRegions =Convert.ToInt32(  txtNoOfRegions.Text.Trim());
        int i=objRegions.InsertZoneDetails ();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Zone Details Inserted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
}
