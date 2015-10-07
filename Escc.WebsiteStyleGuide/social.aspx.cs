using System;
using Escc.WebsiteStyleGuide.SkinChooser;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.Data.Web;
using System.Web;

namespace Escc.WebsiteStyleGuide
{
    public partial class social : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);

            this.related.Visible = (skin == SkinStyle.Default);
            this.shareDefault.Visible = (skin == SkinStyle.Default);
            this.shareCustomerFocus.Visible = (skin == SkinStyle.CustomerFocus);

            var policy = new ContentSecurityPolicy(HttpContext.Current.Request.Url);
            policy.ParsePolicy(HttpContext.Current.Response.Headers["Content-Security-Policy"], true);
            policy.AppendFromConfig("Facebook");
            policy.AppendFromConfig("Twitter");
            policy.UpdateHeader(HttpContext.Current.Response);
        }
    }
}