using System;
using System.Web.Mvc;
using System.Web.Routing;
using ElegantCodeMaker.Helpers;

namespace ElegantCodeMaker.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(string code)
        {
            if (!String.IsNullOrEmpty(code))
            {   
                var routeValueDictionary = new RouteValueDictionary(
                    new
                    {
                        poorCode = code
                    });

                return RedirectToAction("ElegantCode", routeValueDictionary);
            }

            return View();
        }

        public ActionResult ElegantCode(string poorCode)
        {
            if (!String.IsNullOrEmpty(poorCode))
            {
                string elegantCode = "/* Elegant code for everyone =) */ \n\r"
                                     + HttpWebRequestHelper.GetResponseFromUrl(poorCode);
                ViewData["YourCode"] = elegantCode;
                return View();
            }

            return View("Index");
        }
    
        public ActionResult About()
        {
            return View();
        }
    }
}