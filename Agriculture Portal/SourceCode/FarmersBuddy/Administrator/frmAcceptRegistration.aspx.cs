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

public partial class Administrator_frmAcceptRegistration : System.Web.UI.Page
{
    clsAdministration objAdmin = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetNewRegistrationPersons();
        }
    }
    public void GetNewRegistrationPersons()
    {
        objAdmin = new clsAdministration();
        DataSet dsPersons = objAdmin.GetNewRegistrationPersons();
        grvNewRegister.DataSource = dsPersons.Tables[0];
        grvNewRegister.DataBind();
    }
    protected void grvNewRegister_RowEditing(object sender, GridViewEditEventArgs e)
    {
        objAdmin = new clsAdministration();
        objAdmin.Std_Agr_Id = Convert.ToInt32(grvNewRegister.Rows[e.NewEditIndex].Cells[0].Text );
        int i = objAdmin.AcceptRegistration();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('Registration Accepted')</script>");
            GetNewRegistrationPersons();
        }
        else
        {
            Page.RegisterClientScriptBlock("Student", "<script>alert('Error Occur')</script>");
            GetNewRegistrationPersons();
        }
    }
}
