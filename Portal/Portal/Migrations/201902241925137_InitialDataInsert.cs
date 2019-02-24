namespace Portal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialDataInsert : DbMigration
    {
        public override void Up()
        {
            Sql("INSERT INTO Tests(Name) VALUES('Fake Test')", true);

            Sql("INSERT INTO Questions(Condition, TestId) VALUES('Fake question 1', 1)", true);
            Sql("INSERT INTO Questions(Condition, TestId) VALUES('Пупа или Лупа', 1)", true);

            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Fake answer 1.1', 0, 1)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Fake answer 1.2', 0, 1)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Fake answer 1.3', 1, 1)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Fake answer 1.4', 0, 1)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Fake answer 1.5', 0, 1)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('За Пупу', 0, 2)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Лупу', 0, 2)", true);
            Sql("INSERT INTO PossibleAnswers(Answer, Correct, QuestionId) VALUES ('Oh, hi Mark!', 1, 2)", true);
        }
        
        public override void Down()
        {
            Sql("DELETE FROM Tests");

            Sql("DELETE FROM Questions");

            Sql("DELETE FROM PossibleAnswers");
        }
    }
}
