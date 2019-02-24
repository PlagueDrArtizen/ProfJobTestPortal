using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Portal.Models
{
    public class Employee
    {
        public int Id { get; set; }
        public string Name { get; set; }
        
        public string SystemUserId { get; set; }
        public ApplicationUser SystemUser { get; set; }

        public ICollection<Result> Results { get; set; }
    }

    public class Test
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public ICollection<Result> Results { get; set; }
        public ICollection<Question> Questions { get; set; }
    }

    public class Result
    {
        public int Id { get; set; }
        public int Rating { get; set; }

        public int EmployeeId { get; set; }
        public Employee Employee { get; set; }

        public int TestId { get; set; }
        public Test Test { get; set; }
    }

    public class Question
    {
        public int Id { get; set; }
        public string Condition { get; set; }

        public int TestId { get; set; }
        public Test Test { get; set; }

        public ICollection<PossibleAnswer> PossibleAnswers { get; set; }
    }

    public class PossibleAnswer
    {
        public int Id { get; set; }
        public string Answer { get; set; }
        public bool Correct { get; set; }

        public int QuestionId { get; set; }
        public Question Question { get; set; }
    }
}