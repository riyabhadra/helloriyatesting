using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BusinessLogic.Contract;
using BusinessLogic.Repository;
using System.Data;
using BusinessLogic.DTO;
using System.Globalization;
using System.IO;
using System.Security.Cryptography;
using System.Text;
using System.Drawing;
using System.Web.Services;
using Newtonsoft.Json;
using System.Dynamic;

namespace MobyEShoppeWeb.Pages.Seller
{
    public partial class AddTV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetProductCategories()
        {
            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();

            DataSet ProductCategories = ITelevisiondetails._GetProductCategoriesDetails(Televisioninfo);

            return JsonConvert.SerializeObject(ProductCategories);
        }

        [WebMethod]
        public static string GetProductSubCategories(int CatId)
        {
            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();
            Televisioninfo.CategoryId = CatId;
            DataSet ProductSubCategories = ITelevisiondetails._GetProductSubCategoriesDetails(Televisioninfo);

            return JsonConvert.SerializeObject(ProductSubCategories);
        }

        [WebMethod]
        public static string BindBrandToDropdown()
        {
            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();

            DataSet _getTelevisionInfo = ITelevisiondetails._GetBrandDetails(Televisioninfo);

            return JsonConvert.SerializeObject(_getTelevisionInfo);
        }

        [WebMethod]
        public static string BindScreenResolutionToDropdown()
        {
            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();

            DataSet _getTelevisionInfo = ITelevisiondetails._GetScreenResolutionDetails(Televisioninfo);
            return JsonConvert.SerializeObject(_getTelevisionInfo);
        }

        [WebMethod]
        public static string GetFeatures()
        {
            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();

            DataSet _getTelevisionInfo = ITelevisiondetails._GetFeatureDetails(Televisioninfo);
            return JsonConvert.SerializeObject(_getTelevisionInfo);
        }

        [WebMethod]
        public static string SaveTelevisionDetail(int CategoryId, int SubCategoryId, string Name, string Brand, string ScreenSize, string ScreenResolution,
                                                  Int32 Price, string AddedBy, string[] fileName, string[] arrFeatures, string[] arrFeaturesId)
        {
            String @xmlImgData = "<Root>";
            if (fileName.Count() > 0)
            {
                //  @xmlImgData = " <Root>";
                for (int i = 0; i < fileName.Count(); i++)
                {
                    string GetfileName = fileName[i].ToString();
                    string GetfilePath = "/TelevisionImages/" + fileName[i].ToString();
                    @xmlImgData += string.Format(@"<Child fileName=""{0}"" filePath=""{1}""/>", GetfileName, GetfilePath);
                }
                @xmlImgData += "</Root>";
            }

            // creating the xml of AddFeature items 
            String @xmlFeatures = "<Root>";
            if (arrFeatures.Count() > 0)
            {
                //  @xmlData = " <Root>";
                for (int i = 0; i < arrFeatures.Count(); i++)
                {
                    string getarrFeatures = arrFeatures[i].ToString();
                    string getarrFeaturesId = arrFeaturesId[i].ToString();
                    @xmlFeatures += string.Format(@"<Child AddFeature=""{0}"" AddFeatureId=""{1}""/>", getarrFeatures, getarrFeaturesId);

                }
            }
            else
            {
                // binding all the elements of AddFeature with created XML
                @xmlFeatures += string.Format(@"<Child AddFeature=""{0}"" AddFeatureId=""{1}"" />", "", "");
                //  chkAddFeature = "NoRecord";
            }
            @xmlFeatures += "</Root>";

            TelevisionsDTO Televisioninfo = new TelevisionsDTO();
            ITelevisions ITelevisiondetails = new AddTelevisions();
            Televisioninfo.CategoryId = CategoryId;
            Televisioninfo.SubCategoryId = SubCategoryId;
            Televisioninfo.Name = Name;
            Televisioninfo.Brand = (Brand);
            Televisioninfo.ScreenSize = ScreenSize + " INCH";
            Televisioninfo.ScreenResolution = ScreenResolution;
            Televisioninfo.Price = Price;
            Televisioninfo.fileName = @xmlImgData;
            Televisioninfo.AddedBy = AddedBy;
            Televisioninfo.XMLFeatures = @xmlFeatures;

            DataSet _getMobileInfo = ITelevisiondetails._AddTelevisions(Televisioninfo);
            return "Success";

        }
    }
}