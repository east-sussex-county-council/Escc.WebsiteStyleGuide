using System;
using Escc.WebsiteStyleGuide.Skins;
using EsccWebTeam.EastSussexGovUK.MasterPages;

namespace Escc.WebsiteStyleGuide
{
    public partial class buttons : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            var skin = Skin.SelectedSkin();
            this.text.Attributes["class"] = Skin.TextClass(skin);
            this.text2.Attributes["class"] = Skin.TextClass(skin);
            this.text3.Text = Skin.TextClass(skin).Replace(" ", " .");
            this.text4.Text = Skin.TextClass(skin).Replace(" ", " .");
            this.mainAction.Text = Skin.MainButtonClass(skin);

            this.major.Visible = skin is DefaultSkin;
            this.main.Visible = skin is CustomerFocusSkin;
            this.prevNext.Visible = skin is CustomerFocusSkin;
        }
    }
}