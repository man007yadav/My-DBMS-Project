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
using FormersBuddy.DAL;


public partial class UserControls_UcChangePassword : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            lblMsg.Text = "";
            string strCmdText1 = "select * from tbl_LoginMaster where Pwd='" + txtPassword.Text + "' and UserName='" + txtUsername.Text + "'";
            DataSet ds = SqlHelper.ExecuteDataset(clsConnection.ConnectionString , CommandType.Text, strCmdText1);
            if (ds.Tables[0].Rows.Count != 0)
            {
                string strComText2 = "update tbl_LoginMaster set Pwd='" + txtNewPassword.Text + "' where UserName='" + txtUsername.Text + "'";
                int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.Text, strComText2);
                if (i == 1)
                {
                    lblMsg.Text = "Your password changed successfully..";
                    ClearFields();
                }
                else
                    lblMsg.Text = "Error Try again.";
            }
            else
                lblMsg.Text = "Login Name and Password not match.. Try again..";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error: Get asp.net Teamsupport";
        }
    }

    void ClearFields()
    {
        txtUsername.Text = "";
        txtNewPassword.Text = "";
        txtPassword.Text = "";
    }
}
