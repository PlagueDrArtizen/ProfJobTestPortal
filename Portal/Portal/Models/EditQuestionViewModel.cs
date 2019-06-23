using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EditQuestionViewModel
    {

        public EditQuestionViewModel()
        {
            Answers = new List<EditAnswerViewModel>();
        }

        public int? QuestionId { get; set; }

        public int TestId { get; set; }

        [Required]
        [MinLength(8)]
        public string Text { get; set; }

        public List<EditAnswerViewModel> Answers { get; set; }
    }
}