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

public partial class Administrator_frmCropInformation : System.Web.UI.Page
{
    clsCropInformation objCrop = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetCropTypes();
        }

    }
    protected void btn2_Click(object sender, EventArgs e)
    {
        Field2.Visible = true;
        Field1.Visible = false;
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Field2.Visible = false;
        Field1.Visible = true;

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        objCrop = new clsCropInformation();
        objCrop.CropTypeName = txtTypeName.Text.Trim();
        objCrop.Description = txtDescription.Text;
        int i = objCrop.InsertCropTypeInfo();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Crop Type Info Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
    public void GetCropTypes()
    {
        objCrop=new clsCropInformation ();
        DataSet dsCrop=objCrop.GetCropTypes();
        if(dsCrop.Tables[0].Rows.Count >0)
        {
            ddlCropType.DataTextField = "TypeName";
            ddlCropType.DataValueField = "CropTypeId";
            ddlCropType.DataSource = dsCrop.Tables[0];
            ddlCropType.DataBind();
            ddlCropType.Items.Insert(0, "Select Crop Type");
        }
    }
    protected void btn3_Click(object sender, EventArgs e)
    {
        InsertCropDetails();
    }
    public void InsertCropDetails()
    {
        objCrop = new clsCropInformation();
        objCrop.CropName = txtCropName.Text.Trim();
        objCrop.Climate = txtClimate.Text;
        objCrop.Soil = txtSoil.Text;
        objCrop.Rotation = txtRotation.Text;
        objCrop.Irrigation = txtIrrigation.Text;
        objCrop.Yield = txtYield.Text;
        objCrop.Storage = txtStorage.Text;
        objCrop.CropTypeId = ddlCropType.SelectedItem.Text;
        int i = objCrop.InsertCropDetails();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Crop Details Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }
    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtCropName.Text = "";
        txtClimate.Text = "";
        txtSoil.Text = "";
        txtRotation.Text = "";
        txtIrrigation.Text = "";
        txtYield.Text = "";
        txtStorage.Text = "";
        ddlCropType.SelectedIndex = 0;
        txtCropName.Focus();
    }
}
