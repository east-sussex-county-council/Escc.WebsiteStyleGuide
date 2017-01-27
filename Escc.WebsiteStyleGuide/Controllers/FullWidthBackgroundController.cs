using System.Web.Mvc;

namespace Escc.WebsiteStyleGuide.Controllers
{
    public class FullWidthBackgroundController : Controller
    {
        public ActionResult Index()
        {
            var model = new StyleGuidePage();

            return View(model);
        }
    }
}