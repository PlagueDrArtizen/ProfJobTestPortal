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

        public ActionResult StartTest(int id)
        {
            ActionResult result = null;
            var test = DbContext.Tests.FirstOrDefault(x => x.Id == id);

            if (test == null)
            {
                result = new HttpStatusCodeResult(404);
            }
            else
            {
                var question = test.Questions.ToList().First();
                var questionVM = new QuestionViewModel
                {
                    QuestionId = question.Id,
                    QuestionNumber = 1,
                    Text = question.Condition,
                    TestName = test.Name,
                    Answers = question.PossibleAnswers.ToList()
                                .Select(
                                    x => new AnswerViewModel
                                    {
                                        AnswerId = x.Id,
                                        Text = x.Answer,
                                        IsSelected = false
                                    })
                };

                result = View("QuestionView", questionVM);
             }

            return result;
        }

        [HttpPost]
        public ActionResult SubmitAndNext()
        {
            return Content("");
        }
    }
}