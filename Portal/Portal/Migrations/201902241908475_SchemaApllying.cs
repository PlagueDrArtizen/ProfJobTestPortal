namespace Portal.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SchemaApllying : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Results",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Rating = c.Int(nullable: false),
                        EmployeeId = c.Int(nullable: false),
                        TestId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Employees", t => t.EmployeeId, cascadeDelete: true)
                .ForeignKey("dbo.Tests", t => t.TestId, cascadeDelete: true)
                .Index(t => t.EmployeeId)
                .Index(t => t.TestId);
            
            CreateTable(
                "dbo.Tests",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Questions",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Condition = c.String(),
                        TestId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Tests", t => t.TestId, cascadeDelete: true)
                .Index(t => t.TestId);
            
            CreateTable(
                "dbo.PossibleAnswers",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Answer = c.String(),
                        Correct = c.Boolean(nullable: false),
                        QuestionId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Questions", t => t.QuestionId, cascadeDelete: true)
                .Index(t => t.QuestionId);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Results", "TestId", "dbo.Tests");
            DropForeignKey("dbo.Questions", "TestId", "dbo.Tests");
            DropForeignKey("dbo.PossibleAnswers", "QuestionId", "dbo.Questions");
            DropForeignKey("dbo.Results", "EmployeeId", "dbo.Employees");
            DropIndex("dbo.PossibleAnswers", new[] { "QuestionId" });
            DropIndex("dbo.Questions", new[] { "TestId" });
            DropIndex("dbo.Results", new[] { "TestId" });
            DropIndex("dbo.Results", new[] { "EmployeeId" });
            DropTable("dbo.PossibleAnswers");
            DropTable("dbo.Questions");
            DropTable("dbo.Tests");
            DropTable("dbo.Results");
        }
    }
}
