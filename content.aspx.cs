using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    public partial class content : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.text1.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text2.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text3.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
        }
    }
}