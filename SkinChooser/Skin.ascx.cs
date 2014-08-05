using System;
using System.Globalization;

namespace Escc.WebsiteStyleGuide.SkinChooser
{
    public partial class Skin : System.Web.UI.UserControl
    {
        protected void Page_Load()
        {
            if (!IsPostBack) UpdateSelectedSkin();
        }

        private void UpdateSelectedSkin()
        {
            var selectedSkinId = ((int)SkinStyle).ToString(CultureInfo.InvariantCulture);
            var skinItem = skin.Items.FindByValue(selectedSkinId);
            if (skinItem != null)
            {
                skin.ClearSelection();
                skinItem.Selected = true;
            }
        }

        public SkinStyle SkinStyle
        {
            get
            {
                var selected = SkinStyle.Default;
                if (Session["Skin"] != null)
                {
                    selected = (SkinStyle)Enum.Parse(typeof(SkinStyle), Session["Skin"].ToString());
                }
                return selected;
            }
        }

        protected void Update_Clicked(object server, EventArgs e)
        {
            Session["Skin"] = skin.SelectedValue;
            UpdateSelectedSkin();
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            switch (SkinStyle)
            {
                case SkinStyle.CustomerFocus:
                    smallCss.FileList.Add("Content");
                    break;
            }
        }
    }
}