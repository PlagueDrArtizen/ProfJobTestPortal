using Microsoft.AspNet.Identity.Owin;
using Portal.DataModels;
using Portal.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;

namespace Portal.Controllers
{

    [Authorize]
    public class TestsController : Controller
    {
        private const string ContextCookieKey = "TestContext";
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

        [Route("/{testId}/query/{queryNumber}")]
        public ActionResult Question(int testId, int questionNumber)
        {
            ActionResult result = null;
            TestContext context = RetriveOrCreateContext(testId);
            var test = DbContext.Tests.FirstOrDefault(x => x.Id == testId);

            if (test == null)
            {
                result = new HttpStatusCodeResult(404);
            }
            else
            {
                context.QuestionNumber = questionNumber;

                var question = test.Questions.Skip(questionNumber - 1).First();
                var questionVM = new QuestionViewModel
                {
                    QuestionId = question.Id,
                    QuestionNumber = questionNumber,
                    TestId = testId,
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

            Response.Cookies.Add(new HttpCookie(ContextCookieKey, JsonConvert.SerializeObject(context)));

            return result;
        }

        [HttpPost]
        public ActionResult Answer(int testId, QuestionViewModel model)
        {
            ActionResult result = null;

            TestContext context = RetriveContext(testId);

            if (context == null)
            {
                result = new HttpStatusCodeResult(403);
            }
            else
            {
                context.UserAnswers[model.QuestionNumber - 1] = model.UserAnswerId;

                Response.Cookies.Add(new HttpCookie(ContextCookieKey, JsonConvert.SerializeObject(context)));

                result = RedirectToAction("Question", new { testId = testId, questionNumber = model.QuestionNumber + 1 });
            }

            return result;
        }

        private TestContext RetriveContext(int testId)
        {
            TestContext result = null;

            var contextCookie = Request.Cookies.Get(ContextCookieKey);

            if (contextCookie != null)
            {
                var currentContext = JsonConvert.DeserializeObject<TestContext>(contextCookie.Value);

                if (currentContext.TestId == testId)
                {
                    result = currentContext;
                }
            }

            return result;
        }

        private TestContext RetriveOrCreateContext(int testId)
        {
            TestContext result = RetriveContext(testId);

            if (result == null)
            {
                result = new TestContext()
                {
                    TestId = testId,
                    QuestionNumber = 1
                };

                result.QueriesCount = DbContext.Questions.Count(x => x.TestId == testId);
                result.UserAnswers = new int[result.QueriesCount];
            }

            return result;
        }
    }
}