using System;
using Escc.WebsiteStyleGuide.SkinChooser;
using Escc.WebsiteStyleGuide.Skins;

namespace Escc.WebsiteStyleGuide
{
    public partial class setup : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            this.text.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
            this.text2.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
            this.text3.Attributes["class"] = Skin.TextClass(Skin.SelectedSkin());
            this.text4.Text = Skin.TextClass(Skin.SelectedSkin());
            this.text5.Text = Skin.TextClass(Skin.SelectedSkin());
            this.text6.Text = Skin.TextClass(Skin.SelectedSkin()).Replace(" ", " .");
            this.text7.Text = Skin.TextClass(Skin.SelectedSkin()).Replace(" ", " .");

            this.columns.Visible = Skin.SelectedSkin() == SkinStyle.Default;
            this.supportingText.Visible = Skin.SelectedSkin() == SkinStyle.Default;
        }
    }
}