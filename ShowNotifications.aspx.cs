using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Web.Security;
using System.Security.Principal;
using BussinessLogic.Contract;
using BussinessLogic.DTO;
using BusinessLogic.Contract;
using BusinessLogic.Repository;
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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        [WebMethod]
        public static string GetAllMessages()
        {
            SellerDTO Sellerinfo = new SellerDTO();
            iSellerProduct ISellerdetails = new SellerProduct();
            var ck = HttpContext.Current.Request.Cookies["Info"].Value;
            string output = ck.Substring(ck.IndexOf('=') + 1);
            Sellerinfo.userName = output;
            DataSet _getProductInfo = ISellerdetails._GetAllMessages(Sellerinfo);
            return JsonConvert.SerializeObject(_getProductInfo);
        }
    }
}