using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    public partial class text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.unvisited.HRef = "#" + Guid.NewGuid().ToString();
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.textClass.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
        }
    }
}