using System;
using System.Web;
using Escc.Web;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class Metadata : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var policy = new ContentSecurityPolicyHeaders(HttpContext.Current.Response.Headers);
            var cspConfig = new ContentSecurityPolicyFromConfig();
            policy.AppendPolicy(cspConfig.Policies["Typekit"]);
            policy.UpdateHeaders();
        }
    }
}