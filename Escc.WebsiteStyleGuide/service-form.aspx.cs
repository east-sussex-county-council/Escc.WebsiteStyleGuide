using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class serviceForm : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);

            defaultSkinOnly.Visible = (skin is DefaultSkin);
        }
    }
}