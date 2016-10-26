using System;
using System.Reflection;
using System.Web.UI;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);
            this.text2.Attributes["class"] = Skin.TextClass(skin);
        }
    }
}