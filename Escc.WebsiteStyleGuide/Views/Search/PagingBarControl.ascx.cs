using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;
using Escc.NavigationControls.WebForms;

namespace Escc.WebsiteStyleGuide.Views.Search
{
    public partial class PagingBarControl : ViewUserControl<PagingController>
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            paging.PagingController = Model;
        }
    }
}