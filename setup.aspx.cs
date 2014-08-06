using System;
using Escc.WebsiteStyleGuide.SkinChooser;

namespace Escc.WebsiteStyleGuide
{
    public partial class setup : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text2.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text3.Attributes["class"] = SkinClass.TextClass(skin.SkinStyle);
            this.text4.Text = SkinClass.TextClass(skin.SkinStyle);
            this.text5.Text = SkinClass.TextClass(skin.SkinStyle);
            this.text6.Text = SkinClass.TextClass(skin.SkinStyle).Replace(" ", " .");
            this.text7.Text = SkinClass.TextClass(skin.SkinStyle).Replace(" ", " .");

            this.columns.Visible = skin.SkinStyle == SkinStyle.Default;
            this.supportingText.Visible = skin.SkinStyle == SkinStyle.Default;
        }
    }
}