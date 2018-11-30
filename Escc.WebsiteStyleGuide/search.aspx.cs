using System;
using Escc.EastSussexGovUK.Features;
using Escc.EastSussexGovUK.Skins;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class search : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.headerDesktop.HtmlControlProvider = RemoteMasterPageHelper.LoadRemoteMasterPageHtmlProvider();
        }
    }
}