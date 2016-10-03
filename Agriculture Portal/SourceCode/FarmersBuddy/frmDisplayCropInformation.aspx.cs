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

public partial class frmDisplayCropInformation : System.Web.UI.Page
{
    clsCropInformation objCrop = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Field2.Visible = false;
            GetCropTypes();
        }
    }
    public void GetCropTypes()
    {
        objCrop = new clsCropInformation();
        DataSet dsCrop = objCrop.GetCropTypes();
        if (dsCrop.Tables[0].Rows.Count > 0)
        {
            ddlCropType.DataTextField = "TypeName";
            ddlCropType.DataValueField = "CropTypeId";
            ddlCropType.DataSource = dsCrop.Tables[0];
            ddlCropType.DataBind();
            ddlCropType.Items.Insert(0, "Select Crop Type");
        }
    }
    public void GetCropName()
    {
        objCrop = new clsCropInformation();
        objCrop.CropTypeId = ddlCropType.SelectedItem.Text;
        DataSet dsCropName = objCrop.GetCropNames();
        if (dsCropName!=null&& dsCropName.Tables[0].Rows.Count > 0)
        {
            ddlCropName.DataTextField = "CropName";
            ddlCropName.DataValueField = "CropId";
            ddlCropName.DataSource = dsCropName.Tables[0];
            ddlCropName.DataBind();
            ddlCropName.Items.Insert(0, "Select Crop Name");
            Field2.Visible = true;
        }
        else
        {
            ddlCropName.Items.Clear();
            ddlCropName.Items.Insert(0, "Select Crop Name");
            Field2.Visible = false;
        }
    }
    protected void ddlCropType_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetCropName();
    }
    public void GetCropInformationByCropId()
    {
        objCrop = new clsCropInformation();
        objCrop.CropId = Convert.ToInt32 (ddlCropName.SelectedItem.Value);
        DataSet dsCrop = objCrop.GetCropInformationByCropId();
        if (dsCrop.Tables[0].Rows.Count > 0)
        {
            Field2.Visible = true;
            lblCropName.Text = dsCrop.Tables[0].Rows[0]["CropName"].ToString();
            lblClimate.Text = dsCrop.Tables[0].Rows[0]["Climate"].ToString();
            lblSoil.Text = dsCrop.Tables[0].Rows[0]["Soil"].ToString();
            lblRotation.Text = dsCrop.Tables[0].Rows[0]["Rotation"].ToString();
            lblIrrigation.Text = dsCrop.Tables[0].Rows[0]["Irrigation"].ToString();
            lblYield.Text = dsCrop.Tables[0].Rows[0]["Yield"].ToString();
            lblStorage.Text = dsCrop.Tables[0].Rows[0]["Storage"].ToString();
        }
        else
        {
            Field2.Visible = false;
        }
    }
    protected void ddlCropName_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetCropInformationByCropId();
    }
}
