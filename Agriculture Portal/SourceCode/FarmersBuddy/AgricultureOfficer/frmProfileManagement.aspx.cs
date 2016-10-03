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

public partial class AgricultureOfficer_frmProfileManagement : System.Web.UI.Page
{
    clsOfficerRegistration objOfficer = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetOfficerProfile();
        }
        

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdateOfficerProfile();
    }
    public void UpdateOfficerProfile()
    {
        objOfficer = new clsOfficerRegistration();
        objOfficer.OfficerId = Convert.ToInt32(Session["OfficerId"]);
        objOfficer.FName = txtFirstName.Text.Trim();
        objOfficer.MName = txtMiddleName.Text.Trim();
        objOfficer.LName = txtLastName.Text.Trim();
        objOfficer.Address = txtAddress.Text;
        objOfficer.PhoneNo = txtPhone.Text.Trim();
        objOfficer.EmailId = txtEmailId.Text.Trim();
        objOfficer.Photo = (byte[])Session["Photo"];
        objOfficer.ImageFile = Session["FileName"].ToString();
        int i=objOfficer.UpdateOfficerProfile();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Profile Updated')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Bad Request')</script>");
        }
        

    }
    public void GetOfficerProfile()
    {
        objOfficer = new clsOfficerRegistration();
        objOfficer.OfficerId = Convert.ToInt32(Session["OfficerId"]);
        DataSet dsOfficer = objOfficer.GetOfficerProfile();
        if (dsOfficer.Tables[0].Rows.Count > 0)
        {
            lblOfficerId.Text = dsOfficer.Tables[0].Rows[0][0].ToString();
            txtFirstName.Text = dsOfficer.Tables[0].Rows[0][1].ToString();
            txtMiddleName.Text = dsOfficer.Tables[0].Rows[0][2].ToString();
            txtLastName.Text = dsOfficer.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = dsOfficer.Tables[0].Rows[0][6].ToString();
            txtPhone.Text =dsOfficer.Tables[0].Rows[0][8].ToString ();
            txtEmailId.Text =dsOfficer.Tables[0].Rows[0][7].ToString ();

        }
    }
}
