
using System;
using System.Text.RegularExpressions;
using System.Web;
using Escc.EastSussexGovUK.Skins;
using Escc.EastSussexGovUK.Views;

namespace Escc.WebsiteStyleGuide.Skins
{
    /// <summary>
    /// Contextual information on the chosen skin
    /// </summary>
    public static class Skin
    {
        /// <summary>
        /// Gets the selected skin for the current request or session
        /// </summary>
        /// <returns></returns>
        public static IEsccWebsiteSkin SelectedSkin()
        {
            var context = HttpContext.Current;

            var selected = context.Request.QueryString["skin"];
            if (!String.IsNullOrEmpty(context.Request.Form["skin"]) && Regex.IsMatch(context.Request.Form["skin"], "^[A-Za-z]+$"))
            {
                selected = context.Request.Form["skin"];
            }
            if (String.IsNullOrEmpty(selected) && context.Session["Skin"] != null)
            {
                selected = context.Session["Skin"].ToString();
            }

            if (selected == typeof (CustomerFocusSkin).Name)
            {
                return new CustomerFocusSkin();
            }
            if (selected == typeof(CoronerSkin).Name)
            { 
                return new CoronerSkin(context.Request.Url);
            }
            return new CustomerFocusSkin();
        }
    }
}