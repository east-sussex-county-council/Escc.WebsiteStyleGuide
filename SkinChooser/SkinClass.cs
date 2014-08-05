
namespace Escc.WebsiteStyleGuide.SkinChooser
{
    /// <summary>
    /// Select classes to apply depending on the chosen skin
    /// </summary>
    public static class SkinClass
    {
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
    }
}