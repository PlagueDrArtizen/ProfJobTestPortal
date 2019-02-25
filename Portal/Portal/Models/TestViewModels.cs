using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class QuestionViewModel
    {
        public string TestName { get; set; }
        public int QuestionNumber { get; set; }
        public string Text { get; set; }
        public int QuestionId { get; set; }
        public IEnumerable<AnswerViewModel> Answers { get; set; }
    }

    public class AnswerViewModel
    {
        public string Text { get; set; }
        public bool IsSelected { get; set; }
        public int AnswerId { get; set; }
    }
}