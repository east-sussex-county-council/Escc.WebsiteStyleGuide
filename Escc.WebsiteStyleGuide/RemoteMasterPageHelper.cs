using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Configuration;
using System.Linq;
using System.Web;
using Escc.EastSussexGovUK.Features;
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
            var config = ConfigurationManager.GetSection("Escc.EastSussexGovUK/RemoteMasterPage") as NameValueCollection;
            if (config == null) config = ConfigurationManager.GetSection("EsccWebTeam.EastSussexGovUK/RemoteMasterPage") as NameValueCollection;
            var remoteMasterPageRequestTimeout = 4000;
            if (!String.IsNullOrEmpty(config["Timeout"]))
            {
                Int32.TryParse(config["Timeout"], out remoteMasterPageRequestTimeout);
            }
            var forceCacheRefresh = (HttpContext.Current.Request.QueryString["ForceCacheRefresh"] == "1"); // Provide a way to force an immediate update of the cache
            return new RemoteMasterPageHtmlProvider(new Uri(config["MasterPageControlUrl"], UriKind.RelativeOrAbsolute), new ConfigurationProxyProvider(), HttpContext.Current.Request.UserAgent, remoteMasterPageRequestTimeout, new RemoteMasterPageMemoryCacheProvider(HttpContext.Current.Cache), forceCacheRefresh);
        }
    }
}