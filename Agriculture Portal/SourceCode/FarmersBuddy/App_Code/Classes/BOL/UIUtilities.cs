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
using System.IO;
using System.Data.Common;

/// <summary>
/// Summary description for UIUtilities
/// </summary>
public class UIUtilities
{
	public UIUtilities()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    static DbProviderFactory ProviderFactory = DbProviderFactories.GetFactory("System.Data.SqlClient");
    static DbConnection con = null;

    #region ReadImageFile to Convert Binary
    /// <summary>
    /// Get the Uploaded file and convert to binary for storing in Db
    /// </summary>
    /// <param name="PostedFileName">Uploaded file</param>
    /// <returns>Byte[] object</returns>
    public static byte[] ReadImageFile(string PostedFileName, string[] filetype)
    {
        bool isAllowedFileType = false;
        try
        {
            FileInfo file = new FileInfo(PostedFileName);

            foreach (string strExtensionType in filetype)
            {
                if (strExtensionType == file.Extension.ToLower())
                {
                    isAllowedFileType = true;
                    break;
                }
            }
            if (isAllowedFileType)
            {
                //Create a new filestream object based on the file chosen in the FileUpload control

                FileStream fs = new FileStream(PostedFileName, FileMode.Open, FileAccess.Read);

                //Create a binary reader object to read the binary contents of the file to upload

                BinaryReader br = new BinaryReader(fs);

                //dump the bytes read into a new byte variable named image

                byte[] image = br.ReadBytes((int)fs.Length);

                //close the binary reader

                br.Close();

                //close the filestream

                fs.Close();

                return image;
            }
            return null;
        }
        catch (Exception ex)
        {
            throw ex;
        }

    }
    #endregion

    #region GetTempFolderName
    /// <summary>
    /// returns the Temp Folder Name to store Images & resumes
    /// </summary>
    /// <returns>string Folder Name</returns>
    public static string GetTempFolderName()
    {
        string strTempFolderName = Environment.GetFolderPath(Environment.SpecialFolder.InternetCache) + @"\";

        if (Directory.Exists(strTempFolderName))
        {
            return strTempFolderName;
        }
        else
        {
            Directory.CreateDirectory(strTempFolderName);
            return strTempFolderName;
        }
    }
    #endregion


}
