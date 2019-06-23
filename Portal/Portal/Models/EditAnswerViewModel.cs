using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EditAnswerViewModel
    {
        public int? AnswerId { get; set; }

        public int QuestionId { get; set; }

        [Required]
        [MinLength(1)]
        public string Text { get; set; }

        public bool Correct { get; set; }
    }
}