
using System;
using System.Web;
using Escc.WebsiteStyleGuide.SkinChooser;

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
        public static SkinStyle SelectedSkin()
        {
            var context = HttpContext.Current;
            var selected = SkinStyle.Default;
            if (!String.IsNullOrEmpty(context.Request.QueryString["skin"]))
            {
                selected = (SkinStyle)Enum.Parse(typeof(SkinStyle), context.Request.QueryString["Skin"]);
            }
            else if (context.Session["Skin"] != null)
            {
                selected = (SkinStyle)Enum.Parse(typeof(SkinStyle), context.Session["Skin"].ToString());
            }
            return selected;
        }


        /// <summary>
        /// Gets a class for text content
        /// </summary>
        /// <param name="skin">The skin.</param>
        /// <returns></returns>
        public static string TextClass(SkinStyle skin)
        {
            if (skin == SkinStyle.CustomerFocus) return "content text-content";
            return "text";
        }


        /// <summary>
        /// Gets a class for the main action button
        /// </summary>
        /// <param name="skin">The skin.</param>
        /// <returns></returns>
        public static string MainButtonClass(SkinStyle skin)
        {
            if (skin == SkinStyle.CustomerFocus) return "main-action";
            return "major-action";
        }
    }
}