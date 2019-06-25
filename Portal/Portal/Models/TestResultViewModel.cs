using Portal.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class TestResultViewModel
    {
        public int TestId { get; set; }

        public int TestResultId { get; set; }

        public string UserName { get; set; }

        public string TestName { get; set; }

        public string OriginalTestName { get; set; }

        public DateTime Date { get; set; }

        public string Score { get; set; }

        public List<QuestionInformation> Question { get; set; }
    }
}