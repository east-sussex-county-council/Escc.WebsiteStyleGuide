using System;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class Metadata : System.Web.UI.UserControl
    {

        protected void Page_PreRender(object sender, EventArgs e)
        {
            var selectedSkin = Skin.SelectedSkin();
            foreach (var css in selectedSkin.RequiresCss())
            {
                if (String.IsNullOrEmpty(css.MediaQueryAlias))
                {
                    smallCss.FileList.Add(css.CssFileAlias);
                }
                else if (css.MediaQueryAlias == "Medium")
                {
                    mediumCss.FileList.Add(css.CssFileAlias);    
                }
                else if (css.MediaQueryAlias == "Large")
                {
                    largeCss.FileList.Add(css.CssFileAlias);
                }
            }
            foreach (var jsFile in selectedSkin.RequiresJavaScript())
            {
                js.FileList.Add(jsFile.JsFileAlias);
            }
        }
    }
}