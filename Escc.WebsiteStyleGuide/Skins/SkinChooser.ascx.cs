using System;
using System.Globalization;
using System.Text.RegularExpressions;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class SkinChooser : System.Web.UI.UserControl
    {
        protected string SelectedSkinId { get; set; }

        protected void Page_Load()
        {
            SelectedSkinId = ((int)Skin.SelectedSkin()).ToString(CultureInfo.InvariantCulture);

            if (!String.IsNullOrEmpty(Request.Form["skin"]) && Regex.IsMatch(Request.Form["skin"], "^[0-9]$"))
            {
                SelectedSkinId = Request.Form["skin"];
                Session["Skin"] = SelectedSkinId;
            }
        }
    }
}