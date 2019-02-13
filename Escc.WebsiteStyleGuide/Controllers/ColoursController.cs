using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using Escc.EastSussexGovUK.Mvc;

namespace Escc.WebsiteStyleGuide.Controllers
{
    public class ColoursController : Controller
    {
        // GET: Colours
        public async Task<ActionResult> Index()
        {
            var templateRequest = new EastSussexGovUKTemplateRequest(Request);
            var model = new StyleGuidePage() {
                TemplateHtml = await templateRequest.RequestTemplateHtmlAsync(),
                WebChat = await templateRequest.RequestWebChatSettingsAsync()
            };
            return View(model);
        }
    }
}