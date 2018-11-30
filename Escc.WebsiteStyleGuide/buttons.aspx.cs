using System;
using Escc.EastSussexGovUK.Features;

namespace Escc.WebsiteStyleGuide
{
    public partial class buttons : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.headerDesktop.HtmlControlProvider = RemoteMasterPageHelper.LoadRemoteMasterPageHtmlProvider();
        }
    }
}