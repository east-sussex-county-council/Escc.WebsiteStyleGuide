﻿using System;
using Escc.EastSussexGovUK.Features;
using Escc.EastSussexGovUK.Skins;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.headerDesktop.HtmlControlProvider = RemoteMasterPageHelper.LoadRemoteMasterPageHtmlProvider();
        }
    }
}