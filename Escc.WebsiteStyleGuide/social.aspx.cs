﻿using System;
using Escc.WebsiteStyleGuide.Skins;
using System.Web;
using Escc.EastSussexGovUK.Skins;
using Escc.Web;

namespace Escc.WebsiteStyleGuide
{
    public partial class social : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);

            this.shareCustomerFocus.Visible = (skin is CustomerFocusSkin);

            var policy = new ContentSecurityPolicyHeaders(HttpContext.Current.Response.Headers);
            var cspConfig = new ContentSecurityPolicyFromConfig();
            policy.AppendPolicy(cspConfig.Policies["Facebook"]);
            policy.AppendPolicy(cspConfig.Policies["Twitter"]);
            policy.UpdateHeaders();
        }
    }
}