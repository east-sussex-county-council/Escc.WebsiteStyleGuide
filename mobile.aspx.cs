using System;
using Escc.WebsiteStyleGuide.SkinChooser;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class mobile : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
        }
    }
}