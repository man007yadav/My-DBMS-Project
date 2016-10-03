using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using FormersBuddy.DAL;

/// <summary>
/// Summary description for clsMarketPrices
/// </summary>
public class clsMarketPrices
{
	public clsMarketPrices()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public int MarketId { get; set; }
    public string MarketName { get; set; }
    public string District { get; set; }
    public string Commodity { get; set; }
    public string Variety { get; set; }
    public string Quantity { get; set; }
    public int MinPrice { get; set; }
    public int MaxPrice { get; set; }
    public int ModelPrice { get; set; }
    public DateTime RegDate { get; set; }

    public int InsertMarketPriceList()
    {
        SqlParameter[]p=new SqlParameter[9];
        p[0] = new SqlParameter("@MarketName", MarketName);
        p[1] = new SqlParameter("@District", District);
        p[2] = new SqlParameter("@Commodity", Commodity);
        p[3] = new SqlParameter("@Variety", Variety);
        p[4] = new SqlParameter("@Quantity", Quantity);
        p[5] = new SqlParameter("@MinPrice", MinPrice);
        p[6] = new SqlParameter("@MaxPrice", MaxPrice);
        p[7] = new SqlParameter("@ModelPrice", ModelPrice);
        p[8] = new SqlParameter("@DateOfReg", RegDate);
        int i = SqlHelper.ExecuteNonQuery(clsConnection.ConnectionString, CommandType.StoredProcedure, "sp_InsertMarketPrices", p);
        return i;

    }


}
