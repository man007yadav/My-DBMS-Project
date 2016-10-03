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

public partial class frmStudentRegistration : System.Web.UI.Page
{
    clsStudentRegistration objStudent = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtFName.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertStudentDetails();
    }
    public void InsertStudentDetails()
    {
        string Result;
        objStudent = new clsStudentRegistration();
        objStudent.FName = txtFName.Text.Trim();
        objStudent.MName = txtMName.Text.Trim();
        objStudent.LName = txtLName.Text.Trim();
        objStudent.DOB = Convert.ToDateTime(txtDOB.Text);
        objStudent.Address = txtAddress.Text;
        objStudent.EmailId = txtEmailId.Text.Trim();
        objStudent.PhoneNo = txtPhoneNo.Text.Trim();
        objStudent.UserName = txtUserName.Text.Trim();
        objStudent.Password = txtPassword.Text.Trim();
        objStudent.Photo = (byte[])Session["Photo"];
        objStudent.ImageFile=Session["FileName"].ToString ();
        int i = objStudent.InsertStudentDetails(out Result);
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('"+Result+"')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('" + Result + "')</script>");
        }
        


    }
    
}
