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
        public ActionResult Question(int? questionId)
        {
            return View();
        }

        [HttpPost]
        public ActionResult Question(EditQuestionViewModel model)
        {
            return View();
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