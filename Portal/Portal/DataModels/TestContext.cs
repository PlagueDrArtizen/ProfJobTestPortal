using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.DataModels
{
    public class TestContext
    {
        public int TestId { get; set; }

        public int QuestionNumber { get; set; }

        public int QuestionsCount { get; set; }

        public int[] UserAnswers { get; set; }
    }
}