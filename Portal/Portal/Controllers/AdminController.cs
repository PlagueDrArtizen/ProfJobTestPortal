using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Portal.Controllers
{

    [Authorize(Roles = "Admin")]
    public class AdminController : Controller
    {
        public ActionResult Emploees()
        {
            return View();
        }

        public ActionResult Tests()
        {
            return View();
        }

        public ActionResult ViewTest()
        {
            return View();
        }

        public ActionResult EditTest()
        {
            return View();
        }

        public ActionResult EditQuestion()
        {
            return View();
        }

        public ActionResult EditAnswer()
        {
            return View();
        }
    }
}