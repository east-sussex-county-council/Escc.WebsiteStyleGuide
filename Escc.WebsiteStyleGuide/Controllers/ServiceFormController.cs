using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Escc.WebsiteStyleGuide.Controllers
{
    public class ServiceFormController : Controller
    {
        // GET: ServiceForm
        public ActionResult Index()
        {
            var model = new StyleGuidePage();
            return View(model);
        }
    }
}