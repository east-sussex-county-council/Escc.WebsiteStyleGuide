using System;
using Escc.WebsiteStyleGuide.Skins;
using Escc.EastSussexGovUK.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class text : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.unvisited.HRef = "#" + Guid.NewGuid().ToString();
            this.customerService1.Visible = Skin.SelectedSkin() is CustomerFocusSkin;
        }
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.textClass.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
        }
    }
}