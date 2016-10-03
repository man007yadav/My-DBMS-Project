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

public partial class Default2 : System.Web.UI.Page
{
    clsOfficerRegistration objOfficer = null;
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertOfficerDetails();
    }
    public void InsertOfficerDetails()
    {
        string Result;
        objOfficer = new clsOfficerRegistration ();
        objOfficer.FName = txtFName.Text.Trim();
        objOfficer.MName = txtMName.Text.Trim();
        objOfficer.LName = txtLName.Text.Trim();
        objOfficer.DOB = Convert.ToDateTime(txtDOB.Text);
        objOfficer.Address = txtAddress.Text;
        objOfficer.EmailId = txtEmailId.Text.Trim();
        objOfficer.PhoneNo = txtPhoneNo.Text.Trim();
        objOfficer.UserName = txtUserName.Text.Trim();
        objOfficer.Password = txtPassword.Text.Trim();
        objOfficer.Experience = txtExperience.Text.Trim();
        objOfficer.Photo = (byte[])Session["Photo"];
        objOfficer.ImageFile = Session["FileName"].ToString();
        int i = objOfficer.InsertOfficerDetails(out Result);
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('" + Result + "')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('" + Result + "')</script>");
        }



    }
}
