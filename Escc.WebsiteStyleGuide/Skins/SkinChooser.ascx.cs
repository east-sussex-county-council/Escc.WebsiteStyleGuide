using System;
using System.Globalization;

namespace Escc.WebsiteStyleGuide.Skins
{
    public partial class SkinChooser : System.Web.UI.UserControl
    {
        protected void Page_Load()
        {
            if (!IsPostBack) UpdateSelectedSkin();
        }

        private void UpdateSelectedSkin()
        {
            var selectedSkinId = ((int)Skin.SelectedSkin()).ToString(CultureInfo.InvariantCulture);
            var skinItem = skin.Items.FindByValue(selectedSkinId);
            if (skinItem != null)
            {
                skin.ClearSelection();
                skinItem.Selected = true;
            }
        }

        protected void Update_Clicked(object server, EventArgs e)
        {
            Session["Skin"] = skin.SelectedValue;
            UpdateSelectedSkin();
        }
    }
}