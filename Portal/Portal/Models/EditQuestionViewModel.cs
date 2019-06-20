using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EditQuestionViewModel
    {
        public int QuestionId { get; set; }

        public string Text { get; set; }

        public List<EditAnswerViewModel> Answers { get; set; }
    }
}