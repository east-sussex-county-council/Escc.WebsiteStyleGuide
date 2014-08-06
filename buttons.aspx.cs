using System;
using Escc.WebsiteStyleGuide.SkinChooser;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class buttons : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
            this.text2.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
        }
    }
}