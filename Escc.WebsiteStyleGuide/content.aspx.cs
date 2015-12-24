using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.text1.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());

            this.defaultSkin.Visible = Skin.SelectedSkin() is DefaultSkin;
            this.customerFocusSkin.Visible = Skin.SelectedSkin() is CustomerFocusSkin;
        }
    }
}