using Microsoft.AspNet.Identity.Owin;
using Portal.Models;
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
        private ApplicationDbContext _dbContext;

        public AdminController()
        {

        }

        public AdminController(ApplicationDbContext dbContext)
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

        public ActionResult Emploees()
        {
            var model = DbContext.Employes
                .OrderBy(x => x.Name)
                .Select(x => new EmploeeViewModel
                {
                    EmploeeId = x.Id,
                    TabelNumber = x.Name,
                    PastTestCount = x.Results.Count()
                });

            return View("EmploeesView", model);
        }

        [HttpGet]
        public ActionResult Test(int? testId)
        {
            var model = new EditTestViewModel();

            if (testId.HasValue)
            {
                var test = DbContext.Tests.Where(x => x.Id == testId.Value).First();

                model.TestId = test.Id;
                model.Name = test.Name;
                model.Questions = DbContext.Questions
                    .Where(x => x.TestId == testId).ToList()
                    .Select(x => Map(x)).ToList();
            }

            return View("EditTestView", model);
        }

        [HttpPost]
        public ActionResult Test(EditTestViewModel model)
        {
            if (ModelState.IsValid)
            { 
                var test = model.TestId.HasValue
                    ? DbContext.Tests.Where(x => x.Id == model.TestId.Value).First()
                    : new Test();

                test.Name = model.Name;

                if (!model.TestId.HasValue)
                {
                    DbContext.Tests.Add(test);
                }

                DbContext.SaveChanges();

                return RedirectToAction("Index", "Tests", null);
            }

            return View("EditTestView", model);
        }

        [HttpGet]
        public ActionResult DeleteTest(int testId)
        {
            var test = DbContext.Tests.Where(x => x.Id == testId).First();

            DbContext.Tests.Remove(test);
            DbContext.SaveChanges();

            return RedirectToAction("Index", "Tests", null);
        }

        [HttpGet]
        public ActionResult Question(int testId, int? questionId)
        {
            var model = new EditQuestionViewModel
            {
                TestId = testId
            };

            if (questionId.HasValue)
            {
                var question = DbContext.Questions.Where(x => x.Id == questionId.Value).First();

                model.QuestionId = question.Id;
                model.Text = question.Condition;
                model.Answers = DbContext.PossibleAnswers
                    .Where(x => x.QuestionId == questionId).ToList()
                    .Select(x => Map(x)).ToList();
            }

            return View("EditQuestionView", model);
        }

        [HttpPost]
        public ActionResult Question(EditQuestionViewModel model)
        {
            if (ModelState.IsValid)
            {
                var question = model.QuestionId.HasValue
                    ? DbContext.Questions.Where(x => x.Id == model.QuestionId.Value).First()
                    : new Question();

                question.Condition = model.Text;

                if (!model.QuestionId.HasValue)
                {
                    question.TestId = model.TestId;

                    DbContext.Questions.Add(question);
                }

                DbContext.SaveChanges();

                return RedirectToAction("Test", "Admin", new { testId = question.TestId });
            }

            return View("EditQuestionView", model);
        }

        [HttpGet]
        public ActionResult DeleteQuestion(int questionId)
        {
            var question = DbContext.Questions.Where(x => x.Id == questionId).First();

            DbContext.Questions.Remove(question);
            DbContext.SaveChanges();

            return RedirectToAction("Test", "Admin", new { testId = question.TestId });
        }

        [HttpGet]
        public ActionResult Answer(int questionId, int? answerId)
        {
            var model = new EditAnswerViewModel
            {
                QuestionId = questionId
            };

            if (answerId.HasValue)
            {
                var answer = DbContext.PossibleAnswers.Where(x => x.Id == answerId.Value).First();

                model.AnswerId = answer.Id;
                model.Text = answer.Answer;
                model.Correct = answer.Correct;
            }

            return View("EditAnswerView", model);
        }

        [HttpPost]
        public ActionResult Answer(EditAnswerViewModel model)
        {
            if (ModelState.IsValid)
            {
                var previousCorrect = DbContext.PossibleAnswers.Where(x => x.QuestionId == model.QuestionId && x.Correct).FirstOrDefault();

                if (previousCorrect != null && (!model.AnswerId.HasValue || previousCorrect.Id != model.AnswerId.Value))
                {
                    previousCorrect.Correct = false;
                }

                var answer = model.AnswerId.HasValue
                    ? DbContext.PossibleAnswers.Where(x => x.Id == model.AnswerId.Value).First()
                    : new PossibleAnswer();

                answer.Answer = model.Text;

                if (!model.AnswerId.HasValue)
                {
                    answer.QuestionId = model.QuestionId;

                    DbContext.PossibleAnswers.Add(answer);
                }

                DbContext.SaveChanges();

                return RedirectToAction("Question", "Admin", new {testId = answer.Question.TestId, questionId = answer.QuestionId });
            }

            return View("EditAnswerView", model);
        }

        [HttpGet]
        public ActionResult DeleteAnswer(int answerId)
        {
            var answer = DbContext.PossibleAnswers.Where(x => x.Id == answerId).First();
            var question = DbContext.Questions.Where(x => x.Id == answer.QuestionId).First();
            
            if(answer.Correct && question.PossibleAnswers.Count > 1)
            {
                var newRightAnswer = DbContext.PossibleAnswers.Where(x => x.QuestionId == question.Id && !x.Correct).First();
                newRightAnswer.Correct = true;
                DbContext.PossibleAnswers.Attach(newRightAnswer);                
            }

            DbContext.PossibleAnswers.Remove(answer);
            DbContext.SaveChanges();

            return RedirectToAction("Question", "Admin", new { testId = question.TestId, questionId = answer.QuestionId });
        }

        private EditQuestionViewModel Map(Question entity)
        {
            var result = new EditQuestionViewModel
            {
                QuestionId = entity.Id,
                Text = entity.Condition,
                Answers = DbContext.PossibleAnswers
                .Where(x => x.QuestionId == entity.Id).ToList()
                .Select(x => Map(x)).ToList()
            };


            return result;
        }

        private EditAnswerViewModel Map(PossibleAnswer entity)
        {
            var result = new EditAnswerViewModel
            {
                AnswerId = entity.Id,
                Text = entity.Answer,
                Correct = entity.Correct
            };

            return result;
        }
    }
}