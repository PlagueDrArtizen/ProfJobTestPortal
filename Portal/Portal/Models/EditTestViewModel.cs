using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class EditTestViewModel
    {
        public EditTestViewModel()
        {
            Questions = new List<EditQuestionViewModel>();
        }

        public int? TestId { get; set; }

        [Required]
        [MinLength(5)]
        public string Name { get; set; }

        public List<EditQuestionViewModel> Questions { get; set; }
    }
}