using System;
using Escc.WebsiteStyleGuide.SkinChooser;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.text1.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());

            this.defaultSkin.Visible = Skin.SelectedSkin() == SkinStyle.Default;
            this.customerFocusSkin.Visible = !this.defaultSkin.Visible;
        }
    }
}