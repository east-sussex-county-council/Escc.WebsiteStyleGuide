using System;
using System.Web;
using System.Web.Mvc;
using Escc.Web;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class Metadata : ViewUserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var policy = new ContentSecurityPolicyHeaders(HttpContext.Current.Response.Headers);
            var cspConfig = new ContentSecurityPolicyFromConfig();
            policy.AppendPolicy(cspConfig.Policies["Typekit"]);
            policy.UpdateHeaders();

            css.Attributes["href"] = ResolveUrl(css.Attributes["href"]);
        }
    }
}