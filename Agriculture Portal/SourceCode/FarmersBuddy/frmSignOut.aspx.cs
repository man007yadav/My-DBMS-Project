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

public partial class frmSignOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["UserType"].ToString() == "Student")
                clsUserLogin.InActiveStudentOnlineStatus(Convert.ToInt32(Session["StudentId"]));
            if (Session["UserType"].ToString() == "Faculty")
                clsUserLogin.InActiveFacultyOnlineStatus(Convert.ToInt32(Session["OfficerId"]));
            Session.Abandon();
            Session.Clear();
            Response.Redirect("../Default.aspx");
            //FormsAuthentication.SignOut();
        }
        catch (Exception ex)
        {
            LblError.Text = "";

        }
    }
}
