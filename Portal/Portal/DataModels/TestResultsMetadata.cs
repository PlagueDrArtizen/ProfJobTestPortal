using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.DataModels
{
    public class TestResultsInformation
    {
        public string TestOriginalName { get; set; }

        public int Score { get; set; }

        public List<QuestionInformation> Questions { get; set; }
    }

    public class QuestionInformation
    {
        public bool IsRightAnswer { get; set; }

        public string UserAnswer { get; set; }

        public string RightAnswer { get; set; }
    }
}