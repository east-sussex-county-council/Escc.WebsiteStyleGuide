using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class Metadata : System.Web.UI.UserControl
    {

        protected void Page_PreRender(object sender, EventArgs e)
        {
            switch (Skin.SelectedSkin())
            {
                case SkinStyle.CustomerFocus:
                    smallCss.FileList.Add("ContentSmall");
                    mediumCss.FileList.Add("ContentMedium");
                    largeCss.FileList.Add("ContentLarge");
                    break;
            }
        }
    }
}