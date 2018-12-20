using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Web;
using Escc.EastSussexGovUK.Mvc;
using Escc.EastSussexGovUK.Views;
using Escc.Net.Configuration;

namespace Escc.WebsiteStyleGuide
{
    /// <summary>
    /// Helper for configuring WebForms pages. Can be deleted once those pages are all migrated to MVC.
    /// </summary>
    public class RemoteMasterPageHelper
    {
        /// <summary>
        /// Gets the dependency necessary for an overridden header control in the WebForms template
        /// </summary>
        /// <returns></returns>
        public static IHtmlControlProvider LoadRemoteMasterPageHtmlProvider()
        {
            var masterPageSettings = new RemoteMasterPageSettingsFromConfig();
            var forceCacheRefresh = (HttpContext.Current.Request.QueryString["ForceCacheRefresh"] == "1"); // Provide a way to force an immediate update of the cache
            return new RemoteMasterPageHtmlProvider(masterPageSettings.MasterPageControlUrl(), new ConfigurationProxyProvider(), HttpContext.Current.Request.UserAgent, masterPageSettings.RequestTimeout(), new RemoteMasterPageMemoryCacheProvider(masterPageSettings.CacheTimeout()), forceCacheRefresh);
        }
    }
}