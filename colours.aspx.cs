using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Naming", "CA1704:IdentifiersShouldBeSpelledCorrectly", MessageId = "colours")]
    public partial class colours : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
        }
    }
}