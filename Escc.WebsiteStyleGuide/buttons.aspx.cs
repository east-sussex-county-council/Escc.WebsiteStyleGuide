using System;
using Escc.EastSussexGovUK.Skins;
using Escc.WebsiteStyleGuide.Skins;

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

            var isDefaultSkin = skin is DefaultSkin;
            var isCustomerFocusSkin = skin is CustomerFocusSkin;

            this.defaultProgressBar.Visible = isDefaultSkin;
            this.defaultProgressDescription.Visible = isDefaultSkin;
            this.customerFocusProgressBar.Visible = isCustomerFocusSkin;
            this.customerFocusProgressDescription.Visible = isCustomerFocusSkin;
            this.major.Visible = isDefaultSkin;
            this.main.Visible = isCustomerFocusSkin;
            this.prevNext.Visible = isCustomerFocusSkin;
        }
    }
}