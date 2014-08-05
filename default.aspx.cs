using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
        }
    }
}