﻿
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
        /// <param name="viewEngine">The view engine.</param>
        /// <returns></returns>
        public static IEsccWebsiteSkin SelectedSkin(ViewEngine viewEngine=ViewEngine.WebForms)
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
                return new CustomerFocusSkin(EsccWebsiteView.Desktop);
            }
            if (selected == typeof(CoronerSkin).Name)
            { 
                return new CoronerSkin(EsccWebsiteView.Desktop, context.Request.Url);
            }
            return viewEngine == ViewEngine.WebForms ? new DefaultSkin() : (IEsccWebsiteSkin)new CustomerFocusSkin(EsccWebsiteView.Desktop);
        }


        /// <summary>
        /// Gets a class for text content
        /// </summary>
        /// <param name="skin">The skin.</param>
        /// <returns></returns>
        public static string TextClass(IEsccWebsiteSkin skin)
        {
            if (skin is CustomerFocusSkin) return "content text-content";
            return "text";
        }


        /// <summary>
        /// Gets a class for the main action button
        /// </summary>
        /// <param name="skin">The skin.</param>
        /// <returns></returns>
        public static string MainButtonClass(IEsccWebsiteSkin skin)
        {
            if (skin is CustomerFocusSkin) return "main-action";
            return "major-action";
        }
    }
}