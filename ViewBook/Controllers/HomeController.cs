using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;

namespace ViewBook.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            Console.WriteLine("my name is ");
            return View();
        }
    }
}
