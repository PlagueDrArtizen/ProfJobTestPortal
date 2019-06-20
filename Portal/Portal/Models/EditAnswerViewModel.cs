using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EditAnswerViewModel
    {
        public int AnswerId { get; set; }

        public string Text { get; set; }

        public bool Correct { get; set; }
    }
}