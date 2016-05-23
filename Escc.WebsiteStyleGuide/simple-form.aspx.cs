using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class simpleForm : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);
            if (skin is CustomerFocusSkin)
            {
                this.classAroundForms.Attributes["class"] = Skin.TextClass(skin);
            }
        }
    }
}