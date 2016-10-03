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

public partial class Administrator_frmInsertMarketPrices : System.Web.UI.Page
{
    clsMarketPrices objPrices = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        txtMarketName.Focus();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        InsertMarketPrices();
    }
    public void InsertMarketPrices()
    {
        objPrices = new clsMarketPrices();
        objPrices.MarketName = txtMarketName.Text.Trim();
        objPrices.District = ddlDistrict.SelectedItem.Text;
        objPrices.Commodity = txtCommodity.Text.Trim();
        objPrices.Variety = txtVariety.Text.Trim();
        objPrices.Quantity = txtQuantity.Text.Trim();
        objPrices.MinPrice =Convert.ToInt32( txtMinPrice.Text.Trim());
        objPrices.MaxPrice = Convert.ToInt32(txtMaxPrice.Text.Trim());
        objPrices.ModelPrice =Convert.ToInt32 ( txtModelPrice.Text.Trim());
        objPrices.RegDate =Convert.ToDateTime( txtDate.Text.Trim());
        int i = objPrices.InsertMarketPriceList();
        if (i > 0)
        {
            Page.RegisterClientScriptBlock("admin", "<script>alert('Price List Posted')</script>");
        }
        else
        {
            Page.RegisterClientScriptBlock("Admin", "<script>alert('Bad Server Request')</script>");
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtMarketName.Text = "";
        ddlDistrict.SelectedIndex = 0;
        txtCommodity.Text = "";
        txtVariety.Text = "";
        txtQuantity.Text = "";
        txtMinPrice.Text = "";
        txtMaxPrice.Text = "";
        txtModelPrice.Text = "";
        txtDate.Text = "";
        txtMarketName.Focus();
    }
}
