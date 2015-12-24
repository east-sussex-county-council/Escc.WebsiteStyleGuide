using System;
using System.Globalization;
using System.Text.RegularExpressions;
using Escc.EastSussexGovUK.MasterPages;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class SkinChooser : System.Web.UI.UserControl
    {
        protected string SelectedSkinId { get; set; }

        protected void Page_Load()
        {
            SelectedSkinId = Skin.SelectedSkin().GetType().Name;

            if (!String.IsNullOrEmpty(Request.Form["skin"]) && Regex.IsMatch(Request.Form["skin"], "^[A-Za-z]+$"))
            {
                Session["Skin"] = Request.Form["skin"];
            }
        }
    }
}