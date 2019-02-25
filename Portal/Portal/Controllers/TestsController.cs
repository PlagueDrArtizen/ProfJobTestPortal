using Microsoft.AspNet.Identity.Owin;
using Portal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Portal.Controllers
{

    [Authorize]
    public class TestsController : Controller
    {
        private ApplicationDbContext _dbContext;

        public TestsController()
        {

        }

        public TestsController(ApplicationDbContext dbContext)
        {
            DbContext = dbContext;
        }

        public ApplicationDbContext DbContext
        {
            get
            {
                return _dbContext ?? HttpContext.GetOwinContext().Get<ApplicationDbContext>();
            }
            private set
            {
                _dbContext = value;
            }
        }
        
        
        // GET: Test
        public ActionResult Index()
        {
            var tests = DbContext.Tests.ToList();

            return View("TestsListView", tests);
        }

        
    }
}