using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);

            defaultSkinOnly.Visible = (skin is DefaultSkin);
            classAroundPaging.Attributes["class"] = (skin is CustomerFocusSkin) ? "text-content content" : String.Empty;
        }
    }
}