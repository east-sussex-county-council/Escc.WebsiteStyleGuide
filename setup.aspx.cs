using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    public partial class setup : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text2.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
        }
    }
}