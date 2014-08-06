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
            this.text2.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
            this.text3.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
        }
    }
}