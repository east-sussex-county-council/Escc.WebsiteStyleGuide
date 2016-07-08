using System;
using System.Text.RegularExpressions;
using Escc.Web;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class SkinChooser : System.Web.UI.UserControl
    {
        protected string SelectedSkinId { get; set; }

        protected void Page_Init()
        {
            // Apply the selected skin to the master page
            var skin = Skin.SelectedSkin();
            var master = Page.Master as BaseMasterPage;
            if (master != null)
            {
                master.Skin = skin;
            }
        }

        protected void Page_Load()
        {
            SelectedSkinId = Skin.SelectedSkin().GetType().Name;

            if (!String.IsNullOrEmpty(Request.Form["skin"]) && Regex.IsMatch(Request.Form["skin"], "^[A-Za-z]+$"))
            {
                Session["Skin"] = Request.Form["skin"];

                // Redirect, to avoid a resubmit prompt if the page is refreshed
                new HttpStatus().SeeOther(Request.Url.AbsolutePath + "?skin-updated=" + Guid.NewGuid());
            }
        }
    }
}