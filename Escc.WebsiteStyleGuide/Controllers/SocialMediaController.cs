using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Escc.WebsiteStyleGuide.Controllers
{
    public class SocialMediaController : Controller
    {
        // GET: SocialMedia
        public ActionResult Index()
        {
            var model = new StyleGuidePage() { ShowEastSussex1SpaceWidget = true };
            return View(model);
        }
    }
}