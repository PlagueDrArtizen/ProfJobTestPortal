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

        public ActionResult TestResult(int testResultId)
        {
            var testResult = DbContext.Results.Where(x => x.Id == testResultId).First();
            var emploee = DbContext.Employes.Where(x => x.Id == testResult.EmployeeId).First();
            var viewModel = ConstructTestResultViewModel(testResult, emploee);

            return View("TestResultView", viewModel);
        }        

        public ActionResult UserTestsHistory(string tabelNumber)
        {
            var viewModel = new List<TestResultViewModel>();
            var emploee = DbContext.Employes.Where(x => x.Name == tabelNumber).First();
            var emploeeTestsResults = DbContext.Results.Where(x => x.EmployeeId == emploee.Id).OrderByDescending(x => x.Date).ToList();
            
            foreach(var testResult in emploeeTestsResults)
            {
                var viewModelItem = ConstructTestResultViewModel(testResult, emploee);

                viewModel.Add(viewModelItem);
            }

            ViewBag.UserName = emploee.Name;

            return View("UserTestsHistoryView", viewModel);
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

                if (model.QuestionNumber < context.QuestionsCount)
                {
                    result = RedirectToAction("Question", new { testId = testId, questionNumber = model.QuestionNumber + 1 });
                }
                else
                {
                    int testResultId = CalculateAndSaveTestResults(User.Identity.Name, context);

                    result = RedirectToAction("TestResult", new { testResultId = testResultId });
                }
            }

            return result;
        }

        private int CalculateAndSaveTestResults(string emploeeNumber, TestContext context)
        {
            var test = DbContext.Tests.Where(x => x.Id == context.TestId).First();
            var emploee = DbContext.Employes.Where(x => x.Name == emploeeNumber).First();
            var testResult = new Result
            {
                EmployeeId = emploee.Id,
                Date = DateTime.Now,
                TestId = test.Id
            };

            int score = 0;
            var questionList = new List<QuestionInformation>();
            var questionData = test.Questions.ToList();

            for (int i = 0; i < questionData.Count; i++)
            {
                var questionInformation = new QuestionInformation(); 

                var rightAnswer = questionData[i].PossibleAnswers.Where(x => x.Correct).First();

                if(context.UserAnswers[i] == rightAnswer.Id)
                {
                    score++;
                    questionInformation.UserAnswer = rightAnswer.Answer;
                    questionInformation.IsRightAnswer = true;
                }
                else
                {
                    if (context.UserAnswers[i] != 0)
                    {
                        var userAnswer = questionData[i].PossibleAnswers.Where(x => x.Id == context.UserAnswers[i]).First();
                        questionInformation.UserAnswer = userAnswer.Answer;
                    }
                    else
                    {
                        questionInformation.UserAnswer = "Пользователь не ответил";
                    }

                    questionInformation.RightAnswer = rightAnswer.Answer;
                    questionInformation.IsRightAnswer = false;
                }

                questionList.Add(questionInformation);
            }

            var testResultMetadata = new TestResultsInformation
            {
                TestOriginalName = test.Name,
                Score = score,
                Questions = questionList
            };

            testResult.Metadata = JsonConvert.SerializeObject(testResultMetadata);

            DbContext.Results.Add(testResult);
            DbContext.SaveChanges();

            return testResult.Id;
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

                result.QuestionsCount = DbContext.Questions.Count(x => x.TestId == testId);
                result.UserAnswers = new int[result.QuestionsCount];
            }

            return result;
        }

        private string FormatScore(int score, int count)
        {
            return $"{score / (double)count * 100}% ({score}/{count})";
        }

        private TestResultViewModel ConstructTestResultViewModel(Result testResult, Employee emploee)
        {
            var test = DbContext.Tests.Where(x => x.Id == testResult.TestId).First();
            var testResultMetadata = JsonConvert.DeserializeObject<TestResultsInformation>(testResult.Metadata);

            var viewModel = new TestResultViewModel()
            {
                TestId = test.Id,
                UserName = emploee.Name,
                TestName = test.Name,
                OriginalTestName = testResultMetadata.TestOriginalName,
                Score = FormatScore(testResultMetadata.Score, testResultMetadata.Questions.Count),
                Date = testResult.Date,
                Question = testResultMetadata.Questions
            };

            return viewModel;
        }
    }
}