using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.Data.Web;
using System.Web;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class social : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);

            this.related.Visible = (skin is DefaultSkin);
            this.shareDefault.Visible = (skin is DefaultSkin);
            this.shareCustomerFocus.Visible = (skin is CustomerFocusSkin);

            var policy = new ContentSecurityPolicy(HttpContext.Current.Request.Url);
            policy.ParsePolicy(HttpContext.Current.Response.Headers["Content-Security-Policy"], true);
            policy.AppendFromConfig("Facebook");
            policy.AppendFromConfig("Twitter");
            policy.UpdateHeader(HttpContext.Current.Response);
        }
    }
}