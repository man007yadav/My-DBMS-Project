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

public partial class Students_frmProfileManagement : System.Web.UI.Page
{
    clsStudentRegistration objStudent = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetStudentProfile();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        UpdateStudentProfile();
    }

    public void UpdateStudentProfile()
    {
        objStudent  = new clsOfficerRegistration();
        objStudent.StudentId = Convert.ToInt32(Session["StudentId"]);
        objStudent.FName = txtFirstName.Text.Trim();
        objStudent.MName = txtMiddleName.Text.Trim();
        objStudent.LName = txtLastName.Text.Trim();
        objStudent.Address = txtAddress.Text;
        objStudent.PhoneNo = txtPhone.Text.Trim();
        objStudent.EmailId = txtEmailId.Text.Trim();
        objStudent.Photo = (byte[])Session["Photo"];
        objStudent.ImageFile = Session["FileName"].ToString();
        int i = objStudent.UpdateStudentProfile();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Profile Updated')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Officer", "<script>alert('Bad Request')</script>");
        }


    }
    public void GetStudentProfile()
    {
        objStudent  = new clsStudentRegistration ();
        objStudent.StudentId = Convert.ToInt32(Session["StudentId"]);
        DataSet dsStudent = objStudent.GetStudentProfile();
        if (dsStudent.Tables[0].Rows.Count > 0)
        {
            lblstudentId.Text = dsStudent.Tables[0].Rows[0][0].ToString();
            txtFirstName.Text = dsStudent.Tables[0].Rows[0][1].ToString();
            txtMiddleName.Text = dsStudent.Tables[0].Rows[0][2].ToString();
            txtLastName.Text = dsStudent.Tables[0].Rows[0][3].ToString();
            txtAddress.Text = dsStudent.Tables[0].Rows[0][6].ToString();
            txtPhone.Text = dsStudent.Tables[0].Rows[0][8].ToString();
            txtEmailId.Text = dsStudent.Tables[0].Rows[0][7].ToString();

        }
    }
}
