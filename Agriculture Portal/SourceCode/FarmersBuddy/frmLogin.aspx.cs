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

public partial class frmLogin : System.Web.UI.Page
{
    clsUserLogin objLogin = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtUserName.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        VerifyUserLogin();
    }
    public void VerifyUserLogin()
    {
        objLogin = new clsUserLogin();
        objLogin.UserName = txtUserName.Text.Trim();
        objLogin.Password = txtPassword.Text.Trim();
        int flag = objLogin.CheckLogin();
        if (flag == 0)
        {
            objLogin.Std_Agr_Id = Convert.ToInt32(objLogin.Std_Agr_Id);
            Session["UID"] = objLogin.Std_Agr_Id.ToString();
            int LoginUseId = objLogin.GetUserLoginId();
            Session["UserLoginId"] = LoginUseId.ToString();
            Session["UserName"] = objLogin.UserName.ToString();
             if (objLogin.Role == "Officer")
            {
                
                Session["OfficerId"] = objLogin.Std_Agr_Id.ToString();
                Session["UserType"] = "Officer";
                clsUserLogin .ActiveFacultyOnlineStatus(Convert.ToInt32(Session["OfficerId"]));
                Response.Redirect ("~/AgricultureOfficer/frmOfficerHome.aspx");
            }
            else if(objLogin.Role =="student")
            {
                Session["StudentId"] = objLogin.Std_Agr_Id.ToString();
                Session["UserType"] = "Student";
                clsUserLogin.ActiveStudentOnlineStatus(Convert.ToInt32(Session["StudentId"]));
                Response.Redirect("~/Students/frmStudentHome.aspx");
                
            }
            else
            {
                Response.Redirect("~/Administrator/frmAdminHome.aspx");
            }
        }
        else if (flag == 1)//User Name Wrong
        {
            Page.RegisterClientScriptBlock("FarmersBuddy","<script>alert('User Name Wrong')</script>");
        }
        else//Password Wrong
        {
            Page.RegisterClientScriptBlock("FarmersBuddy", "<script>alert('Password Wrong')</script>");
        }
    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtUserName.Text = "";
        txtPassword.Text = "";
        txtUserName.Focus();
    }
}
